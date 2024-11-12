---
draft: true
date:
  created: 2024-11-08
authors:
  - mash
categories:
  - Software Development
description: Developing GOV.UK services with Python.
tags:
  - Docker
  - Flask
  - GOV.UK
  - Jinja
  - NGINX
  - Python
  - Redis
  - WTForms
---

# Developing GOV.UK services with Python

For those of us building digital services for GOV.UK, you'll find that most of the available resources, from frontend frameworks, to templating and prototyping kits, are based around a JavaScript centric stack. But if you want to build web apps using Python for GOV.UK your options are more limited.

<!-- more -->

If you're a Python developer, there's a good chance you've heard of Flask. Flask is an excellent microframework suitable for building UIs and APIs that are lightweight, unopinionated and extensible. With Python being the third most popular language in the [2024 Stack Overflow Developer Survey](https://survey.stackoverflow.co/2024/technology/#most-popular-technologies), it's easy to see why developers chose Flask as the framework for their projects.

## A brief history

When working at [HM Land Registry](https://www.gov.uk/government/organisations/land-registry) in 2017, my colleague [Andy Mantell](https://github.com/andymantell) and I were developing a GOV.UK service in a Python and Flask stack. Andy undertook the original development work on a direct port of the [GOV.UK Frontend](https://frontend.design-system.service.gov.uk/) macros, transforming them from their Nunjucks originals, into [Jinja](https://jinja.palletsprojects.com). Alongside this, a number of [WTForms](https://wtforms.readthedocs.io) widgets were created which use these Jinja macros to render and validate GOV.UK styled forms.

This code was used internally throughout the organisation for several years, underpinning several citizen facing services on GOV.UK, as well as other professional and internal services with great success. I was fortunate enough to take over the ownership and maintenance of that codebase following Andy's departure and have spent the last few years maintaining and enhancing it. One of the first things I did was to take the closed source code, turn it into installable Python packages and make the code open source for anyone across government to use.

In this blog I'd like to explore what those packages are, how they combine to help you build GOV.UK services quicker and easier, and share some best practices that I've learned along the way.

## Templates

The [GOV.UK Frontend Jinja](https://github.com/LandRegistry/govuk-frontend-jinja) package provides a like-for-like port of the original Nunjucks macros from [GOV.UK Frontend](https://frontend.design-system.service.gov.uk/). Since Nunjucks is heavily inspired by Jinja, most of the syntax is the same, which enables a key design choice to aim for 100% equivalency. As as result, you can take any of the [GOV.UK Design System component](https://design-system.service.gov.uk/components/) macros and use them exactly as-is in a Flask project.

Integrating these into a Flask application is simple. First add `govuk-frontend-jinja` to your project dependencies; I prefer to use the requirements file format for this:

```title="requirements.in" linenums="1"
flask==3.0.3
govuk-frontend-jinja==3.4.0
```

Then compile the top-level dependencies into the familiar `requirements.txt` file using [pip-tools](https://pip-tools.readthedocs.io/en/latest/):

```shell
pip-compile requirements.in --upgrade
```

And install them:

```shell
pip install -r requirements.txt
```

I'm not using a `venv` here, because I'm going to use Docker to isolate runtime dependencies. Then in the application initialisation (typically a `create_app()` method in `__init__.py` if using the [application factory pattern](https://flask.palletsprojects.com/en/stable/patterns/appfactories/))

```python title="app/__init__.py" linenums="1"
from flask import Flask
from jinja2 import ChoiceLoader, PackageLoader, PrefixLoader

def create_app():
    app = Flask(__name__)
    app.jinja_loader = ChoiceLoader(
        [
            PackageLoader("app"),
            PrefixLoader(
                {
                    "govuk_frontend_jinja": PackageLoader("govuk_frontend_jinja")
                }
            ),
        ]
    )

    return app
```

## Forms

## Applications

## Security

## Performance

## Architecture

```mermaid
flowchart TB
    cache1(Redis)
    Client
    prox1(NGINX)
    web1(Gunicorn/Flask)
    web2[/Static files/]

    Client -- https:443 --> prox1 -- http:5000 --> web1
    prox1 -- Read only --> web2
    web1 -- Write --> web2
    web1 -- redis:6379 --> cache1

    subgraph Proxy container
        prox1
    end

    subgraph Web container
        web1
        web2
    end

    subgraph Cache container
        cache1
    end
```
