---
date:
  created: 2026-05-13
authors:
  - mash
categories:
  - Software Development
description: Agile Without XP is Just Micromanagement
tags:
  - XP
  - Agile
  - Continuous Delivery
  - TDD
links:
  - blog/posts/what-matters.md
  - blog/posts/modern-software-delivery.md
  - blog/posts/predictability-paradox.md
draft: true
---

# The XP Prerequisite

<!-- more -->

The industry has spent two decades arguing over Scrum versus SAFe, completely ignoring the fact that process frameworks only manage the flow of work; they do absolutely nothing to manage the quality of the code.

The core argument: You cannot manage your way out of bad engineering. You could argue that adopting an Agile framework without implementing Extreme Programming (XP) practices is like putting a Formula 1 spoiler on a broken tractor. It might look fast on a spreadsheet, but it is fundamentally incapable of moving safely at speed.

- Continuous Delivery requires Continuous Testing: You cannot have a two-week sprint if it takes three weeks of manual regression testing to validate a release. TDD (Test-Driven Development) and comprehensive automation are non-negotiable.

- Small Batches require Psychological Safety: Developers won't push small, incremental changes if the deployment pipeline is brittle and failure is punished. Pairing and robust CI/CD are what actually provide the safety net to move quickly.

- The Framework Fallacy: The reason heavy frameworks fail is that they try to compensate for a lack of engineering discipline with excessive governance. If your technical baseline is built on XP, the need for heavy management oversight evaporates.

Tie together the "Predictability Paradox" and the safety guardrails needed for AI, proving that the old-school XP disciplines are actually the most modern, essential practices we have.

--8<-- "includes/disclaimer.md"
