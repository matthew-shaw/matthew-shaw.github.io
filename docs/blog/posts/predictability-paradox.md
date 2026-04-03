---
date:
  created: 2026-04-14
authors:
  - mash
categories:
  - Software Development
description: Why Coordination is Killing Engineering Context
tags:
  - Agile
  - Engineering Culture
  - Technical Debt
links:
  - blog/posts/what-matters.md
  - blog/posts/modern-software-delivery.md
draft: true
---

# The Predictability Paradox

I recently overheard a conversation in the office that perfectly encapsulates the state of modern software delivery: _"Scrum and Kanban are basically the same, apart from the sprints."_

It is a bit like saying a manual and an automatic car are identical, apart from the gear stick. It reveals a fundamental misunderstanding of the machinery underneath. More importantly, it highlights the exact trap that large, risk-averse organisations fall into when trying to scale their technology teams.

<!-- more -->

What usually follows is the adoption of heavy, bureaucratic frameworks sprinkled with just enough terminology to sound modern. The result is a deeply dysfunctional "Franken-Agile" environment that operates as "Agile In Name Only" (AINO).

In our pursuit of safety, we have stopped _engineering_ software and instead simply attempt to _manage_ it under the false pretence of predictability.

## The Predictability Paradox

As technology organisations scale, they naturally want more predictability and less risk. The industry's default response to this has been to add more coordinators and management layers. We surround our engineering teams with Product Managers, Project Managers, and Delivery Managers.

This comes from a place of good intentions. Nobody adds administrative process maliciously; they add it because they are trying to prevent failure.

To make matters worse, organisations frequently staff these management layers by taking capable, intelligent people from entirely unrelated areas of the business and put them into software delivery roles. We essentially set them up to fail. Without foundational experience to rely on for intuition, their only survival mechanism in a high-risk environment is rigid adherence to the inherited process.

Software development is not a deterministic manufacturing process; it is a novel creative act and a process of continuous discovery. The paradox is that by over-indexing on coordination in an attempt to control the timeline, we accidentally destroy the one thing engineers actually need to build resilient systems: _context_.

## The Translation Tax

Here is the uncomfortable truth: we have created coordination layers that are structurally decoupled from the actual creation of value. Because the organisation has not equipped them to write code, fix a production bug, or configure a deployment pipeline, their only available output is governance. In the organisation's quest for absolute risk aversion, this governance inadvertently acts as an administrative vacuum, sucking up the time and cognitive load of the software engineers.

When you divide the "What" (Product), the "When" (Project), and the "How" (Delivery) across different disciplines, the holistic context of the system is shattered. This creates a massive, hidden economic burden on your senior technical staff, which we can think of as the Translation Tax.

Because these coordination roles lack deep software engineering experience, they are forced to manage the metrics rather than the work. To a heavy delivery framework, a ticket is just a unit of work moving from left to right. Instead of designing architecture or tackling systemic complexity, principal developers and tech leads spend their days acting as human translation layers, translating complex engineering reality into simplified, framework-friendly language just to justify why a feature takes time to build safely.

Every layer you place between the user's problem and the engineer writing the code degrades the engineering context, forcing the engineer to spend far less time solving complex technical problems and far more time solving political ones.

## The Myth of the Clean Handoff

Bureaucracies love cleanly defined management roles because they assume information can be handed off losslessly. The Product Manager gathers requirements, the Project Manager plans the timeline, and the Delivery Manager ensures it gets done on time. Each role is a neat box with clear responsibilities.

This is the myth of the clean handoff. A Jira ticket is a deeply lossy format for exchanging information. You simply cannot capture the nuance of legacy technical debt, brittle architectural boundaries, or complex domain logic within a user story's acceptance criteria.

When we rely on cleanly separated management roles to hand information over to developers, we aren't creating efficiency. We are just paying a very expensive tax on the context. The release train might arrive exactly on schedule, but because the context was lost in the handoffs, it is usually just delivering technical debt on time.

## The Estimation Theatre

Nowhere is the Predictability Paradox more visible than in the industry's obsession with estimation and detailed planning. The management triad relies heavily on sizing, story points, velocity charts, and planning poker to manage risk. Again, they do this because the wider organisation demands a roadmap, not because they enjoy administrative overhead.

But as proponents of the #NoEstimates movement, like Allen Holub, have long pointed out, estimating complex knowledge work is fundamentally flawed. We treat software engineering like bricklaying, assuming that if one brick takes a minute, ten thousand bricks take ten thousand minutes. But we are not laying bricks; we are discovering solutions to previously unsolved problems.

This creates the "Estimation Theatre". We force engineers to sit in lengthy planning sessions, arguing whether a deeply lossy Jira ticket is a 5 or an 8. This ritual provides absolutely zero value to the end user. It does not make the software better, it does not ship it faster, and it certainly does not mitigate risk. What it does is create a false sense of security for the management layer.

Worse still, when these collective guesses inevitably collide with reality, they are suddenly treated as commitments. The resulting pressure forces teams to cut corners, generating yet more technical debt. If we simply broke work down into the smallest possible understandable pieces and counted them, we would achieve the exact same statistical predictability without wasting hours on collective guessing.

## Context Over Coordination

You cannot fix this by arguing about whether SAFe or Scrum is the superior methodology (hint: it's neither!). Process usually masks a lack of trust, and adding a different process will not restore it.

High-performing software development teams do not need more people managing the flow of work; they need the engineers to have higher context of the business problem. We have to collapse these communication layers so that the people building the system are directly aligned with the people using it.

We must prioritise context over coordination.

This means refactoring the organisation itself. Carving out bounded contexts, building small, stream-aligned teams, and giving them direct access to the users without the heavy management triad in the middle.

The future of senior engineering isn't just writing better code; it is designing the team structures that allow the right code to be written in the first place.

---

[:fontawesome-brands-bluesky: Share on Bluesky](https://bsky.app/intent/compose?text={{ page.title | urlencode }} by @mash85.bsky.social {{ page.canonical_url }} {% for tag in page.meta.tags %}%23{{ tag | replace(" ", "") }} {% endfor %}){ .md-button .md-button--primary }

[:fontawesome-brands-linkedin: Share on LinkedIn](https://www.linkedin.com/sharing/share-offsite/?url={{page.canonical_url}}){ .md-button .md-button--primary }

[:fontawesome-brands-x-twitter: Share on Twitter](https://twitter.com/intent/tweet?text={{ page.title | urlencode }}&url={{ page.canonical_url }}&hashtags={% for tag in page.meta.tags %}{{ tag | replace(" ", "") }},{% endfor %}&via=MattShaw85){ .md-button .md-button--primary }
