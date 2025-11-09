---
slug: the-eight-wastes-of-modern-software-delivery
date:
  created: 2025-10-25
  updated: 2025-11-09
authors:
  - mash
categories:
  - Software Development
description: Identifying the symptoms of inefficiency.
tags:
  - Agile
  - Continuous Delivery
  - DevOps
  - DORA
  - Lean
  - Platform Engineering
  - Team Topologies
---

# Muda: The Eight Wastes of Modern Software Delivery

In manufacturing, **Lean** thinking revolutionised how products were built by relentlessly eliminating waste. Whilst the "software factory" analogy isn't perfect, the core **Lean** principle of eliminating waste underpins modern software delivery, from **Agile** and **DevOps** to **Continuous Delivery** and **Platform Engineering**.

<!-- more -->

> This post is the first in a three-part series:
>
> 1. **Muda: The Eight Wastes of Modern Software Delivery** _(You are here)_ - Identifying the _symptoms_ of inefficiency.
> 2. **Mura: The Source of Uneven Flow** _(Coming soon)_ - Diagnosing the _patterns_ that create waste.
> 3. **Muri: The Root of Overburden** _(Coming soon)_ - Uncovering the _causes_ of failure and burnout.

---

In Japanese, _Muda_ (無駄) means "waste" or "futility" - any activity that consumes resources but creates no value. During the development of the Toyota Production System in the late 1940s through to the 1970s, Taiichi Ohno identified seven types of waste that hinder efficiency and productivity. Over the years, **Lean** practitioners have adapted these for software and added a widely recognised eighth form of waste - often considered the most critical of all.

Decades later, research from _Accelerate_ and the **DORA** program has validated these same **Lean** principles as the foundation of high-performing software teams. I've seen first-hand how these wastes can slow down even the most well-intentioned teams. This post isn't a theoretical lecture; it's a practical guide based on experience and evidence. Let's explore how each of these eight wastes shows up in software development, and how to spot them in your team.

## 1. Transportation

In manufacturing, transportation waste is the unnecessary movement of materials - moving parts without improving them. In software, it's the same pattern made invisible: unnecessary handoffs between people, tools, or environments.

Every transfer adds friction and risk. Knowledge gets diluted, priorities drift, and work waits for permission to move. The cost isn't just time - it's lost clarity, context, and momentum.

Reducing transportation means shortening the path from idea to running code in production and giving teams direct ownership of outcomes.

### Practical Reduction Strategies

- Form cross-functional, outcome-oriented teams to reduce handoffs.
- Provide self-service environments and standardised tooling.
- Establish clear communication channels and ownership for tasks and escalations.

### Enabling Methodologies & Practices

- **DevOps** and **Agile** break down silos by forming outcome-oriented teams that deliver value independently.
- **Team Topologies** defines clear interaction modes; collaboration, X-as-a-service, facilitation - making communication intentional rather than chaotic.
- **Platform Engineering** provides self-service infrastructure and environments, eliminating manual requests and delays.

### Validated Performance Impact

This waste is a primary driver of long **Lead Time for Changes**. Research from _Accelerate_ and the **DORA** program shows that reducing handoffs and enabling end-to-end ownership directly improves performance - shortening lead times and increasing **Deployment Frequency**.

## 2. Inventory

In manufacturing, inventory waste means stock that's been built but isn't delivering value. In software, that inventory lives as unfinished code, unmerged branches, bloated backlogs, and half-validated features.

Every line of dormant code represents work that's not improving services. It clogs flow, hides defects, and accumulates merge conflicts, stale dependencies, and forgotten context.

**Lean** flow depends on fast feedback. When inventory piles up, feedback slows, and value creation stops. The focus must shift from starting work to finishing work, which requires limiting work-in-progress (WIP).

### Practical Reduction Strategies

- Limit WIP to expose bottlenecks and maintain flow.
- Deliver small, independently deployable increments.
- Regularly review and prune backlog items that no longer add value.

### Enabling Methodologies & Practices

- **Kanban** visualises and limits WIP, exposing flow bottlenecks early.
- **Continuous Integration** keeps the system deployable at all times, while **Continuous Delivery** automates the path to production.
- **Trunk-Based Development** eliminates long-lived branches and ensures small, frequent merges.
- **Agile** promotes short iterations and small batch sizes to minimise partially done work.

### Validated Performance Impact

High inventory (WIP) directly impacts both throughput and stability. It is a major contributor to poor **Lead Time for Changes**, as work waits in queues. It also increases the **Change Failure Rate**, as large, complex batches are inherently riskier to merge and deploy. The **DORA** findings strongly support this: keeping work small (low WIP) leads to faster, safer, and more reliable delivery.

