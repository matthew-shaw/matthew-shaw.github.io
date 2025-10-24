---
draft: true
date:
  created: 2025-10-24
authors:
  - mash
categories:
  - Software Development
description: The Seven Wastes of Lean Thinking
tags:
  - Lean
  - Agile
---

# The Seven Wastes of Lean Thinking

In manufacturing, Lean thinking revolutionised how teams build products by relentlessly focusing on eliminating waste. Though it began on factory floors, its principles have deeply influenced modern software delivery — from Agile and DevOps to Continuous Delivery and Platform Engineering.

In Japanese, _Muda_ means “waste” or “futility” — any activity that consumes resources but creates no value. Taiichi Ohno, the father of the Toyota Production System, identified seven types of waste that slow flow, obscure learning, and erode quality.

Let’s explore how each of these seven wastes — plus a crucial eighth — shows up in software development, and how to spot (and stop) them in your team.

<!-- more -->

## 1. Transportation (Yusō)

In manufacturing, transportation waste is unnecessary movement of materials. In software, it’s unnecessary handoffs between teams, tools, or environments.

Every handoff introduces delay, confusion, and risk. Reducing “transportation” means shortening the path from idea to running code.

- **DevOps** and **Agile** break down silos by forming outcome-oriented teams that deliver value independently.
- **Team Topologies** defines clear interaction modes — collaboration, X-as-a-service, facilitation — making communication intentional rather than chaotic.
- **Platform Engineering** provides self-service infrastructure and environments, eliminating manual requests and delays.

**How to reduce waste:**

- Build cross-functional, outcome-oriented teams.
- Automate CI/CD pipelines to reduce manual steps.
- Create shared visibility across the entire delivery lifecycle.

## 2. Inventory (Zaiko)

In manufacturing, inventory means stock that isn’t yet adding value. In software, it’s unfinished code, unmerged branches, backlog bloat, or unvalidated features.

Inventory hides risk — unmerged code ages silently, accumulating merge conflicts, stale requirements, and missed context.

- **Kanban** visualises and limits WIP, exposing flow bottlenecks early.
- **Continuous Integration** keeps the system deployable at all times, while **Continuous Delivery** automates the path to production.
- **Trunk-Based Development** eliminates long-lived branches and ensures small, frequent merges.
- **Agile** promotes short iterations and small batch sizes to minimise partially done work.

**How to reduce waste:**

- Limit WIP on your boards and in your processes.
- Merge small, frequent PRs instead of massive ones.
- Validate product ideas early using MVPs and feature flags.

## 3. Motion (Dōsa)

Motion waste in manufacturing is unnecessary movement. In software, it’s repetitive setup steps, manual deployments, inconsistent environments, or inefficient tooling.

Every time a developer manually configures a local environment or chases down a missing log file, focus and flow are lost — that’s motion waste.

- **Automation** and **Infrastructure as Code** eliminate manual setup and configuration.
- **Clean Code** and **Clean Architecture** reduce cognitive motion, making systems easier to navigate and evolve safely.
- **Platform Engineering** provides standardised environments that “just work.”

**How to reduce waste:**

- Automate repetitive setup steps.
- Standardise environments with containers or scripts.
- Invest in developer experience (DX) tooling that removes friction.

## 4. Waiting (Taiki)

Idle machines are costly; so are idle developers. Waiting waste appears as long build times, delayed reviews, or slow feedback from stakeholders.

Every minute waiting is a minute not learning, not improving, and not delivering.

- **Continuous Integration** and **Continuous Delivery** automate builds, tests, and deployments to reduce idle time.
- **Agile** and **Kanban** emphasise small batches and fast feedback.
- **Team Topologies** warns against coupling teams so tightly that one’s progress blocks another’s.
- **Platform Engineering** allows developers to self-serve environments and tools instead of waiting for tickets.

**How to reduce waste:**

- Automate builds, tests, and deployments to shorten feedback loops.
- Use lightweight, asynchronous reviews to avoid bottlenecks.
- Optimise CI with caching and parallelisation.

## 5. Overproduction (Kajō seisan)

