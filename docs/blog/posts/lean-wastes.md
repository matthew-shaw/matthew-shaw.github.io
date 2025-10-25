---
draft: true
date:
  created: 2025-10-25
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

In manufacturing, Lean thinking revolutionised how products were built by relentlessly eliminating waste. Though it began on factory floors, its principles now underpin modern software delivery — from Agile and DevOps to Continuous Delivery and Platform Engineering.

<!-- more -->

Decades later, research from _Accelerate_ and the DORA program has validated these same Lean principles as the foundation of high-performing software teams.

In Japanese, _Muda_ means “waste” or “futility” — any activity that consumes resources but creates no value. Taiichi Ohno, the father of the Toyota Production System, identified seven types of waste that slow flow, obscure learning, and erode quality.

Let’s explore how each of these seven wastes — plus a crucial eighth — shows up in software development, and how to spot (and stop) them in your team.

## 1. Transportation (Yusō)

In manufacturing, transportation waste is unnecessary movement of materials. In software, it’s unnecessary handoffs between teams, tools, or environments.

Every handoff introduces delay, confusion, and risk. Reducing “transportation” means shortening the path from idea to running code.

### How to reduce waste

- Form cross-functional, outcome-oriented teams to reduce handoffs.
- Provide self-service environments and standardised tooling.
- Establish clear communication channels and ownership for tasks and escalations.

### Software engineering approaches

- **DevOps** and **Agile** break down silos by forming outcome-oriented teams that deliver value independently.
- **Team Topologies** defines clear interaction modes — collaboration, X-as-a-service, facilitation — making communication intentional rather than chaotic.
- **Platform Engineering** provides self-service infrastructure and environments, eliminating manual requests and delays.

### Evidence

Research from _Accelerate_ and the DORA program shows that reducing handoffs and enabling end-to-end ownership directly improves performance — shortening lead times and increasing deployment frequency.

## 2. Inventory (Zaiko)

In manufacturing, inventory means stock that isn’t yet adding value. In software, it’s unfinished code, unmerged branches, backlog bloat, or unvalidated features.

Inventory hides risk — unmerged code ages silently, accumulating merge conflicts, stale requirements, and missed context.

### How to reduce waste

- Limit WIP to expose bottlenecks and maintain flow.
- Deliver small, independently deployable increments.
- Regularly review and prune backlog items that no longer add value.

### Software engineering approaches

- **Kanban** visualises and limits WIP, exposing flow bottlenecks early.
- **Continuous Integration** keeps the system deployable at all times, while **Continuous Delivery** automates the path to production.
- **Trunk-Based Development** eliminates long-lived branches and ensures small, frequent merges.
- **Agile** promotes short iterations and small batch sizes to minimise partially done work.

### Evidence

The DORA findings strongly support this Lean principle: keeping work small and continuously integrated leads to faster feedback, lower risk, and shorter _lead times for changes_ — hallmarks of high-performing teams.

## 3. Motion (Dōsa)

Motion waste in manufacturing is unnecessary movement. In software, it’s repetitive setup steps, manual deployments, inconsistent environments, or inefficient tooling.

Every time a developer manually configures a local environment or chases down a missing log file, focus and flow are lost — that’s motion waste.

### How to reduce waste

- Automate repetitive tasks like environment setup, builds, and deployments.
- Provide standardised, containerised environments for consistency.
- Supply curated scripts, templates, and DX tooling to reduce friction.

### Software engineering approaches

- **Automation** and **Infrastructure as Code** eliminate manual setup and configuration.
- **Clean Code** and **Clean Architecture** reduce cognitive motion, making systems easier to navigate and evolve safely.
- **Platform Engineering** provides standardised environments that “just work.”

### Evidence

Data from the DORA studies confirms that automation and standardised development environments are key predictors of elite performance across all four metrics — teams deliver faster, recover more quickly, and experience fewer failures when repetitive motion is eliminated.

## 4. Waiting (Taiki)

Idle machines are costly; so are idle developers. Waiting waste appears as long build times, delayed reviews, or slow feedback from stakeholders.

Every minute waiting is a minute not learning, not improving, and not delivering.

### How to reduce waste

- Automate CI/CD pipelines for fast feedback loops.
- Enable async reviews and lightweight approvals to remove blockers.
- Decouple teams and reduce inter-team dependencies to avoid idle time.

### Software engineering approaches

- **Continuous Integration** and **Continuous Delivery** automate builds, tests, and deployments to reduce idle time.
- **Agile** and **Kanban** emphasise small batches and fast feedback.
- **Team Topologies** warns against coupling teams so tightly that one’s progress blocks another’s.
- **Platform Engineering** allows developers to self-serve environments and tools instead of waiting for tickets.

### Evidence

_Accelerate_ research highlights fast feedback loops as one of the strongest predictors of success — teams that shorten the path from commit to deploy consistently outperform those trapped in slow feedback cycles.

## 5. Overproduction (Kajō seisan)

Overproduction is producing goods before they’re needed. In software, it’s building features no one uses or developing too far ahead of validated demand.