## 3. Motion

Motion waste is the unnecessary movement of people or tools. In software, it shows up as manual setup steps, repetitive configuration, inconsistent environments, or scattered information.

Every manual click or repeated setup is friction that interrupts focus. Developers spend time wrestling with tools instead of solving problems.

Reducing motion means building a smooth, predictable developer experience - one where environments, builds, and feedback are automatic, consistent, and close at hand.

### Practical Reduction Strategies

- Automate repetitive tasks like environment setup, builds, and deployments.
- Provide standardised, containerised environments for consistency.
- Supply curated scripts, templates, and DX tooling to reduce friction.

### Enabling Methodologies & Practices

- **Automation** and **Infrastructure as Code** eliminate manual setup and configuration.
- **Platform Engineering** provides standardised environments that "just work."

### Validated Performance Impact

Friction from manual tasks directly harms **Lead Time for Changes** and often increases the **Change Failure Rate** due to human error. Data from the **DORA** studies confirms that automation and standardised development environments are key predictors of elite performance.

## 4. Waiting

In manufacturing, idle machines burn money. In software, idle people burn opportunity. Waiting waste is the silent cost of slow builds, blocked reviews, overloaded dependencies, or delayed feedback.

Every delay in the feedback loop weakens flow and motivation. Engineers lose context, teams lose pace, and users wait longer for improvements.

Reducing waiting means collapsing those loops - making feedback continuous, not calendar-driven - so progress never depends on someone else's availability.

### Practical Reduction Strategies

- Automate CI/CD pipelines for fast feedback loops.
- Enable async reviews and lightweight approvals to remove blockers.
- Decouple teams and reduce inter-team dependencies to avoid idle time.

### Enabling Methodologies & Practices

- **Continuous Integration** and **Continuous Delivery** automate builds, tests, and deployments to reduce idle time.
- **Agile** and **Kanban** emphasise small batches and fast feedback.
- **Team Topologies** warns against coupling teams so tightly that one's progress blocks another's.
- **Platform Engineering** allows developers to self-serve environments and tools instead of waiting for tickets.

### Validated Performance Impact

Waiting is a pure component of **Lead Time for Changes**. _Accelerate_ research highlights fast feedback loops as one of the strongest predictors of success - teams that shorten the path from commit to deploy (which reduces waiting) consistently outperform those trapped in slow feedback cycles.

## 5. Overproduction

Overproduction is building more than what's needed - features without validation, designs without user input, or automation without purpose.

It's seductive because it looks like progress. Teams deliver features, fill backlogs, and complete roadmaps - but if it doesn't meet a user need or improve service quality, it's waste disguised as delivery.

Reducing overproduction means focusing relentlessly on outcomes, not output. The measure of success is user value, not feature count.

### Practical Reduction Strategies

- Prioritise work based on validated user needs and service outcomes.
- Deliver small, incremental releases instead of speculative features.
- Test assumptions early with MVPs, prototypes or user research.

### Enabling Methodologies & Practices

- **Agile** and **Lean Startup** thinking focus on delivering the smallest valuable increment.
- **Domain-Driven Design** helps teams focus on the core domain - the areas that create real user and service value.
- **Continuous Delivery** encourages small, validated releases rather than speculative ones.
- **Behaviour-Driven Development** ensures teams build exactly what's required, no more.

### Validated Performance Impact

Overproduction wastes capacity that could be used to improve **Deployment Frequency** and, by creating unnecessary code, can increase the **Change Failure Rate**. The **DORA** research reinforces that small, validated releases reduce waste and improve stability, allowing teams to achieve both higher throughput and lower **Change Failure Rate**.

## 6. Overprocessing

Overprocessing is doing more work than necessary for the same result. In software, it's overengineering, unnecessary abstraction, or process overhead added "just in case."

Complexity accumulates quietly - every extra layer, meeting, or document increases cognitive load and slows adaptation. The result is a system that's heavy where it should be light.

Reducing overprocessing means matching effort to value - choosing simplicity, clarity, and sufficiency over theoretical perfection.

### Practical Reduction Strategies

- Apply YAGNI: implement features only when needed.
- Keep architectures and abstractions simple.
- Regularly review code and processes to remove redundant complexity.

### Enabling Methodologies & Practices

- **Clean Code** and **Refactoring** principles fight overprocessing: clarity over cleverness, simplicity over abstraction.
- **Agile** discourages heavyweight ceremonies and unnecessary documentation.
- **Domain-Driven Design** uses _Bounded Contexts_ to contain complexity.
- **Team Topologies** reinforces small, decoupled teams that own coherent parts of the system.

