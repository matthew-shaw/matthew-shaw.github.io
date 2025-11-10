---
draft: true
slug: the-source-of-uneven-flow
date:
  created: 2025-11-30
authors:
  - mash
categories:
  - Software Development
description: Diagnosing the patterns that create waste.
tags:
  - Agile
  - Continuous Delivery
  - DevOps
  - DORA
  - Lean
  - Platform Engineering
  - Team Topologies
---

# Mura: The Source of Uneven Flow

In part 1, we explored the eight wastes (_Muda_) as the visible symptoms of inefficiency in software delivery. We saw how waste shows up in unfinished work, handoffs, long waits, rework, and lost talent. Those are the effects we can observe and feel.

Those wastes are almost always the result of _Mura_ (斑), a Japanese term from the Toyota Production System meaning "unevenness" or "inconsistency" in how work flows. It is the _"hurry up and wait"_ cycle: periods of low activity followed by periods of frantic catch-up, that make delivery unpredictable and unsustainable.

<!-- more -->

This post examines in depth how to identify uneven flow, and how modern software delivery practices work together to reduce inconsistency and create predictability.

> This is the second in a three-part series:
>
> 1. [**Muda: The Eight Wastes of Modern Software Delivery**](lean-muda.md) - Identifying the _symptoms_ of inefficiency.
> 2. **Mura: The Source of Uneven Flow** _(You are here)_ - Diagnosing the _patterns_ that create waste.
> 3. **Muri: The Root of Overburden** _(Coming soon)_ - Uncovering the _causes_ of failure and burnout.

---

## The Detection Kit

The principles of **Lean** have been empirically validated for software delivery by the extensive research in the _Accelerate_ book and the ongoing **DORA** programme. This work gave us the four key metrics that are now the industry standard for measuring high-performing teams.

The **DORA** metrics are not performance scorecards; they are flow indicators. The goal isn't simply to achieve "good" numbers. The goal is to reduce variance.

### Lead Time for Changes

**What it tells you**: A high average Lead Time is a problem, but a high variance (or standard deviation) is a warning signal.

If your team delivers one feature in two days, but the next one takes forty, your system isn't just slow, it's chaotic. This variance makes forecasting impossible. It's the single best indicator that your process is unpredictable and riddled with hidden blockers (like [Waiting](lean-muda.md#4-waiting) for code reviews or environments). A smooth flowing system has a tight, predictable Lead Time.

### Deployment Frequency

**What it tells you**: An inconsistent deployment cadence is a clear sign of batching and queues.

Deploying twenty changes on a Tuesday afternoon and then nothing for four days isn't high frequency; it's batched and irregular delivery. It's a sign of an uneven system that queues work up for a "Release Day", creating a massive [Inventory](lean-muda.md#2-inventory) of undeployed code. A smooth flowing system has a consistent, rhythmic deployment cadence - or even better, deploy on-demand.

### Change Failure Rate

**What it tells you**: A spiky Change Failure Rate is a lagging consequence of rushed work.

