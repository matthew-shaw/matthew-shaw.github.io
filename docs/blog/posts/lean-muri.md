---
slug: the-root-cause-of-overburden
date:
  created: 2025-11-25
authors:
  - mash
categories:
  - Software Development
description: Uncovering the causes of failure and burnout.
tags:
  - Cognitive Load
  - DevOps
  - Domain-Driven Design
  - Lean
  - Platform Engineering
  - Team Topologies
  - Technical Debt
links:
  - blog/posts/lean-muda.md
  - blog/posts/lean-mura.md
---

# Muri: The Root Cause of Overburden

[Part 1](lean-muda.md) of this series was about recognising waste (_Muda_) and [Part 2](lean-mura.md) was about how uneven flow (_Mura_) creates that waste. This final part is about the force that gives rise to both. The Japanese term _Muri_ (無理) roughly translates to "overburden" or "unreasonable load". In the original Toyota Production System, Muri was physical: asking a worker to lift a box that was too heavy. In modern software delivery, it is the invisible pressure we put on the two load-bearing parts of any technology organisation: the people who change the system and the system they are forced to change.

It's not dramatic, it's not loud and it doesn't announce itself with outages. Muri accumulates slowly and becomes the norm. And because of that, it's the most dangerous of the three.

<!-- more -->

There's a well-known paper called [Boiling Frogs](https://github.com/gchq/BoilingFrogs/blob/master/GCHQ_Boiling_Frogs.pdf) by GCHQ that describes how organisations degrade not through a single catastrophic mistake, but through a gradual series of tiny concessions. A workaround here, an exception there, a deadline accepted "just this once". The water warms degree by degree and no one jumps out. They acclimatise, they adapt and they cope.

Then one day, the system is brittle, the team is exhausted, and delivery feels like wading through treacle, but no one can quite explain how it happened. This is how Muri works.

---

## Overload on People

Software is not manufacturing. Our raw materials are ideas held in human working memory. In knowledge work, burden manifests as cognitive and emotional overload, which we often describe as "burnout", as though it were a personal failing rather than an environmental response.

### Cognitive Load

This is the "brain overburden" of a system that is too complex, too coupled, or too poorly documented for a single human to hold in their head. This high cognitive load is chronic stress. We inflict this on people when we force them to:

- Navigate sprawling "big ball of mud" architectures.
- Constantly shatter their focus with cross-team dependencies and context-switching.
- Understand the entire, complex system just to make one minor change.

It's a direct reflection of a fragmented organisation. As _Conway's Law_ observed decades ago:

> _"Any organisation that designs a system will produce a design whose structure is a copy of the organisation's communication structure"._

If you have siloed "Frontend", "Backend", and "Database" teams for example, you are destined to create a system with high-friction handoffs and a coupled, high-burden architecture. You are, in effect, shipping your org chart.

We can fix this with a modern, sociotechnical toolkit:

- **Domain-Driven Design**: This is our analytical tool. It's how we discover and map the business domains, capabilities and value-streams that matter, defining clear _Bounded Contexts_ that tame the "big ball of mud." It's how we draw the map.
- **Reverse Conway Manoeuvre**: This is our strategy. Instead of letting our bad org chart dictate our bad architecture, we consciously invert it and design good team structures around the good architecture that we want to have.
- **Team Topologies**: This is our operating model. It's the practical "how-to" for executing the manoeuvre, giving us patterns (_Stream-aligned_, _Platform_, etc.) to build teams that have ownership and autonomy over clearly defined domains with a manageable cognitive load.

### A Practical Sociotechnical Approach

If you only try to fix the symptoms with superficial changes you will fail, because it does not touch the root cause: the deep, systemic mismatch between your software architecture and your team structures.

We like to separate "the people stuff" from "the technical stuff" because it's tidier that way. But software architecture and team structure are two expressions of the same underlying system. Therefore, meaningful architectural improvement doesn't begin in diagrams. It begins with team design. This isn't just theory; it's an actionable strategy.

