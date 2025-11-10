---
draft: true
date:
  created: 2024-11-22
authors:
  - mash
categories:
  - Software Development
description: DRAFT
tags:
  - Microservices
  - REST
---

# Resource-oriented software architecture patterns

How to design APIs and UIs to effectively maintain data.

<!-- more -->

## Introduction

### Domain Driven Design

### Microservices Architecture

## API

### Data Ownership

An API should be the sole interface to a dataset; nothing else should connect directly to the database. The API defines the interface to the data, but does not define the data structure. The representation of the resource data from the API can and will differ from how it is structured and stored in the underlying database. Proper data normalisation to at least third normal form (3NF) is still required for data integrity.
The API should also manage database schema updates and migrations. This is usually achieved using a library such as Alembic for Python, or sometimes part of the Object Relational Mapper (ORM).

### OpenAPI Specification

### JSON Schema Validation

### Semantic Versioning

## UI

### User-centered vs developer-centered design

### Programatically defined forms and validation

## Examples

---

[:fontawesome-brands-bluesky: Share on Bluesky](https://bsky.app/intent/compose?text={{ page.title | urlencode }} by @mash85.bsky.social {{ page.canonical_url }} {% for tag in page.meta.tags %}%23{{ tag | replace(" ", "") }} {% endfor %}){ .md-button .md-button--primary }

[:fontawesome-brands-linkedin: Share on LinkedIn](https://www.linkedin.com/sharing/share-offsite/?url={{page.canonical_url}}){ .md-button .md-button--primary }

[:fontawesome-brands-x-twitter: Share on Twitter](https://twitter.com/intent/tweet?text={{ page.title | urlencode }}&url={{ page.canonical_url }}&hashtags={% for tag in page.meta.tags %}{{ tag | replace(" ", "") }},{% endfor %}&via=MattShaw85){ .md-button .md-button--primary }
