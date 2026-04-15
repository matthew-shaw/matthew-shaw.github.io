---
date:
  created: 2026-04-15
authors:
  - mash
categories:
  - Software Development
description: Why Coordination is Killing Engineering Context
tags:
  - Agile
  - Engineering Culture
  - Leadership
  - Software Delivery
  - Technical Debt
links:
  - blog/posts/what-matters.md
  - blog/posts/modern-software-delivery.md
draft: true
---

# The Predictability Paradox

A common observation across the tech industry perfectly encapsulates the state of modern software delivery:

> _"Scrum and Kanban are basically the same, apart from the sprints."_

It is a bit like saying a manual and an automatic car are identical, apart from the gear stick. It reveals a fundamental misunderstanding of the machinery underneath. More importantly, it highlights the exact trap that large, risk-averse enterprises fall into when trying to scale their technology teams.

<!-- more -->

What usually follows is the adoption of heavy, bureaucratic frameworks sprinkled with just enough terminology to _sound_ modern. Or worse, cherry-picking parts from multiple methodologies while ignoring their underlying principles. The result is a deeply dysfunctional ["Franken-Agile" environment](modern-software-delivery.md#the-illusion-of-agility) that operates as "Agile In Name Only" (AINO).

In our pursuit of safety, we have stopped _engineering_ software and instead simply try to _manage_ it under the false pretence of predictability.

## The Coordination Trap

As technology organisations scale, their default response to managing risk is to surround engineering teams with more coordinators: Product Managers, Project Managers, and Delivery Managers.

This comes from a place of good intentions. Nobody adds to the administrative process maliciously. Most people in these roles are doing their best within the system they've been given. The problem is the structure itself. By dividing the "What" (Product), the "When" (Project), and the "How" (Delivery) across different disciplines, the holistic context of the system is shattered.

Software development is not a deterministic manufacturing process. It is a mix of engineering, design, and discovery. The paradox is that by over-investing in coordination in an attempt to control the timeline, we accidentally destroy the one thing engineers need to build resilient systems: _context_.

## The Translation Tax

This structural decoupling creates a massive, hidden economic burden on senior technical staff.

To make matters worse, the industry often staffs these management layers with individuals who, while highly capable, lack foundational software engineering experience. Because their roles do not write code, fix production bugs, or configure deployment pipelines, their primary lever for influence becomes governance. Process becomes the safest thing to lean on because they have been decoupled from value creation.

In an enterprise's quest for excessive safety, this governance layer inadvertently acts as a vacuum, sucking up the time and [cognitive load](modern-software-delivery.md#cognitive-load) of the software engineers. Instead of designing architecture or tackling systemic complexity, tech leads are forced to function as human translation layers. They spend their days converting complex engineering reality into simplified, framework-friendly language to justify why a feature takes time to build properly.

## The Permission Anti-Pattern

This dynamic creates what is essentially a permission anti-pattern. A software engineer should not have to ask permission to upgrade outdated dependencies, refactor a brittle component, or secure a vulnerable endpoint. These are not discretionary features to be negotiated in a backlog; they are the non-negotiable baseline of our profession. Engineers must be _trusted_ to make these changes as part of their normal professional responsibility.

Yet, when the reality of engineering a resilient system inevitably clashes with a predetermined delivery date on an idealised Gantt chart, the burden of proof is immediately shifted to the developer. Having to constantly defend the fundamentals of good practice to a management layer that does not deeply understand the domain creates severe systemic friction. It signals an operating model that defaults to command-and-control rather than trusting engineering professionalism.

Every layer placed between the user's problem and the engineer writing the code degrades the engineering context, forcing the engineer to spend far less time solving complex technical problems and far more time navigating bureaucracy.

## The Clean Handoff Myth

Large enterprises love cleanly defined management roles because they assume information can be handed off losslessly. The Product Manager gathers requirements, the Project Manager plans the timeline, and the Delivery Manager ensures it gets done on time. Each role is a neat box with clear responsibilities.

This is the clean handoff myth. A Jira ticket is a deeply lossy format for exchanging information. You simply cannot capture the nuance of legacy technical debt, brittle architectural boundaries, or complex domain logic within a user story's acceptance criteria.

When we rely on cleanly separated management roles to hand information over to developers, we aren't creating efficiency. We are just paying an expensive tax on the context. The release train might arrive exactly on schedule, but because the context was lost in the handoffs, it is usually just delivering more [technical debt](modern-software-delivery.md#overload-on-systems) on time.

## The Estimation Theatre

Nowhere is the predictability paradox more visible than in the industry's obsession with estimation and detailed planning. The management triad relies heavily on sizing, story points, velocity charts, and planning poker to manage risk. They do this because the wider organisation demands a roadmap and timeboxed budgets, not because they enjoy administrative overhead.

But as proponents of [the #NoEstimates movement](https://youtu.be/QVBlnCTu9Ms) have long pointed out, estimating complex knowledge work is fundamentally flawed and [is mostly waste](what-matters.md). We treat software engineering like bricklaying, assuming that if one brick takes a minute, ten thousand bricks take ten thousand minutes. But we are not laying bricks; we are discovering solutions to previously unsolved problems.

This creates the estimation theatre, where we force engineers to sit in lengthy planning sessions, arguing whether a deeply lossy Jira ticket is a 5 or an 8. This ritual provides zero value to the end user. It does not improve the software. It does not make delivery faster. It does not meaningfully reduce risk. All it really does is create a false sense of certainty for the management layer.

Worse, when these collective guesses inevitably collide with reality, they are suddenly treated as commitments. The resulting pressure forces teams to cut corners, generating yet more technical debt. If we simply broke work down into the smallest possible understandable pieces and counted them, we would achieve more reliable forecasting through smaller batch sizes and shorter feedback loops.

## Context Over Coordination

You cannot fix this by arguing about whether SAFe or Scrum is the superior methodology (it's neither!). As I have written previously, [process usually masks a lack of trust](what-matters.md), and adding a different process will not restore it.

High-performing software development teams do not need more people managing the flow of work; they need the engineers to have greater context of the business problem. We must collapse these communication layers so that the people building the system are directly aligned with the people using it.

In short, we must **prioritise context over coordination**.

This means [refactoring the organisation itself](modern-software-delivery.md#a-practical-sociotechnical-plan). Carving out [bounded contexts](https://martinfowler.com/bliki/BoundedContext.html), building small, [stream-aligned teams](https://teamtopologies.com/key-concepts), and giving them direct access to the users without the heavy management triad in the middle.

The future of engineering leadership isn't writing better code; it's designing the environment that makes good code possible.

--8<-- "includes/disclaimer.md"
