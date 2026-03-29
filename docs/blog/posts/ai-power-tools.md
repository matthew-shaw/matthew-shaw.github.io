---
date:
  created: 2026-03-31
authors:
  - mash
categories:
  - Software Development
description: Why AI is a powerful tool for the competent, but a liability for the unguided.
tags:
  - AI
  - Extreme Programming
draft: true
links:
  - blog/posts/what-matters.md
  - blog/posts/modern-software-delivery.md
---

# AI Won’t Save You From Bad Engineering

When power tools first became widely available, did everyone suddenly become a master carpenter? Of course not. Operating a circular saw still requires the skill, knowledge, and spatial awareness to use the tool competently and safely. Power tools simply sped up the process, reducing manual labour and the physical toil of the job.

With a suite of modern power tools, I can cut up wood, sand it, and screw it together far more quickly than I ever could with a handsaw and a manual screwdriver. But do I know how to design and build a functional, structurally sound armchair? Nope!

<!-- more -->

If I attempt to build that chair relying solely on the speed of my tools rather than a fundamental understanding of carpentry, I am more likely to end up with an ugly, uncomfortable, and unsafe piece of furniture. There's a good chance it collapses the moment someone actually tries to sit on it, and I might even lose a finger in the construction process.

With AI-driven software development tooling, the coding process has become dramatically faster, and, in the wrong hands, significantly more dangerous.