It’s the most expensive form of waste — consuming capacity on work that never delivers value.

### How to reduce waste

- Prioritise work based on validated customer value and usage metrics.
- Deliver small, incremental releases instead of speculative features.
- Test assumptions early with MVPs, prototypes, or user research.

### Software engineering approaches

- **Agile** and **Lean Startup** thinking focus on delivering the smallest valuable increment.
- **Domain-Driven Design** helps teams focus on the core domain — the areas that create real business value.
- **Continuous Delivery** encourages small, validated releases rather than speculative ones.
- **Behavior-Driven Development** ensures teams build exactly what’s required, no more.

### Evidence

The DORA research reinforces that small, validated releases reduce waste and improve stability. Teams that deliver only what users actually need achieve both higher throughput and lower change failure rates.

## 6. Overprocessing (Kajō kakō)

Overprocessing happens when we do more work than necessary for the same result. In software, it’s overengineering — unnecessary abstraction, excessive process, or documentation for its own sake.

Complex systems are harder to maintain, harder to test, and slower to change — complexity compounds waste.

### How to reduce waste

- Apply YAGNI: implement features only when needed.
- Keep architectures and abstractions simple.
- Regularly review code and processes to remove redundant complexity.

### Software engineering approaches

- **Clean Code** principles fight overprocessing: clarity over cleverness, simplicity over abstraction.
- **Agile** discourages heavyweight ceremonies and unnecessary documentation.
- **Domain-Driven Design** uses _Bounded Contexts_ to contain complexity.
- **Team Topologies** reinforces small, decoupled teams that own coherent parts of the system.

### Evidence

Studies in _Accelerate_ show that simplifying architectures and streamlining technical and organisational processes reduce lead times and increase deployment frequency — proving that leaner, less bureaucratic systems deliver faster and more reliably.

## 7. Defects (Furyō)

Defects in manufacturing cause rework; in software, bugs and technical debt consume time, energy, and trust. The later an issue is found, the more expensive it is to fix.

### How to reduce waste

- Build quality in with TDD, automated testing, and CI pipelines.
- Perform code reviews and static analysis for high-risk areas.
- Monitor production with observability tools to detect and prevent regressions.

### Software engineering approaches

- **Test-Driven Development** builds quality in from the start.
- **Behavior-Driven Development** aligns developers, testers, and product on shared expectations.
- **Continuous Delivery** embeds testing throughout the pipeline, catching issues early.
- **Clean Code** practices — readability, modularity, testability — reduce the defect rate over time.
- **DevOps** promotes shared responsibility for quality: _“You build it, you run it.”_

### Evidence

DORA’s data shows that teams that build quality in through automation and shared ownership see lower failure rates and faster recovery — proving that speed and quality rise together.

## 8. Unused Talent

Many Lean practitioners add an eighth waste: failing to use people’s creativity and ideas. In software, this may be the most damaging of all. Engineers are problem-solvers by nature — yet too often treated as implementers of someone else’s roadmap.

### How to reduce waste

- Empower teams with autonomy and ownership over outcomes.
- Encourage contributions and ideas from all team members.
- Allocate time for experimentation, learning, and innovation (spikes, hackdays).

### Software engineering approaches

- **Agile** empowers teams to self-organise and decide how to achieve outcomes.
- **Team Topologies** encourages autonomy and ownership over clear, bounded scopes.
- **DevOps** culture rewards experimentation and learning from failure.
- **Domain-Driven Design** and **Clean Code** both assume developers are active designers of systems, not passive implementers.

### Evidence

The _Accelerate_ research identifies culture as a decisive factor in performance: teams with autonomy, trust, and psychological safety deliver faster, fail less, and recover more quickly — proving that empowering people is the most powerful efficiency gain of all.

## Lean Thinking for Modern Software Teams

The seven wastes aren’t just a process checklist — they’re a mindset. They challenge us to constantly ask: _“Is this adding value, or just keeping us busy?”_

By spotting and eliminating these wastes, you’ll deliver faster, build smarter, and free up creative energy to focus on what truly matters: solving real problems.

The _Accelerate_ and DORA studies have shown that Lean’s principles of flow, feedback, and empowerment remain the strongest predictors of high-performing software teams today.

**Lean isn’t about doing more with less — it’s about doing only what matters.**

---

[:fontawesome-brands-bluesky: Share on Bluesky](https://bsky.app/intent/compose?text={{ page.title | urlencode }} by @mash85.bsky.social {{ page.canonical_url }} {% for tag in page.meta.tags %}%23{{ tag | replace(" ", "") }} {% endfor %}){ .md-button .md-button--primary }

[:fontawesome-brands-x-twitter: Share on Twitter](https://twitter.com/intent/tweet?text={{ page.title | urlencode }}&url={{ page.canonical_url }}&hashtags={% for tag in page.meta.tags %}{{ tag | replace(" ", "") }},{% endfor %}&via=MattShaw85){ .md-button .md-button--primary }