Overproduction is producing goods before they’re needed. In software, it’s building features no one uses or developing too far ahead of validated demand.

It’s the most expensive form of waste — consuming capacity on work that never delivers value.

- **Agile** and **Lean Startup** thinking focus on delivering the smallest valuable increment.
- **Domain-Driven Design** helps teams focus on the core domain — the areas that create real business value.
- **Continuous Delivery** encourages small, validated releases rather than speculative ones.
- **Behavior-Driven Development** ensures teams build exactly what’s required, no more.

**How to reduce waste:**

- Focus on customer value, not feature volume.
- Validate hypotheses early with real users.
- Use feature toggles or A/B testing before committing to full-scale builds.

## 6. Overprocessing (Kajō kakō)

Overprocessing happens when we do more work than necessary for the same result. In software, it’s overengineering — unnecessary abstraction, excessive process, or documentation for its own sake.

Complex systems are harder to maintain, harder to test, and slower to change — complexity compounds waste.

- **Clean Code** principles fight overprocessing: clarity over cleverness, simplicity over abstraction.
- **Agile** discourages heavyweight ceremonies and unnecessary documentation.
- **Domain-Driven Design** uses _Bounded Contexts_ to contain complexity.
- **Team Topologies** reinforces small, decoupled teams that own coherent parts of the system.

**How to reduce waste:**

- Apply the YAGNI principle — _You Aren’t Gonna Need It_.
- Keep architectures simple until scale truly demands otherwise.
- Match process to risk — small teams and low-risk work deserve lightweight governance.

## 7. Defects (Furyō)

Defects in manufacturing cause rework; in software, bugs and technical debt consume time, energy, and trust. The later an issue is found, the more expensive it is to fix.

- **Test-Driven Development** builds quality in from the start.
- **Behavior-Driven Development** aligns developers, testers, and product on shared expectations.
- **Continuous Delivery** embeds testing throughout the pipeline, catching issues early.
- **Clean Code** practices — readability, modularity, testability — reduce the defect rate over time.
- **DevOps** promotes shared responsibility for quality: _“You build it, you run it.”_

**How to reduce waste:**

- Invest in automated testing and CI quality gates.
- Use pair programming or peer review for high-risk areas.
- Fix root causes, not just symptoms.

## 8. Unused Talent

Many Lean practitioners add an eighth waste: failing to use people’s creativity and ideas. In software, this may be the most damaging of all. Engineers are problem-solvers by nature — yet too often treated as implementers of someone else’s roadmap.

- **Agile** empowers teams to self-organise and decide how to achieve outcomes.
- **Team Topologies** encourages autonomy and ownership over clear, bounded scopes.
- **DevOps** culture rewards experimentation and learning from failure.
- **Domain-Driven Design** and **Clean Code** both assume developers are active designers of systems, not passive implementers.

**How to reduce waste:**

- Empower teams with ownership, autonomy, and trust.
- Encourage ideas from everyone — not just leads or architects.
- Create space for experimentation (spikes, hack days, retrospectives).

## Lean Thinking for Modern Software Teams

The seven wastes aren’t just a process checklist — they’re a mindset. They challenge us to constantly ask: _“Is this adding value, or just keeping us busy?”_

By spotting and eliminating these wastes, you’ll deliver faster, build smarter, and free up creative energy to focus on what truly matters: solving real problems.

**Lean isn’t about doing more with less — it’s about doing only what matters.**

---

[:fontawesome-brands-bluesky: Share on Bluesky](<https://bsky.app/intent/compose?text={{> page.title | urlencode }} by @mash85.bsky.social {{ page.canonical_url }} {% for tag in page.meta.tags %}%23{{ tag | replace(" ", "") }} {% endfor %}){ .md-button .md-button--primary }

[:fontawesome-brands-x-twitter: Share on Twitter](<https://twitter.com/intent/tweet?text={{> page.title | urlencode }}&url={{ page.canonical_url }}&hashtags={% for tag in page.meta.tags %}{{ tag | replace(" ", "") }},{% endfor %}&via=MattShaw85){ .md-button .md-button--primary }