It would be too costly and time consuming to enact this approach for an entire organisation in one big hit. So, although these steps read linearly, in practice they're iterative, overlapping, and most effective when applied to one domain at a time. Pick a single Bounded Context to start with. Don't pick the simplest one, or the smallest one, pick something in the middle, with enough gnarly parts to overcome that will prove the approach is resilient, repeatable and credible.

1. **Map Your Business**: First, stop guessing. Use the analytical tools from **Domain-Driven Design**, like _Event Storming_ or _Context Mapping_, to create a true map of your business value streams. This isn't a technical diagram for engineers; it's a strategic map of what your business actually does and where the natural seams lie. This process reveals your true _Bounded Contexts_.
2. **Define Your Target Architecture**: Once you have your map, you can make the strategic-level decisions. You intentionally design the target architecture that aligns with those _Bounded Contexts_. This blueprint, where services and products have clear, single owners, becomes the model for your new organisation.
3. **Execute the Manoeuvre**: Now, execute the **Reverse Conway Manoeuvre**. This is the leadership act of re-organising your people to match the target blueprint. Use the **Team Topologies** patterns as your guide. Your _Bounded Contexts_ become the mission for new _Stream-aligned_ teams. Common, repetitive work that burdens them is extracted and given to _Platform_ teams. This isn't just moving boxes on an org chart; it's empowering teams with a clear mission and sustainable cognitive load.
4. **Defend the New Boundaries**: A new org chart is useless if you don't defend it. You must rigorously define and protect the interaction modes for your new teams. It can be useful to define a "Team API", not a software interface, but a clear agreement on how the team works, communicates, and accepts requests. This is how you make the change stick. It prevents the old, high-friction patterns of communication and dependency from creeping back in, ensuring your new, low-stress, high-flow state is sustainable.

This plan is a fundamental, sociotechnical operation. This is hard, expensive, and political work, but it's unavoidable.

### Psychological Safety

The sociotechnical plan above will not work if you do not simultaneously address "emotional overburden". This is the pervasive anxiety generated by a culture of low psychological safety. It is just as important as balancing cognitive load, if not more so, because people that don't feel safe will not engage with profound organisational change, and change requires trust.

That plan _requires_ individuals to do things that would make them feel vulnerable in a low-trust environment:

- **Be honest** about how things _really_ work.
- **Challenge** existing boundaries, power structures, and "the way we've always done things".
- **Admit ignorance** and ask "stupid" questions.
- **Debate and disagree** (respectfully) with colleagues and managers.

The Accelerate and DORA research provides strong evidence for this. A culture of fear and blame, where people are punished for failures, unreasonable deadlines are normalised, or raising concerns is seen as "negative", is a significant predictor of low performance.

This culture is a factory for anxiety. When people are constantly afraid of making a mistake, of being blamed, or of not looking "100% busy", their mental health deteriorates. They live in a constant state of fight-or-flight, which is fundamentally incompatible with the creative, complex problem-solving our work requires.

This is the breeding ground for "hero culture", where individuals are praised for surviving unsustainable pressure. But this heroism only proves that the organisation has already failed them.

## Overload on Systems

The other half of Muri is the overburden we place on our systems. The most common name for this is _Technical Debt_.

This is frequently misunderstood as "old code", or even just "someone else's code". It isn't. It's the accumulation of shortcuts, compromises, or outdated assumptions - sometimes made under pressure, sometimes simply made with limited information - that increase the cost or risk of future change.

It's what happens when we optimise for delivery speed in the short term, at the expense of resilience and maintainability in the long term. The codebase remembers every time we said, "We'll clean this up later". But later rarely comes. Over time, these choices form a fossil record of the organisation's priorities and stress patterns.

We can fix this by absorbing, removing and preventing it.

### Platform Engineering

In a high-load organisation, every stream-aligned team is burdened with reinventing the wheel. They must solve for infrastructure, compliance, security, and delivery in addition to their core mission.

