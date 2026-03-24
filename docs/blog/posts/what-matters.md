---
date:
  created: 2026-03-24
authors:
  - mash
categories:
  - Software Development
description: 18 Years of Life Lessons Beyond the Code
tags:
  - Agile
  - Leadership
  - Technical Debt
---

# What Actually Matters in Software Engineering

In 18 years of professional software development, from junior to principal, the hardest problems I’ve dealt with were rarely technical. They were about people, trade-offs, and judgement.

Here is what I think _actually_ matters...

<!-- more -->

- **Write less code.** Ideally, write absolutely no code. Every line is a liability and maintenance overhead. In fact, deleting dead code, obsolete features, or whole systems is the most satisfying thing you can do for your software, and your soul.
- **New tools mostly pick the low-hanging fruit.** AI and advanced tooling can write your boilerplate, but they cannot unravel complex business logic or untangle a stakeholder who doesn't understand what they want.
- **Elegance is useless without readability.** Your beautifully clever one-liner means absolutely nothing if the rest of the team needs a whiteboard to understand it. Code is read far more than it is written.
- **Complexity is cheap; simplicity is expensive.** Any developer can build a convoluted system. Making it simple is where the real skill, and time, goes.
- **Favour boring technology.** Leave the shiny new frameworks for your weekend side projects. In production, predictability is a competitive advantage.
- **There is nothing more permanent than a temporary fix.** That quick, dirty hack you pushed to unblock the pipeline on a Friday afternoon will outlive us all. Tread carefully.
- **The last person to touch it owns it.** Whether you like it or not, fixing a minor bug in a dusty legacy system makes you the resident expert by default.
- **Always leave it better than you found it.** Apply the Boy Scout rule relentlessly. Tidy up that stray variable, extract that messy function, and update the documentation while you are there. Small improvements compound.
- **Nobody else cares about tech debt.** The business will almost always prioritise what’s visible. You have to take pride in your craft and make space to keep the house in order yourself.
- **Stop waiting for perfect requirements.** They will always be vague, contradictory, or missing. Nobody actually knows what they want until they see it, so build something small, learn fast, and adjust.
- **Estimation is mostly waste.** Stop obsessing over [story points](https://ronjeffries.com/articles/019-01ff/story-points/Index.html) and [mythical man-months](https://en.wikipedia.org/wiki/The_Mythical_Man-Month). The real engineering is in breaking problems down until they’re actually understandable.
- **You don't "just write code."** You are an engineer solving complex problems. Act like it. Understand the domain, the costs, and the users.
- **Communication is the job.** If you cannot explain the trade-offs of a technical decision to a non-technical stakeholder, the code doesn't matter.
- **Saying "no" is a survival skill.** Guard your focus and your time fiercely, or nobody else will respect it.
- **[Conway's Law](https://en.wikipedia.org/wiki/Conway%27s_law) is undefeated.** Your systems will mirror your org chart whether you planned it or not. If your teams do not talk to each other, your APIs will not either.
- **Process usually masks a lack of trust.** A little process aligns a team; too much process means the organisation doesn't trust its engineers to do their jobs.
- **People rarely change their minds.** You cannot win an argument with pure logic if the other person's ego or job is tied to being right. Refactoring people and culture is the hardest legacy system you’ll ever work on.
- **Titles do not equal leadership.** The real leaders are the ones people quietly turn to when things go wrong. They give you their time, not their permission, removing roadblocks so you can make the right call yourself.

Ultimately, being a seasoned developer isn't about knowing every design pattern or mastering every technology. It's about navigating the reality that software is built by people, for people. Those original four lines of the [Agile Manifesto](https://agilemanifesto.org/) weren't just guidance; they were a warning.

The tools and the tech stack are the easy part.

The real engineering is everything else.

---

[:fontawesome-brands-bluesky: Share on Bluesky](https://bsky.app/intent/compose?text={{ page.title | urlencode }} by @mash85.bsky.social {{ page.canonical_url }} {% for tag in page.meta.tags %}%23{{ tag | replace(" ", "") }} {% endfor %}){ .md-button .md-button--primary }

[:fontawesome-brands-linkedin: Share on LinkedIn](https://www.linkedin.com/sharing/share-offsite/?url={{page.canonical_url}}){ .md-button .md-button--primary }

[:fontawesome-brands-x-twitter: Share on Twitter](https://twitter.com/intent/tweet?text={{ page.title | urlencode }}&url={{ page.canonical_url }}&hashtags={% for tag in page.meta.tags %}{{ tag | replace(" ", "") }},{% endfor %}&via=MattShaw85){ .md-button .md-button--primary }
