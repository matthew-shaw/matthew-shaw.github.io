---
draft: true
date:
  created: 2024-11-08
authors:
  - mash
categories:
  - Software Development
description: Developing GOV.UK services with Python
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

<!-- more -->

## A brief history

In 2016 I was working on the beta version of a new GOV.UK service at [HM Land Registry](https://www.gov.uk/land-registry) that would go on to become ["Search for Land and Property Information"](https://search-property-information.service.gov.uk/).

## Templates

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