This is the overburden of figuring out complex cloud-native tooling, navigating a security sign-off process, or manually building a monitoring dashboard just to get a new service live. It's the friction that grinds delivery to a halt.

A good internal developer platform is treated as an internal product and served by a Platform Team (as defined in **Team Topologies**). Its purpose is to reduce the cross-cutting cognitive load and present it to stream-aligned teams as a set of simple, self-service tools and APIs.

The goal is to pave a low-friction path to production. A developer shouldn't have to become an expert in container orchestration, infrastructure-as-code, or observability just to ship a feature. They should be able to consume these as reliable services, allowing them to focus all their cognitive energy on solving problems and delivering user value.

### Continuous Refactoring

Continuous Refactoring is the act of paying technical debt back, not in a single "big bang" project, but as a small, daily, professional practice.

This is the core discipline of **Extreme Programming**: leaving the code cleaner than you found it. Kent Beck's recent work, _Tidy First?_, gives a modern name to this practice: it's the art of making small, safe, tidying changes before adding new features, to ensure development speed is sustainable. It requires an organisational commitment to allocate capacity for this work and making technical debt removal a constant and sustainable activity.

### Evolutionary Architecture

This is the strategic mindset that prevents future overburden. An evolutionary architecture is one _designed_ to change. Instead of a brittle plan (or Big Up Front Design), it is a system protected by automated guardrails called _Fitness Functions_; a suite of tests that continuously verify critical architectural characteristics like performance, security, or module dependencies.

This is the modern, automated, and living implementation of what we used to call "Non-Functional Requirements". Instead of a requirement being a forgotten line in a document, it becomes an automated test that prevents systemic debt from accumulating. This allows the system to evolve safely and independently, creating an environment where small, safe changes are always possible.

## The Anti-Patterns

The uncomfortable truth is that we actively create and institutionalise overburden through our own processes and anti-patterns, often in the name of "efficiency" or "control".

### Estimation as Commitment

