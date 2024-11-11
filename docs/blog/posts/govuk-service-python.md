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

But if you work in central government, building digital services for GOV.UK, you'll find that most of the available resources, from frontend frameworks, to templating and prototyping kits, are centred around the JavaScript stack. Technologies like Node.js, Express, Nunjucks and React are synonymous with today's web development world. These things are great, and popular for good reasons, but if you want to build web apps using Python and [Flask](https://flask.palletsprojects.com) for GOV.UK your options are more limited.

<!-- more -->

If you're a web developer using Python, there's a good chance you've heard of Flask. Flask is an excellent microframework suitable for building UIs and APIs that are lightweight, unopinionated and extensible. With Python being the third most popular and the most wanted language in the 2021 StackOverflow survey, it's easy to see why developers are chosing Flask as the framework for their projects.

## A brief history

When working at HM Land Registry in 2017, my colleague [Andy Mantell](https://github.com/andymantell) and I were developing a GOV.UK service in a Python and Flask stack. Andy undertook the original development work on a Python port of the GOV.UK Frontend macros, transforming them from their Nunjucks originals, into [Jinja](https://jinja.palletsprojects.com). Alongside this, a number of [WTForms](https://wtforms.readthedocs.io) widgets were created which use the Jinja macros to render and validate GOV.UK styled forms.
This code was used internally throughout the organisation for several years, underpinning citizen facing services on GOV.UK, as well as other professional and internal services with great success. I was fortunate enough to take over ownership and maintenance of that codebase following Andy's departure and have spent the last couple of years maintaining and enhancing it. One of the first things I did was to take the closed source code, turn it into installable Python distribution packages and open source the code for anyone across government to use.

In this blog I'd like to explore what those packages are, how they can help you build GOV.UK services better, quicker and easier, and share some best practices that I've learned along the way.

## Templates

The GOV.UK Frontend Jinja package provides a like-for-like port of the original Nunjucks macros in GOV.UK Frontend. Since Nunjucks is heavily inspired by Jinja, most of the syntax is the same, which enables a key design choice to go for 100% equivalency. As as result, you can take any of the GOV.UK Design System components example macros and use it exactly as-is in a Flask project.

## Forms

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
