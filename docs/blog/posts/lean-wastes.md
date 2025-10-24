---
draft: true
date:
  created: 2025-10-24
authors:
  - mash
categories:
  - Software Development
description: The Seven Wastes of Lean Thinking.
tags:
  - Lean
  - Agile
---

# The Seven Wastes of Lean Thinking

In manufacturing, Lean thinking revolutionised how teams build products by relentlessly focusing on eliminating waste. Lean thinking began on factory floors, but its principles have shaped many of the best practices in modern software delivery.

In Japanese, "Muda" means waste or futility - any activity that consumes resources but creates no value. Taiichi Ohno, the father of the Toyota Production System, categorised seven specific types.

Let’s explore how each of the seven wastes - plus a crucial eighth - shows up in modern software development, and how to spot (and stop) them in your team.

<!-- more -->

## 1. Transportation (Yusō)

In manufacturing, transportation waste is about unnecessary movement of materials. In software, it’s about unnecessary handoffs between teams, tools, or environments.

Every handoff introduces delay, confusion, and risk. This is why DevOps and Team Topologies both advocate for stream-aligned teams - groups that can take a product or feature from concept to production with minimal dependencies.

- **DevOps** breaks down silos between development and operations, reducing handoffs (and context switching).
- **Team Topologies** defines interaction modes (collaboration, X-as-a-service, facilitation) to make communication intentional rather than chaotic.

How to reduce waste:

- Build cross-functional teams (DevOps, full-stack squads).
- Automate CI/CD pipelines to reduce manual steps.
- Create shared visibility across the development lifecycle.

## 2. Inventory (Zaiko)

In manufacturing, inventory means stock that isn’t adding value yet. In software, it's unfinished code, unmerged PR's, backlog bloat, and unvalidated features.

Inventory in software hides risk

- **Kanban** visualises and limits WIP, revealing bottlenecks in flow.
- **Continuous Delivery** aims to keep the system in a deployable state at all times - minimising WIP by integrating continuously.

How to reduce waste:

- Limit WIP in sprints or Kanban boards.
- Merge small, frequent PR's instead of massive ones.
- Validate product ideas early (MVP's, feature flags).

## 3. Motion (Dōsa)

Motion waste in manufacturing is unnecessary physical movement. In software, it’s repetitive setup steps, environment inconsistencies, manual deployments, or poor tooling.

Every time a developer has to manually configure a local environment or chase down a build log, that’s motion waste.

- **DevOps** encourages automation of repetitive tasks (CI/CD pipelines, infrastructure as code).
- **Clean Code** and **Clean Architecture** reduce cognitive “motion” - making codebases easier to navigate and modify safely.

How to reduce waste:

- Automate repetitive setup steps.
- Standardise environments with containers or scripts.
- Invest in internal developer experience (DX) tooling.

## 4. Waiting (Taiki)

Idle machines are costly; so are idle developers. Waiting waste in software shows up as long build times, delayed reviews, or slow feedback from stakeholders.

Every minute waiting is a minute not learning, not improving, and not delivering.

- **Continuous Delivery** promotes automation and parallelisation to minimise idle time.
- **Kanban** emphasises monitoring _flow efficiency_ (the ratio of active work time to total elapsed time).
- **Team Topologies** warns against coupling teams so tightly that one blocks another’s progress.

How to reduce waste:

- Automate builds, tests, and deployments.
- Encourage faster feedback loops (continuous integration).
- Keep reviewers accountable with lightweight, async reviews.

## 5. Overproduction (Kajō seisan)

Overproduction is producing goods before they’re needed. In software, it’s building features no one uses or developing too far ahead of validated needs.

This is one of the most expensive forms of waste in software, because it consumes engineering capacity on work that never delivers value.

- **Domain-Driven Design** helps teams focus on the core domain - the parts of the system that actually create value - instead of spreading effort across everything.
- **Continuous Delivery** encourages small, validated releases - not large, speculative ones.

How to reduce waste:

- Focus on customer value, not feature volume.
- Validate hypotheses early, with real users, before building.
- Deliver incrementally and measure adoption.

## 6. Overprocessing (Kajō kakō)

Overprocessing happens when we do more work than necessary to achieve the same result. In software, it’s the trap of overengineering - complex abstractions, unnecessary layers, and excessive documentation or process.

Complex systems are harder to maintain, test, and deploy - and they slow everything down.

- **Clean Code** principles directly fight overprocessing: favor clarity over cleverness, simplicity over abstraction.
- **Domain-Driven Design** Bounded Contexts help manage complexity by isolating concerns.
- **Team Topologies** reinforces this by promoting smaller, decoupled teams that own coherent parts of the system.

How to reduce waste:

- Apply the YAGNI principle: You Aren’t Gonna Need It.
- Keep architectures simple until scale truly demands otherwise.
- Tailor processes to project complexity (no heavyweight workflows for small teams).

## 7. Defects (Furyō)

Just as defects on the factory floor require rework, bugs, regressions and technical debt in software consume huge amounts of time and morale.

Defects aren’t just bugs - they’re feedback delayed. Each bug that reaches production represents a missed opportunity.

- **Continuous Delivery** embeds testing throughout the pipeline - catching issues fast.
- **Clean Code** practices (readability, testability, modularity) reduce the defect rate over time.
- *DevOps* promotes shared responsibility for quality - _“you build it, you run it.”_

How to reduce waste:

- Invest in automated testing and CI quality gates.
- Encourage pair programming or peer review for high-risk areas.
- Fix the root cause - not just the symptom.

## Bonus: 8. Unused Talent

Many lean practitioners add an eighth waste: failing to use people’s creativity and ideas.

In software, this is arguably the most damaging. Engineers are problem solvers by nature - yet too often they’re treated as implementers of someone else’s plan.

- **Team Topologies** empowers teams to own outcomes, not just deliverables.
- **DevOps** culture encourages experimentation and learning.
- **Domain-Driven Design** and **Clean Code** both assume developers are designers - responsible for shaping the system thoughtfully.

How to reduce waste:

- Empower teams with ownership, autonomy and trust.
- Encourage ideas from everyone - not just leads.
- Create space for experimentation (spikes, hack days, retros).

## Lean Thinking for Modern Software Teams

The seven wastes are more than a process checklist - they’re a mindset. They challenge us to constantly ask: _“Is this adding value, or just keeping us busy?”_

By spotting and eliminating these wastes you’ll deliver faster, build smarter, and free up creative energy to focus on what truly matters: solving real problems.

**Lean isn’t about doing more with less. It’s about doing only what matters.**

---

[:fontawesome-brands-bluesky: Share on Bluesky](https://bsky.app/intent/compose?text={{ page.title | urlencode }} by @mash85.bsky.social {{ page.canonical_url }} {% for tag in page.meta.tags %}%23{{ tag | replace(" ", "") }} {% endfor %}){ .md-button .md-button--primary }

[:fontawesome-brands-x-twitter: Share on Twitter](https://twitter.com/intent/tweet?text={{ page.title | urlencode }}&url={{ page.canonical_url }}&hashtags={% for tag in page.meta.tags %}{{ tag | replace(" ", "") }},{% endfor %}&via=MattShaw85){ .md-button .md-button--primary }