### Validated Performance Impact

Overprocessing adds unnecessary complexity, which directly increases **Lead Time for Changes** and can contribute to a higher **Change Failure Rate**. Studies in _Accelerate_ show that simplifying architectures and streamlining technical and organisational processes reduce lead times and increase **Deployment Frequency** - proving that leaner, less bureaucratic systems deliver faster and more reliably.

## 7. Defects

Defects are the most visible waste - bugs, outages, regressions, or rework. But every defect is a symptom of a deeper process failure - a flaw in testing, a gap in understanding, or a rushed review.

The later an error surfaces, the more expensive it becomes. Each missed test, unchecked assumption, or rushed review compounds until failure becomes inevitable.

Reducing defects means building quality in - making testing, feedback, and improvement continuous parts of delivery rather than after-the-fact correction.

### Practical Reduction Strategies

- Build quality in with TDD, automated testing, and CI pipelines.
- Perform code reviews and static analysis for high-risk areas.
- Monitor production with observability tools to detect and prevent regressions.

### Enabling Methodologies & Practices

- **Test-Driven Development** builds quality in from the start.
- **Pair Programming** provides continuous, real-time code review.
- **Behaviour-Driven Development** aligns developers, testers, and product on shared expectations.
- **Continuous Delivery** embeds testing throughout the pipeline, catching issues early.
- **Clean Code** practices - readability, modularity, testability - reduce the defect rate over time.
- **DevOps** promotes shared responsibility for quality: "You build it, you run it."

### Validated Performance Impact

This waste is a direct measure of the **Change Failure Rate** and impacts **Time to Restore Service**. **DORA**'s data shows that teams that build quality in through automation and shared ownership see lower failure rates and faster recovery - proving that speed and quality rise together.

## 8. Unused Talent

Often considered the most damaging waste of all, particularly in knowledge work: failing to use the creativity and insight of the people closest to the work.

When teams are reduced to task-takers, innovation dies. The best engineers become disengaged, and the organisation loses its capacity to learn, adapt, and improve.

Reducing this waste means treating developers as designers of systems - trusted to experiment, decide, and continuously shape how value flows to users.

### Practical Reduction Strategies

- Empower teams with autonomy and ownership over outcomes.
- Encourage contributions and ideas from all team members.
- Allocate time for experimentation, learning, and innovation (spikes, hackdays).

### Enabling Methodologies & Practices

- **Agile** empowers teams to self-organise and decide how to achieve outcomes.
- **Team Topologies** encourages autonomy and ownership over clear, bounded scopes.
- **DevOps** culture rewards experimentation and learning from failure.
- **Domain-Driven Design** and **Clean Code** both assume developers are active designers of systems, not passive implementers.

### Validated Performance Impact

The _Accelerate_ research identifies culture as a decisive factor in performance, impacting all four **DORA** metrics. Teams with autonomy, trust, and psychological safety deliver faster (**Lead Time for Changes**, **Deployment Frequency**), fail less (**Change Failure Rate**), and recover more quickly (**Time to Restore Service**) - proving that empowering people is the most powerful efficiency gain of all.

## Conclusion

The eight wastes aren't just a checklist: they're a mindset. They challenge us to constantly ask: _"Is this activity adding value, or just keeping us busy?"_ _Accelerate_ and **DORA** have shown that the **Lean** foundations of flow, feedback, and empowerment remain the strongest predictors of high performance today.

But waste is only the symptom. The real question is: why does waste appear in the first place? The answer is _Mura_; unevenness in how work moves through the system.

In part 2, we will move from the what to the why, diagnosing the patterns of uneven flow that create waste, and exploring how to measure and eliminate them.

> The ideas, structure, and all final arguments and conclusions in this article are my own. As part of my research and revision workflow, I have used AI tools to accelerate drafting and language refinement.

---

[:fontawesome-brands-bluesky: Share on Bluesky](https://bsky.app/intent/compose?text={{ page.title | urlencode }} by @mash85.bsky.social {{ page.canonical_url }} {% for tag in page.meta.tags %}%23{{ tag | replace(" ", "") }} {% endfor %}){ .md-button .md-button--primary }

[:fontawesome-brands-x-twitter: Share on Twitter](https://twitter.com/intent/tweet?text={{ page.title | urlencode }}&url={{ page.canonical_url }}&hashtags={% for tag in page.meta.tags %}{{ tag | replace(" ", "") }},{% endfor %}&via=MattShaw85){ .md-button .md-button--primary }