The core problem in software engineering is, and always has been, competence and domain knowledge. Writing the code was never the hard part. As [I've written previously](what-matters.md), AI tools can write your boilerplate and regurgitate common structural patterns all day long. But AI cannot have truely novel or creative "thoughts". It is essentially a spicy autocomplete that does a fantastic impersonation of human-like cognition.

## The Illusion of Competence

When we give software developers the equivalent of a power saw, we get faster cuts, but we also get faster amputations. We now have the ability to introduce subtle bugs at an unprecedented speed and scale. Recent empirical studies are beginning to highlight exactly what those amputations look like in a codebase:

- **The Confidence Trap:** A [study from Stanford University](https://arxiv.org/abs/2211.03622) found that, in their tasks, developers using AI assistants produced code with more security vulnerabilities (such as SQL injections and encryption flaws) than those working without them. Worse, the AI-assisted developers were significantly more confident that their code was secure. It turns out that being confidently wrong is a feature, not a bug.
- **The Death of Refactoring:** [GitClear recently analysed](https://www.gitclear.com/coding_on_copilot_data_shows_ais_downward_pressure_on_code_quality) over 150 million lines of code to measure AI's impact. They found that in 2024, the volume of copy/pasted code exceeded the number of moved (refactored) lines for the first time in history. Code churn has skyrocketed, and refactoring has plummeted.
- **The Speed Paradox:** A recent randomised controlled [trial by METR](https://metr.org/blog/2025-07-10-early-2025-ai-experienced-os-dev-study/) evaluating experienced open-source developers found that those using AI tools actually took 19% longer to complete complex tasks, largely due to the time spent debugging plausible but entirely fictitious logic errors the AI introduced.

## Systems Over Syntax

Real problems still require human judgement. As software professionals, we need to understand the domain, the legacy environment we are operating within, and the actual people we are solving problems for.

The real challenges we face in large-scale systems are deep-rooted, complex, and intertwined. They require architectural foresight and a deep understanding of how different services, databases, and user needs interact. An LLM does not inherently understand your legacy database, or the undocumented architectural decisions made by a contractor in 2014. Relying _blindly_ on AI to solve these systemic issues is a fast track to technical debt and architectural rot. It still requires an experienced human to set the constraints.

## The Case for the Chisel

To return to the workshop analogy, there are times when you absolutely must put down the power tools. If you are cutting a delicate dovetail joint or painstakingly restoring a fragile antique, you do not reach for the nail gun. You reach for a chisel. You need tactile feedback, patience, and absolute precision to ensure the highest quality.

The exact same principle applies to software. There are critical areas of our codebases where an AI's broad-brush, statistically-average approach lacks the necessary finesse. When implementing bespoke, high-stakes domain logic, such as the intricate, centuries-old legal rules governing property records, complex state machines, or cryptographic security, a predictive model left to its own devices is a liability. While an LLM might perfectly scaffold the API endpoint for you, it should not be relied upon to interpret the nuances of land law. It just knows which words usually sit next to each other.

## The Feature Factory Fallacy

The worry is that those less informed are easily dazzled by the sheer speed at which AI generates _"functional"_ code. They assume that is all there is to it, lacking the hard-won engineering experience to understand why we build so much infrastructure around the code itself.

In feature-factory environments where developers are [treated merely as ticket-clearing machines](modern-software-delivery.md#unused-talent), it is incredibly tempting for management to believe that typing out the syntax was the primary bottleneck slowing down delivery. In reality, the bottleneck is, and always has been, understanding what on earth the business actually wants, ensuring it scales, and proving that it works.

## Safety Guards for the Power Saw

This is exactly why the foundational practices of eXtreme Programming (XP) are more important now than ever. When your tools allow feedback loops to be orders of magnitude shorter, and the volume of generated code skyrockets, simply relying on human review is a recipe for disaster. You cannot manually review your way out of that much machine-generated noise without losing your sanity.

Having robust, deterministic, and comprehensive [automated test suites](modern-software-delivery.md#the-technical-system) to quickly verify and validate changes is essential. An automated build process that executes these tests and performs continuous structural analysis, including security, performance, and accessibility testing, is what actually gives you the confidence to deploy small changes regularly. These guardrails were always important before AI entered the chat; they are absolutely critical now.

## Don't drink the Kool-Aid

If you point out the realities of software engineering in the current era, you will inevitably be met with a chorus of _"vibe coders"_ and AI evangelists rushing to defend their shiny new hammer. Let's address some common rebuttals:

- **"But I built a whole app in a weekend without knowing how to code!"** Yes, and with enough gaffer tape and enthusiasm, you can build a go-kart out of a shopping trolley too! That does not mean anyone should trust you to drive it on a motorway in the pouring rain. There is a massive gap between bootstrapping a greenfield CRUD API and maintaining a complex, high-stakes enterprise system.
- **"The _next_ model will be an agent that can reason!"** Ah yes, the tech equivalent of _"jam tomorrow"_. Throwing another trillion parameters at a model makes it a better interpolator, but it does not magically grant it the ability to intuit the unwritten business rules of your domain. It will simply predict the syntax with even greater false confidence. The human is still required to verify if that syntax represents the _truth_.
- **"We will just have the AI write the automated tests!"** Using AI to generate the boilerplate for your test suite is a fantastic use of the tool. However, if you use an AI to write your complex business logic, and then ask that _exact same AI_ to define the behavioural tests to validate it, you have built an echo chamber. It will confidently award itself top marks for flawlessly executing its own hallucinations.

## Finding the Actual Value

That said, there is undeniable value to be found if you understand what the tool is actually built for. We should not ignore power tools just because they are dangerous in the wrong hands.

An AI's true strength lies in pattern matching, syntax translation, and summarisation. Turn that to your advantage. Treat the AI as a tireless pair programmer to rapidly parse through dense server logs, translate an old script from Bash to Python, write tedious unit test boilerplate, or act as a [rubber duck](https://en.wikipedia.org/wiki/Rubber_duck_debugging) when you are stuck on a difficult problem.

Rather than believing AI will magically architect your systems and solve your problems for you, treat it exactly like what it is: a powerful tool in the belt. Just remember, when the only tool you have is a hammer, every problem starts to look like a nail.

---

[:fontawesome-brands-bluesky: Share on Bluesky](https://bsky.app/intent/compose?text={{ page.title | urlencode }} by @mash85.bsky.social {{ page.canonical_url }} {% for tag in page.meta.tags %}%23{{ tag | replace(" ", "") }} {% endfor %}){ .md-button .md-button--primary }

[:fontawesome-brands-linkedin: Share on LinkedIn](https://www.linkedin.com/sharing/share-offsite/?url={{page.canonical_url}}){ .md-button .md-button--primary }

[:fontawesome-brands-x-twitter: Share on Twitter](https://twitter.com/intent/tweet?text={{ page.title | urlencode }}&url={{ page.canonical_url }}&hashtags={% for tag in page.meta.tags %}{{ tag | replace(" ", "") }},{% endfor %}&via=MattShaw85){ .md-button .md-button--primary }
