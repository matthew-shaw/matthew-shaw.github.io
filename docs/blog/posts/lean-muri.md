---
draft: true
slug: the-root-cause-of-overburden
date:
  created: 2025-12-31
authors:
  - mash
categories:
  - Software Development
description: Uncovering the causes of failure and burnout.
tags:
  - Agile
  - Continuous Delivery
  - DevOps
  - DORA
  - Lean
  - Platform Engineering
  - Team Topologies
---

# Muri: The Root Cause of Overburden

In the first two parts of this series, we explored waste (Muda) and unevenness (Mura) in modern software delivery. Waste is visible: delays, rework, handoffs, defects. Mura explains why these patterns emerge: work flows unevenly, surging and stalling unpredictably.

But we have not yet reached the root cause. Muri (無理), meaning "overburden" or "overstrain", is the condition that forces teams into uneven flow. It is the pressure to do “more” with the same people, the same systems, and the same time. It is the moment where capacity is exceeded, safety nets disappear, and shortcuts become survival tactics.

Muri doesn’t just slow delivery. It breaks systems, burns out teams, and guarantees failure modes. If Mura is the shape of the problem, Muri is the force that shapes it.

<!-- more -->

> This post is the final part of a three-part series:
>
> 1. [**Muda: The Eight Wastes of Modern Software Delivery**](lean-muda.md) - Identifying the _symptoms_ of inefficiency.
> 2. [**Mura: The Source of Uneven Flow**](lean-mura.md) - Diagnosing the _patterns_ that create waste.
> 3. **Muri: The Root of Overburden** _(You are here)_ - Uncovering the _causes_ of failure and burnout.

---

Part 3: The "Overburden" Essay

Your thesis for this post: "Muri (overburden) is the root cause of failure. In modern software, it manifests as unsustainable pressure on our people (Cognitive Load & Fear) and our systems (Technical Debt)."

This is the "human + systems" post. It's the "why" behind everything.

Title: Muri: Curing Software's Root Cause—Overburdening People and Systems

Outline:

Introduction:

    Recap: We've seen the symptoms (Muda) and diagnosed the pattern (Mura). Now, we find the root cause.

    Muri (overburden) is the pressure that creates the unevenness in the first place.

    This is the post about sustainability. Muri in TPS was lifting a heavy box. Muri in software is far more insidious.

Section 1: Muri on People – Cognitive Load & Psychological Safety

    The Modern Link (Cognitive Load): This is your most novel point. Muri is Cognitive Load. It's the "brain overburden" of a system that's too complex, too coupled, or too poorly documented.

    The specific, modern cure is Team Topologies. It is a framework designed to manage Muri (Cognitive Load) by creating clear boundaries and team-first APIs.

    The Modern Link (Culture): Muri is also fear. This is your Psychological Safety argument. The Accelerate research gives you the evidence that Muri (as a "culture of fear" or "blame culture") is a direct predictor of low performance.

Section 2: Muri on Systems – The Truth About Technical Debt

    This is the other half of Muri. It's the system itself being overburdened.

    What Tech Debt Is: A direct result of Muri. It's the accumulated friction from past decisions made under pressure. It's the system fighting back.

    What Tech Debt Isn't: It's not "old code" or "legacy." It's not an excuse. It's a liability on the balance sheet that manifests as future Muri (overburden) for every developer who touches it.

    The specific, modern cure is Platform Engineering. A good platform absorbs Muri (complexity) so that stream-aligned teams can work in a low-Muri, low-cognitive-load environment.

Section 3: The "Muri-Generators" (The Anti-Patterns)

    SAFe (Scaled Agile Framework): This is your prime target. It claims to manage complexity but is Muri. It generates massive overburden through process, ceremony, coordination, and dependencies.

    Big Up-Front Design (BUFD): The definition of Muri. An attempt to solve an impossibly complex problem (the future) up-front, creating a brittle, overburdened plan that will shatter on contact with reality.

    Estimation as Commitment: Turning an estimate (a guess) into a deadline (a promise) is the most common, toxic way managers create Muri.

Grand Conclusion (For the Whole Trilogy):

    This is where you land your final argument.

    "The methods, practices, and measures of modern software engineering are not a 'shiny object' checklist."

    "They are a set of specific cures for specific diseases."

    DORA and Flow Metrics are your diagnostic kit to see Mura.

    Kanban, WIP Limits, and CI/CD are your cures for Mura.

    Team Topologies, Platform Engineering, and a culture of Psychological Safety are your cures for Muri.

    "Stop adopting 'Agile.' Stop 'installing SAFe.' Start by identifying your waste (Muda), measuring your flow (Mura), and relentlessly curing the overburden (Muri) that causes it all."

    The alternative is to keep rearranging the deck chairs on the Titanic, while the iceberg rips a hole in the hull.

This structure makes your series an authoritative, evidence-based, and highly valuable contribution that truly advances the conversation for Lean-literate and new readers alike.

Working Title

Muri: The Root of Overburden – Why Systems and People Break

Introduction / Hook

Recap the series briefly:

Part 1: Muda → Symptoms (waste)

Part 2: Mura → Patterns (unevenness / flow problems)

Part 3: Muri → Root Causes (overburden / systemic pressure)

Hook: Show urgency and relevance. Example:

“All the waste (Muda) and chaos (Mura) we’ve seen are just symptoms. The true cause is Muri—overburden on people, teams, and systems. Ignore it, and even the best practices fail.”

Emphasize stakes:

Burnout, turnover, technical debt, low morale, failed initiatives.

Real-world example: government or enterprise IT teams forced to hit release targets with insufficient capacity.

1. Define Muri (Overburden)

Japanese meaning: 過重 (excessive, overburdened)

Concept: Overloading people or systems beyond their natural capacity → leads to Mura (unevenness) → leads to Muda (waste)

Key point: Muri is often invisible until it manifests as defects, delays, or frustration.

2. Types of Muri
A. Human Muri

Overloading individuals: too many tasks, unrealistic deadlines, conflicting priorities

Cognitive load: context switching, multitasking, long meeting-heavy schedules

Burnout, disengagement, attrition

Example: Developer assigned 3 concurrent projects while sprint goals demand full focus

Evidence:

DORA research: high WIP correlates with increased Lead Time and Change Failure Rate

Psychological safety studies: overburden reduces learning, innovation, and quality

B. System / Technical Muri

Over-complicated architectures: legacy tech, convoluted dependencies, brittle pipelines

Manual processes that require constant human intervention

“Too many approvals,” long deployment chains, lack of automation

Evidence: Studies on technical debt, Conway’s Law showing that rigid structures increase overburden

C. Organizational / Process Muri

Overly complex governance, compliance, or reporting requirements

Conflicting priorities across teams / departments

Excessive process hand-offs (classic bureaucracy)

Example: government or large enterprise where “approval layers” create invisible stress on teams

3. How Muri Generates Mura and Muda

Cause-and-effect mapping:

Muri → Mura: Overburdened teams lead to uneven work pace, stop-start cycles

Mura → Muda: Uneven flow causes defects, waiting, and inventory

Visual idea: diagram showing cascading effect: Muri → Mura → Muda

4. Detection / Signs of Muri

High variability in Lead Time or Deployment Frequency (even with pull systems in place)

Rising defect count despite good practices

Teams consistently working overtime or reporting low morale

WIP creeping despite WIP limits

Evidence/examples: real-world telemetry, DORA metrics, burnout surveys

5. Countermeasures / Solutions

Focus on reducing overburden at the source, not just managing symptoms.

A. Human-centric

Limit WIP per person, not just per team

Clear prioritization: one work item at a time where possible

Encourage realistic planning & buffer for unexpected work

Protect focus time, reduce unnecessary meetings

B. Technical / System

Invest in automation (CI/CD, IaC, platform engineering)

Simplify architecture: reduce dependencies, embrace modularity

Refactor and pay down technical debt continuously

Reduce manual hand-offs in processes (testing, deployments)

C. Organizational / Process

Clarify roles and responsibilities

Reduce conflicting incentives (e.g., dev vs ops)

Empower teams to say “no” or reprioritize work

Align metrics and goals with value creation, not just activity

D. Cultural

Psychological safety: people feel safe to push back on overcommitment

Continuous learning: reward improvements in flow, quality, and stability

Leadership support: executives understand the systemic nature of overburden

6. Evidence / Examples

Case studies of overburdened teams achieving high Mura and Muda

Evidence from DORA metrics showing impact of WIP and cognitive load

Examples from public sector IT: multi-layer approval chains, mandatory reporting, backlog bloat, unrealistic sprint commitments

Optional: a mini narrative or hypothetical scenario to illustrate the cascading effects

7. Key Takeaways

Muri is the root cause, not just a symptom

Even perfect Kanban, XP, or Continuous Delivery practices will fail if the system is overburdened

Measuring Mura and Muda gives visibility, but solving Muri requires cultural, technical, and organizational interventions

Overburden is systemic: tackling it improves flow, quality, and team sustainability

8. Call-to-Action / Closing

Encourage readers to start diagnosing Muri in their teams: look for signs of overburden, talk to people, audit systems

Tease a potential follow-up (e.g., “Next, we’ll explore how high-performing teams sustain low Muri over time and what leadership can do to support it.”)

Optional: link back to parts 1 & 2 for continuity

Tone / Style Notes

Punchy, real-world examples help. Public sector references will make it relatable.

Keep evidence-driven tone, but use small, vivid narratives to illustrate abstract concepts.

Maintain the “symptoms → patterns → root cause” arc: everything leads back to Muri as the systemic driver.

> The ideas, structure, and all final arguments and conclusions in this article are my own. As part of my research and revision workflow, I have used AI tools to accelerate drafting and language refinement.

---

[:fontawesome-brands-bluesky: Share on Bluesky](https://bsky.app/intent/compose?text={{ page.title | urlencode }} by @mash85.bsky.social {{ page.canonical_url }} {% for tag in page.meta.tags %}%23{{ tag | replace(" ", "") }} {% endfor %}){ .md-button .md-button--primary }

[:fontawesome-brands-x-twitter: Share on Twitter](https://twitter.com/intent/tweet?text={{ page.title | urlencode }}&url={{ page.canonical_url }}&hashtags={% for tag in page.meta.tags %}{{ tag | replace(" ", "") }},{% endfor %}&via=MattShaw85){ .md-button .md-button--primary }
