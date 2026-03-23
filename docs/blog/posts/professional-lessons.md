---
date:
  created: 2026-03-23
authors:
  - mash
categories:
  - Software Development
description: Software Engineering Lessons Beyond Code
tags:
  - Agile
  - Technical Debt
draft: true
---

# Software Engineering Lessons Beyond Code

In over 18 years as a professional software developer, progressing from junior to principal level, I've realised something slightly terrifying: the biggest lessons I've learned have almost nothing to do with writing code.

Here is what _actually_ matters.

<!-- more -->

- **Write less code.** Ideally, write absolutely no code. Every line is a liability and maintenance overhead. In fact, deleting dead code, obsolete features, or whole systems is the most satisfying thing you can do for your software, and your soul.
- **New tools mostly pick the low-hanging fruit.** AI and advanced tooling might write the boilerplate, but they cannot unravel complex business logic or untangle domain requirements.
- **Elegance is useless without readability.** Your beautifully clever solution means absolutely nothing if nobody else on the team can understand it.
- **Complexity is cheap; simplicity is expensive.** Any developer can build a convoluted system. It takes a master to make it look simple.
- **Favour boring technology.** Leave the shiny new frameworks for weekend side projects. Predictability is a competitive advantage.
- **There is nothing more permanent than a temporary fix.** That quick, dirty hack you pushed to unblock the pipeline on a Friday afternoon will outlive us all. Tread carefully.
- **The last person to touch it owns it.** Whether you like it or not, fixing a minor bug in a dusty legacy system makes you the resident expert by default.
- **Always leave it better than you found it.** Apply the Boy Scout rule relentlessly. Tidy up that stray variable, extract that messy function, and update the documentation while you are there.
- **Nobody else cares about tech debt.** The business cares about features. You have to take pride in your craft and carve out the space to keep the house in order yourself.
- **Stop waiting for perfect requirements.** They will always be vague, contradictory, or missing. Nobody actually knows what they want until they see it, so start experimenting wildly and iterate.
- **Estimation is mostly waste.** Stop obsessing over story points and [mythical man-months](https://en.wikipedia.org/wiki/The_Mythical_Man-Month). Focus relentlessly on breaking problems down. Decomposition is where the actual engineering happens.
- **You don't "just write code."** You are an engineer solving complex problems. Act like it. Understand the domain, the costs, and the users.
- **Communication is your core skill.** If you cannot explain the trade-offs of a technical decision to a non-technical stakeholder, the code doesn't matter.
- **Saying "no" is a superpower.** Guard your focus and your time fiercely, or nobody else will respect it.
- **Conway's Law is undefeated.** You will inevitably ship your org chart. If your teams do not talk to each other, your APIs will not either.
- **Process usually masks a lack of trust.** A little process aligns a team; too much process means the organisation doesn't trust its engineers to do their jobs.
- **People rarely change their minds.** You cannot win an argument with pure logic if the other person's ego or job is tied to being right. Refactoring people and culture will always be harder than refactoring code.
- **Titles do not equal leadership.** The real leaders are the ones people quietly flock to when everything is on fire. They give you their time, not their permission, removing roadblocks so you can make the right call yourself.

Ultimately, being an experienced developer isn't about knowing every design pattern or mastering every technology. It is about navigating the reality that software is built by people, for people. It turns out those original four lines of the [Agile Manifesto](https://agilemanifesto.org/) weren't just a methodology; they were a warning.

The tools and the tech stack are the easy parts. The real engineering is everything else.

---

[:fontawesome-brands-bluesky: Share on Bluesky](https://bsky.app/intent/compose?text={{ page.title | urlencode }} by @mash85.bsky.social {{ page.canonical_url }} {% for tag in page.meta.tags %}%23{{ tag | replace(" ", "") }} {% endfor %}){ .md-button .md-button--primary }

[:fontawesome-brands-linkedin: Share on LinkedIn](https://www.linkedin.com/sharing/share-offsite/?url={{page.canonical_url}}){ .md-button .md-button--primary }

[:fontawesome-brands-x-twitter: Share on Twitter](https://twitter.com/intent/tweet?text={{ page.title | urlencode }}&url={{ page.canonical_url }}&hashtags={% for tag in page.meta.tags %}{{ tag | replace(" ", "") }},{% endfor %}&via=MattShaw85){ .md-button .md-button--primary }