A spiky CFR is the inevitable result of a "crunch" cycle. The team was forced to rush to meet an arbitrary sprint boundary or release date. They cut corners, skipped tests, and force pushed their way to "done." The resulting spike in [Defects](lean-muda.md#7-defects) is the unavoidable effect of that unevenness.

## The Solutions

Unevenness is created by _push-based_ systems. If we push unrefined work onto teams, or push untested code into a release branch, or push a sprint's-worth of "done" work onto the testers on the final day, we’re actively _creating_ instability.

The solution is a fundamental cultural and technical shift to a _pull-based_ system.

### The Management System

**Kanban** (not just a "JIRA board") is a management system for diagnosing and stabilising flow.

The key to **Kanban** is the Work in Progress (WIP) limit. A WIP limit is not a process bottleneck, or a constraint on productivity; it is a deliberate countermeasure. It is a simple rule that forces the team to stop starting work and start finishing it.

WIP limits relentlessly expose hidden bottlenecks, making the [Waiting](lean-muda.md#4-waiting), and the unevenness painfully visible. By forcing the team to pull new work only when capacity is available, WIP limits naturally smooth the flow.

This effect is not just philosophical; it's mathematical. Queueing theory shows that as a system approaches full utilisation; its cycle time increases non-linearly. In other words, when everyone is "100% busy," work does not finish faster, it finishes _much_ slower. High WIP means more context switching, more [Waiting](lean-muda.md#4-waiting), and more unevenness. A WIP limit creates slack, and slack creates flow.

### The Cultural System

A pull-system on its own can still be thwarted by organisational structures and silos. The largest and most damaging bottleneck in traditional IT is the "wall of confusion" between Development and Operations. This isn't just a handoff; it's a fundamental conflict of incentives.

In this broken model, developers are incentivised to deliver change (go fast), while operations are incentivised to maintain stability (go slow). This conflict guarantees a stop-start process of [Transportation](lean-muda.md#1-transportation) followed by long periods of [Waiting](lean-muda.md#4-waiting). If a deployment fails, the work is thrown back, creating [Defects](lean-muda.md#7-defects) and halting all forward progress.

The **DevOps** movement is the cultural countermeasure. By unifying ownership and responsibility ("you build it, you run it"), it aligns these incentives. The team is now incentivised to build operable and stable features from the start. This cultural shift is the prerequisite for true, continuous flow, as it replaces these two large silos with a single, empowered team.

### The Technical System

A high-trust, continuous flow doesn’t happen by accident. It is a technical foundation of built-in quality. You cannot have continuous flow if you are constantly finding [Defects](lean-muda.md#7-defects).

The practices championed by **Extreme Programming** (XP) enable this:

- **Test-Driven Development** (TDD) builds a regression-proof suite of automated tests that gives teams the confidence to merge and deploy continuously.
- **Behaviour-Driven Development** (BDD) creates a shared understanding of the requirements, ensuring that the right code is built the first time, eliminating the wasteful [Transportation](lean-muda.md#1-transportation) handoffs between "dev," "test," and "product."
- **Pair Programming** is a continuous, real-time code review. Instead of work [Waiting](lean-muda.md#4-waiting) for an asynchronous review, quality is validated as the code is written.

XP practices don’t just improve quality; they make the pull-system more reliable and trustworthy, in turn reducing the variance in lead time.

### The Ideal

In the Toyota Production System, the ultimate solution for Mura was the ideal of "One-Piece Flow" - making one part at a time and moving it immediately to the next step, with zero [Inventory](lean-muda.md#2-inventory) in between.

The modern software equivalent is **Continuous Delivery**, supported by **trunk-based development**, **automated testing**, and fast deployment pipelines. **Continuous Delivery** approximates one-piece flow by reducing batch sizes, shortening feedback loops, and ensuring that each change can move smoothly into production without accumulating [Inventory](lean-muda.md#2-inventory).

In a high-flow system, a single commit can be built, tested, and deployed within minutes. This is the closest practical expression of the same principle: work should move continuously, without queueing, batching, or delay.

## The Anti-Patterns

This is where our industry so often gets it wrong. We adopt "agile" practices that, through misunderstanding, make flow _more_ uneven.

### Misusing Story Points

This is perhaps the most insidious anti-pattern, because it presents itself as a predictability tool while actively producing uneven batches. In theory, story points were intended as an internal estimation shorthand for teams. In practice, velocity is quickly weaponised into a delivery target. This creates a push-system where teams play sprint-Tetris, packing work to hit a number rather than maintaining flow. The result is uneven batches, rushed work, and [Defects](lean-muda.md#7-defects) created simply to get "committed" points accepted.

Ron Jeffries, one of the early advocates of story points in XP, has even said: _"if I did invent story points, I’m probably a little sorry now"_, in response to how commonly they are misused. The **Lean** alternative is to stop treating estimation as forecasting, and instead focus relentlessly on making batch sizes small, stable, and consistent.

### "Scrum-fall"

This is an anti-pattern disguised as Agile. Work piles up at the start of the sprint and testing piles up at the end, creating a mini-waterfall inside timeboxes. This guarantees unevenness, reinforces handoffs, and produces the _"hurry up and wait"_ cycle that drives [Defects](lean-muda.md#7-defects) and [Overprocessing](lean-muda.md#6-overprocessing). The countermeasures are practices like **Pair Programming** and **Behaviour-Driven Development**, where building and checking happen together, not in sequence.

### "JIRA-First"

This is the anti-pattern of treating JIRA (or any work-tracking system) as a ticket-pushing workflow. The focus becomes moving cards through states rather than improving flow. This incentivises starting work ("In Progress") over finishing it (WIP limits and flow efficiency). JIRA becomes a status reporting tool, not a system for managing value. The result is bloated [Inventory](lean-muda.md#2-inventory) and chronic WIP that never seems to get to "Done".

### SAFe (and the Agile Release Train)

This is the most elaborate and costly form of institutionalised ceremony. The Agile Release Train is a large-batch planning and coordination mechanism presented as agility. It produces the illusion of control, but synchronised big-batch planning events make flow uneven and unpredictable. In practice, this leads to integration crunches and "hardening phases," which are a tacit admission that the system generates more waste than it removes.

SAFe attempts to manage the symptoms of unevenness, rather than eliminating the causes. It is a coping mechanism for organisations struggling with deep _Muri_ (dependencies, brittle systems, low trust) but unwilling or unable to reduce cognitive load or decouple teams.

## Conclusion

Mura is not just a vague feeling of chaos; in modern software delivery teams it is a problem you can detect and measure using **DORA** metrics. It is the _"hurry up and wait"_ pattern that creates the waste (Muda) and symptoms of inefficiency.

The solution is not another tool or framework, but a fundamental cultural shift from a push mentality to a pull system. By embracing WIP limits (**Kanban**), a **DevOps** culture, built-in quality (**TDD** & **BDD**) and the ideal of **Continuous Delivery**, we can tame the chaos. We can move from unpredictable delivery to a smooth, sustainable, and high-performance flow.

These patterns are rarely accidental; they are the system’s response to overburden, or _Muri_, on our people and our technology, which we will uncover in the final part of this series.

> The ideas, structure, and all final arguments and conclusions in this article are my own. As part of my research and revision workflow, I have used AI tools to accelerate drafting and language refinement.

---

[:fontawesome-brands-bluesky: Share on Bluesky](https://bsky.app/intent/compose?text={{ page.title | urlencode }} by @mash85.bsky.social {{ page.canonical_url }} {% for tag in page.meta.tags %}%23{{ tag | replace(" ", "") }} {% endfor %}){ .md-button .md-button--primary }

[:fontawesome-brands-linkedin: Share on LinkedIn](https://www.linkedin.com/sharing/share-offsite/?url={{page.canonical_url}}){ .md-button .md-button--primary }

[:fontawesome-brands-x-twitter: Share on Twitter](https://twitter.com/intent/tweet?text={{ page.title | urlencode }}&url={{ page.canonical_url }}&hashtags={% for tag in page.meta.tags %}{{ tag | replace(" ", "") }},{% endfor %}&via=MattShaw85){ .md-button .md-button--primary }