This is the most common and toxic way managers create unreasonable pressure. An estimate is a guess, a statement of probability, at best. A commitment is a promise. Turning a guess into a promise by default is an act of applying unreasonable, arbitrary load. This single act forces teams to cut corners (creating [Defects](lean-muda.md#7-defects)), work in unsustainable "crunch" cycles, and ultimately causes burn out.

### Productivity Paranoia

This unintentionally generates mistrust. It's the desire to make sure developers are busy, often by measuring counter-productive metrics like "lines of code", "story points delivered", or "JIRA tickets closed."

This practice is a perfect example of _Goodhart's Law_:

> _"When a measure becomes a target, it ceases to be a good measure"._

This forces teams into performative work only to satisfy the metrics. It creates immense, unreasonable pressure to prioritise the visible and measurable over the important and sustainable. Teams stop doing the invisible, preventative work (like refactoring or documentation) because it doesn't "count", thus accumulating more systemic burden and technical debt.

### Hero Culture

Hero Culture is what happens when chronic overload becomes normal and the organisation quietly begins to rely on individuals who can absorb unreasonable load through personal sacrifice. The late-night deployment, the weekend fix, the 2am incident save, these become celebrated behaviours.

Hero Culture is seductive because it feels like excellence. But it is actually the loudest symptom of failure: a system that only works when someone suffers. And because heroism "works" in the short term, it prevents leadership from seeing the real problem: the system is overburdened, brittle, and unsustainable. Heroes are not a strength. They are a warning sign.

## These Ideas Are Not For Sale

Obviously, the core ideas in this series are not uniquely mine. They have been articulated before, clearly and generously, by practitioners and researchers who have been solving these problems for decades. What I have tried to do is consolidate them in context, highlighting modern practices and methods that have emerged as industry leading since the Poppendiecks' original work on Lean Software Development.

What makes these ideas so accessible is that their source texts aren't trying to sell you anything. They are not frameworks. They do not come with a mandatory certification path, a five-day training plan, proprietary toolchains, or a lucrative consultancy engagement. They are simply good ideas. Many aren't even new; we've had the playbook for more than two decades.

They have been tested, refined, and over time, _empirically proven_ to be the foundations of high-performing, sustainable, and _humane_ technology organisations. They still hold up today, because they were grounded in reality to begin with.

## Conclusion

_Muri_ is the root cause, the "boiling frog" that normalises overload until it's too late. Because it is the root cause, it cannot be solved with a new tool, a dashboard, or a superficial "transformation".

We can now see the complete chain of events: Overload (Muri) causes Irregularity ([Mura](lean-mura.md)) which causes Waste ([Muda](lean-muda.md)).

The solutions are fundamental and sociotechnical. You must solve the two primary sources of overburden:

1. **For People**: This requires the deep, structural work of mapping your business domains (**Domain-Driven Design**) and fundamentally redesigning your teams (**Team Topologies**, **Reverse Conway**) to have a manageable, autonomous scope.
2. **For Systems**: This requires a toolkit of absorbers (**Platform Engineering**), removers (**Continuous Refactoring**), and preventers (**Evolutionary Architecture**).

## The Choice You Can No Longer Ignore

This is not just a theory; this is a practical diagnostic toolkit. You can use it to see the waste, measure the flow, and identify the sources of overload that are slowly burning out your people and corroding your systems.

And it leaves every single person reading this with a choice...

**For teams**, the choice is to stop normalising the pain. Stop accepting unreasonable load as "just part of the job". You are not a "hero" for surviving burnout; you're operating inside a system that makes heroism necessary. The modern practices in this series are not "nice-to-haves". They are essential professional tools. Start using them. Demand the time to use them. Prove their value by showing that they _really work_.

**For leaders**, the choice is more profound. You are the only ones who have the leverage to fix the system. You can fund a platform. You can sponsor a sociotechnical action plan. You can build a culture of psychological safety that eliminates fear. You can choose to measure outcomes and sustainability, not just activity and output.

The alternative is to keep adding more governance, processes, planning, coordination, ceremonies, frameworks, tooling, committees, dashboards, and transformation programmes.

But make no mistake: you are just rearranging the deck chairs on the Titanic.

## Recommended Reading

- **Accelerate**: The Science of Lean Software and DevOps (Nicole Forsgren, Jez Humble, Gene Kim)
- **Continuous Delivery**: Reliable Software Releases through Build, Test, and Deployment Automation (Jez Humble, David Farley)
- **Domain-Driven Design**: Tackling Complexity in the Heart of Software (Eric Evans)
- **Extreme Programming Explained**: Embrace Change (Kent Beck)
- **Lean Software Development**: An Agile Toolkit (Mary Poppendieck, Tom Poppendieck)
- **Team Topologies**: Organizing Business and Technology Teams for Fast Flow (Matthew Skelton, Manuel Pais)
- **The DevOps Handbook**: How to Create World-Class Agility, Reliability, & Security in Technology Organizations (Gene Kim, Jez Humble, Patrick Debois, John Willis)
- **Tidy First?**: A Guide to Sustainable Software Design (Kent Beck)

> The ideas, structure, and all final arguments and conclusions in this article are my own. As part of my research and revision workflow, I have used AI tools to accelerate drafting and language refinement.

---

[:fontawesome-brands-bluesky: Share on Bluesky](https://bsky.app/intent/compose?text={{ page.title | urlencode }} by @mash85.bsky.social {{ page.canonical_url }} {% for tag in page.meta.tags %}%23{{ tag | replace(" ", "") }} {% endfor %}){ .md-button .md-button--primary }

[:fontawesome-brands-linkedin: Share on LinkedIn](https://www.linkedin.com/sharing/share-offsite/?url={{page.canonical_url}}){ .md-button .md-button--primary }

[:fontawesome-brands-x-twitter: Share on Twitter](https://twitter.com/intent/tweet?text={{ page.title | urlencode }}&url={{ page.canonical_url }}&hashtags={% for tag in page.meta.tags %}{{ tag | replace(" ", "") }},{% endfor %}&via=MattShaw85){ .md-button .md-button--primary }
