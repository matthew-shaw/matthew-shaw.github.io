---
date:
  created: 2024-11-04
authors:
  - mash
categories:
  - Software Development
description: My guide to building a highly customisable, lightweight, secure, and performant static site using MkDocs, NGINX and Docker.
tags:
  - Docker
  - MkDocs
  - NGINX
  - Performance
  - Python
  - Security
---

# Building a static site with MkDocs, NGINX and Docker

My guide to building a highly customisable, lightweight, secure, and performant static site using MkDocs, NGINX and Docker.

<!-- more -->

## Prerequisites

You will need Python and Docker installed on your system before starting. I recommend using a version manager such as [pyenv](https://github.com/pyenv/pyenv) to install Python.

!!! tip
    If you run `pyenv local 3.13` it will create a `.python-version` file which pyenv reads to determine which Python version to use.

## Setup

First, lets install [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/), the popular and widely used MkDocs theme that adds a lot of features and extensions on top of MkDocs itself:

```shell
pip install mkdocs-material
```

I can now create the new site using:

```shell
mkdocs new mysite
cd mysite
```

I prefer to manage my Python dependencies using a `requirements.in` file which defines the top-level dependencies that my project directly relies upon. I'm going to create a very basic site for this example, but you can build and expand on it from there.

```title="requirements.in" linenums="1"
mkdocs-material==9.5.43
mkdocs-minify-plugin==0.8.0
```

From there I use [pip-tools](https://pip-tools.readthedocs.io/en/latest/) to compile the `.in` file and generate the familiar `requirements.txt` file, using this command:

```shell
pip-compile requirements.in --upgrade
```

Now I'm ready to install the requirements:

```shell
pip install -r requirements.txt
```

## Configuring MkDocs

Material for MkDocs is highly customisable, with a lot of extensions and plugins available. I recommend starting with a configuration such as this and working from there:

```yaml title="mkdocs.yml" linenums="1"
site_name: My site
site_url: https://mydomain.org/mysite

validation:
  absolute_links: warn
  anchors: warn
  omitted_files: warn
  unrecognized_links: warn

theme:
  name: material
  features:
    - navigation.footer
    - navigation.indexes
    - navigation.sections
    - navigation.top
    - search.highlight
    - search.share
    - search.suggest
  palette:
    # Palette toggle for automatic mode
    - media: "(prefers-color-scheme)"
      toggle:
        icon: material/brightness-auto
        name: Switch to light mode

    # Palette toggle for light mode
    - media: "(prefers-color-scheme: light)"
      scheme: default
      toggle:
        icon: material/brightness-7
        name: Switch to dark mode

    # Palette toggle for dark mode
    - media: "(prefers-color-scheme: dark)"
      scheme: slate
      toggle:
        icon: material/brightness-4
        name: Switch to system preference

plugins:
  - minify:
      minify_html: true
      htmlmin_opts:
        remove_comments: true
  - privacy
  - search
```

This config sets up a site with automatic dark and light mode support, search suggestions, some basic navigation and minification support.

You can test the setup so far is working by serving the site locally using:

```shell
mkdocs serve
```

Then in your browser, open <http://localhost:8000/mysite/> :tada:

## Docker setup

Now I have a basic site created and working locally, let's get it working inside a Docker container. I'll start by creating a new `Dockerfile` with a simple example:

```dockerfile title="Dockerfile" linenums="1"
FROM python:3.13-alpine

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY mkdocs.yml ./
COPY docs docs

CMD [ "mkdocs", "serve", "--dev-addr=0.0.0.0:8000" ]
```

I'm using the `3.13-alpine` tag of the [official Python image](https://hub.docker.com/_/python). Using the alpine image variant keeps the image size down to a minimum, and reduces the number of potential security vulnerabilities in packages that I may not actually need. For comparison:

| Tag         | Size   | Packages | Vulnerabilities |
| ----------- | ------ | -------- | --------------- |
| 3.13        | 1.02GB | 575      | 124             |
| 3.13-slim   | 121MB  | 144      | 25              |
| 3.13-alpine | 44.6MB | 41       | 1               |

Then I copy the `requirements.txt` file into the root of the image filesystem and run `pip` to install them. Next, the `mkdocs.yml` file and the `/docs` directory are also copied. The ordering of these commands is important, to take advantage of layer caching and keep build times as fast as possible. The requirements and config are going to change less frequently than the site content. Files that change more often are further down in the file (and therefore layers), such that they invalidate the cache of fewer layers below them.

Finally, the `mkdocs serve` command is executed in the container, to serve the site on the nonroutable `0.0.0.0` address (_"This host on this network"_, inside the container) and port 8000. To build the new image, run:

```shell
docker build . -t mysite
```

And to run it, mapping port 8000 in the container, to port 8000 on the host:

```shell
docker run -p 8000:8000 mysite
```

Going back to <http://localhost:8000/mysite/> in your browser still works exactly the same as before, but now it's hitting the running Docker container instead. This also means that you (or anyone else) only need Docker installed on the host system, not Python, or the specific set of package requirements, making it more portable and isolated.

## Multi-stage builds

I want to use NGINX to serve the static site content, but it's currently being served by MkDocs inside a Python image based container. All I really need is the generated content from the `/site` directory, as the Python runtime is only needed to build the content. To achieve that I'm going to use a [multi-stage build](https://docs.docker.com/build/building/multi-stage/) to copy the `/site` directory into a NGINX container, leaving everything else behind. This also has the benefit of keeping the final image as small as possible.

```dockerfile title="Dockerfile" linenums="1" hl_lines="1-2 10-15"
# Build stage
FROM python:3.13-alpine AS builder

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY mkdocs.yml ./
COPY docs docs

RUN mkdocs build --strict

# Final stage
FROM nginx:stable-alpine

COPY --from=builder /site /site
```

I've named the first stage `builder`, which is the name used to copy files from further down. The `#!docker CMD` has been replaced with `#!docker RUN mkdocs build --strict` to build the site content and abort on any warnings. The second `#!docker FROM` instruction brings in our final [NGINX image](https://hub.docker.com/_/nginx), using the `stable-alpine` tag (keeping things lean again). The final `#!docker COPY` instruction copies the `/site` directory from the `builder` stage into the `/site` directory of the current stage, leaving everything else from the build stage behind. The result of this multi-stage build approach is a large size reduction:

| Build        | Size   |
| ------------ | ------ |
| Single-stage | 160MB  |
| Multi-stage  | 45.7MB |

## Configuring NGINX

Did you know that [security misconfiguration](https://owasp.org/Top10/A05_2021-Security_Misconfiguration/) is number 5 in the [OWASP Top 10](https://owasp.org/Top10/) security vulnerabilities? Luckily for us, Mozilla has a fantastic [configuration generator](https://ssl-config.mozilla.org/) for most popular web servers, application servers and even databases. I've used this to generate a [modern and secure](https://wiki.mozilla.org/Security/Server_Side_TLS) configuration that uses HTTPS and TLS 1.3 cipher suites.

```nginx title="nginx.conf" linenums="1" hl_lines="17-18 29-30"
# generated 2024-11-01, Mozilla Guideline v5.7, nginx 1.26.2, OpenSSL 3.3.2, modern configuration, no OCSP
# https://ssl-config.mozilla.org/#server=nginx&version=1.26.2&config=modern&openssl=3.3.2&ocsp=false&guideline=5.7
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    location / {
        return 301 https://$host$request_uri;
    }
}

server {
    listen 443 ssl;
    listen [::]:443 ssl;
    http2 on;

    ssl_certificate /etc/nginx/ssl/req.pem;
    ssl_certificate_key /etc/nginx/ssl/key.pem;
    ssl_session_timeout 1d;
    ssl_session_cache shared:MozSSL:10m;  # about 40000 sessions

    # modern configuration
    ssl_protocols TLSv1.3;
    ssl_prefer_server_ciphers off;

    # HSTS (ngx_http_headers_module is required) (63072000 seconds)
    add_header Strict-Transport-Security "max-age=63072000" always;

    # static file location
    root /site;
}
```

This configuration redirects all HTTP traffic on port 80 to HTTPS on port 443. I've changed the location of the SSL certificate and key on lines 17 and 18 to the directory I'm going to put them in. I've also set the `#!nginx root` directive to tell NGINX where the static content is (and where to look for an `index.html` file). I just need to generate an SSL certificate before I can start to use this configuration:

```dockerfile title="Dockerfile" linenums="12" hl_lines="4-6 8"
# Final stage
FROM nginx:stable-alpine

RUN apk update && apk add --no-cache openssl && \
    mkdir /etc/nginx/ssl && \
    openssl req -x509 -noenc -newkey rsa:2048 -keyout /etc/nginx/ssl/key.pem -out /etc/nginx/ssl/req.pem -days 90 -subj "/C=GB/ST=Devon/L=Plymouth/O=Mash Software/CN=localhost"

COPY nginx.conf /etc/nginx/conf.d
COPY --from=builder /site /site
```

Because I'm using the alpine image variant, the `openssl` package is not installed by default, so I've installed it, created the directory for the output, and used OpenSSL to create a new self-signed X.509 certificate. Finally, I've copied the `nginx.conf` file into the default directory NGINX looks for configuration files. Now I can rebuild the image:

```shell
docker build . -t mysite
```

And run it again, but now mapping port 443 (HTTPS) in the container, to port 443 on the host:

```shell
docker run -p 443:443 mysite
```

Now when I open <https://localhost> in my browser (and accept the self-signed certificate warning) I'm getting the static content served securely by NGINX. :tada:

## Security

There are a multitude of HTTP security response headers that can be set server-side to mitigate against many common attacks and security vulnerabilities. OWASP have compiled an excellent [cheat sheet](https://cheatsheetseries.owasp.org/cheatsheets/HTTP_Headers_Cheat_Sheet) to help understand what each of these do and the protection they afford. I've added what I consider to be the most appropriate ones to the `nginx.conf` file:

```nginx title="nginx.conf" linenums="22" hl_lines="5-13"
    # modern configuration
    ssl_protocols TLSv1.3;
    ssl_prefer_server_ciphers off;

    # security headers
    add_header Content-Security-Policy "script-src 'self' 'unsafe-inline'; object-src 'none'; base-uri 'none'; frame-ancestors 'none';" always;
    add_header Cross-Origin-Embedder-Policy "require-corp" always;
    add_header Cross-Origin-Opener-Policy "same-origin" always;
    add_header Cross-Origin-Resource-Policy "same-origin" always;
    add_header Permissions-Policy "accelerometer=(), ambient-light-sensor=(), autoplay=(), battery=(), camera=(), cross-origin-isolated=(), display-capture=(), document-domain=(), encrypted-media=(), execution-while-not-rendered=(), execution-while-out-of-viewport=(), fullscreen=(), geolocation=(), gyroscope=(), keyboard-map=(), magnetometer=(), microphone=(), midi=(), navigation-override=(), payment=(), picture-in-picture=(), publickey-credentials-get=(), screen-wake-lock=(), sync-xhr=(), usb=(), web-share=(), xr-spatial-tracking=()" always;
    add_header Referrer-Policy "strict-origin-when-cross-origin" always;
    add_header Strict-Transport-Security "max-age=63072000; includeSubDomains; preload" always;
    add_header X-Content-Type-Options "nosniff" always;

    # static file location
    root /site;
}
```

To call out just a few:

### Content Security Policy

!!! quote "Mozilla Developer Network"
    CSP is a feature that helps to prevent or minimize the risk of certain types of security threats. It consists of a series of instructions from a website to a browser, which instruct the browser to place restrictions on the things that the code comprising the site is allowed to do.

Ideally, a strict CSP would include the hashes of any inline scripts. However, MkDocs Material uses many inline scripts which makes this approach impractical, so for the purposes of a static content site, allowing `unsafe-inline` is a pragmatic compromise.

### Permissions Policy

!!! quote "Mozilla Developer Network"
    The HTTP Permissions-Policy header provides a mechanism to allow and deny the use of browser features.

I've used the policy generator at <https://www.permissionspolicy.com/> to disable all of the standardised features.

### Strict-Transport-Security

!!! quote "Mozilla Developer Network"
    HSTS informs browsers that the site should only be accessed using HTTPS, and that any future attempts to access it using HTTP should automatically be converted to HTTPS.

This header is a default part of Mozilla's modern configuration but is important to note because just redirecting HTTP to HTTPS alone is still vulnerable to a man-in-the-middle attack. The `max-age` is set to 2 years in seconds.

## Optimisation

There are some key enhancements to optimise the performance of NGINX, particularly when being used to serve static files such as this:

```nginx title="nginx.conf" linenums="36" hl_lines="4-17"
    # static file location
    root /site;

    # optimise performance
    sendfile on;
    tcp_nopush on;

    # gzip compression
    gzip on;
    gzip_comp_level 6;
    gzip_types application/javascript application/json application/xml font/otf font/ttf font/woff font/woff2 image/gif image/jpeg image/png image/svg+xml image/webp text/css text/csv text/javascript text/xml;

    # caching
    location /assets {
        # set long lived cache
        add_header Cache-Control "max-age=31536000, immutable" always;
    }
}
```

Enabling `sendfile` and `tcp_nopush` are relatively [minor configuration changes](https://docs.nginx.com/nginx/admin-guide/web-server/serving-static-content/#optimizing-performance-for-serving-content), but bigger gains come from compression and caching:

### Compression

Compressing responses using `gzip` can considerably reduce the size of data transmitted but comes at the cost of increased processing overhead. In the configuration above I've told NGINX to compress all the common content types you'll find in most web applications. Adjusting the compression level and observing the results can help to find the optimal setting:

| Level   | HTML (kB) | CSS (kB) | JS (kB)  | Total (kB) | Compression |
| ------- | --------- | -------- | -------- | ---------- | ----------- |
| 0 (Off) | 13.2      | 171      | 109      | 380        | 0%          |
| 1       | 4.8       | 35.2     | 39.9     | 166        | 43.7%       |
| 2       | 4.7       | 33.4     | 38.5     | 163        | 42.9%       |
| 3       | 4.7       | 32.3     | 37.8     | 161        | 42.4%       |
| 4       | 4.4       | 29.8     | 35.3     | 156        | 41.0%       |
| 5       | 4.4       | 28.4     | 34.2     | 153        | 40.3%       |
| **6**   | **4.4**   | **27.8** | **33.9** | **152**    | **40.0%**   |
| 7       | 4.4       | 27.7     | 33.8     | 152        | 40.0%       |
| 8       | 4.4       | 27.6     | 33.8     | 152        | 40.0%       |
| 9       | 4.4       | 27.6     | 33.8     | 152        | 40.0%       |

You can see that after compression level 6 there is no appreciable reduction in file sizes, so I'm going with that.

### Caching

What's better than transferring an optimised, minified, and compressed file to the client? Not transferring one at all!

The generated output `/site/assets` directory contains all the bundled JavaScript and CSS with cache-busting hashes appended to their file names. This means that when the content of the file changes, so does the hash of the file, therefore so does its path. Since a different file would be requested when it changes, I can instruct browsers to cache these files for a long time.

In the NGINX config above I've added a location directive to add the [Cache-Control](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control) header to any file requested from `/assets`. Browsers will keep these files in their cache for up to one year before requesting it again. For the example site, this equates to only 7.6 kB of 152 kB to be transferred for each page requested after the initial request, with everything else cached.

## Conclusion

Material for MkDocs is a great choice for creating static sites, blogs, and project documentation. It's simple to set up and configure, highly customisable and extensible, plus authoring the content in markdown is easy and familiar to most developers. By using NGINX you can serve the MkDocs generated static site in a secure and highly performant way. Using Docker to build portable, isolated, and small containers makes development and deployment much easier as well.

If you want to build your own site in this way, I have created a [template repository on GitHub](https://github.com/matthew-shaw/mkdocs) which includes everything discussed above so you can get started quicker.
