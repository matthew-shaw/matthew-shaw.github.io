---
date:
  created: 2026-03-28
authors:
  - mash
categories:
  - Software Development
description: AI is not a substitute for foundational software engineering skills.
tags:
  - AI
draft: true
---

# Why AI Won’t Make You a Master Carpenter

When power tools first became readily available, did they suddenly turn everyone into a master carpenter? Of course not. Operating a circular saw still requires the skill, knowledge, and spatial awareness to use the tool competently. Power tools simply sped up the process, reducing manual labour and toil.

With a suite of modern power tools, I can cut up wood, sand it, and screw it together far more quickly than I ever could with a handsaw and a manual screwdriver. But do I know how to design and build a functional, structurally sound armchair? Nope.

<!-- more -->

If I attempt to build that chair relying solely on the speed of my tools rather than a foundational understanding of carpentry, I am more likely to end up with an ugly, uncomfortable, and unsafe piece of furniture. I might even amputate a finger in the process.

With AI-driven software development tooling, the coding process has become infinitely faster, and just as dangerous.

The core problem in software engineering is, as it always has been, a matter of competence, skill, and domain knowledge. Writing the code was never the hard part. As I’ve written previously, AI tools can write your boilerplate and regurgitate common structural patterns all day long. But much like with any creative act, AI cannot have novel "thoughts". It is essentially a spicy autocomplete that does a fantastic impersonation of human-like cognition and understanding.

## The Illusion of Competence

When we hand developers the equivalent of a software power saw, we get faster cuts, but we also get faster amputations. Recent empirical studies are beginning to highlight exactly what those "amputations" look like in a codebase:

- **The Confidence Trap:** A landmark study from Stanford University found that developers using AI assistants actually produced code with more security vulnerabilities (such as SQL injections and encryption flaws) than those working without them. Worse, the AI-assisted developers were significantly more confident that their code was secure.
- **The Death of Refactoring:** GitClear recently analysed over 150 million lines of code to measure AI's impact. They found that in 2024, the volume of "copy/pasted code" exceeded the number of "moved" (refactored) lines for the first time in history. Code churn has skyrocketed, and refactoring has plummeted by over 40%.
- **The Speed Paradox:** A recent randomised controlled trial by METR evaluating experienced open-source developers found that those using AI tools actually took 19% longer to complete complex tasks, largely due to the time spent debugging subtle logic errors the AI introduced.

## Systems Over Syntax

Solving holistic problems will always require novel, human thinking. As software professionals, we need to understand the domain, the legacy environment we are operating within, and the actual people we are solving problems for.

The real challenges we face in large-scale systems are deep-rooted, complex, and intertwined. They require architectural foresight and a deep understanding of how different services, databases, and user needs interact. Relying on AI to solutionise these systemic issues is a fast track to technical debt, missed opportunities, and architectural rot.

## The Case for the Chisel

To return to the workshop, there are times when you absolutely must unplug the power tools. If you are crafting a bespoke piece of furniture, perhaps hand-cutting a delicate dovetail joint or painstakingly restoring a fragile antique, you do not reach for the nail gun. You reach for a chisel. You need tactile feedback, patience, and absolute precision to ensure the highest quality.

The exact same principle applies to software. There are critical areas of our codebases where an AI’s broad-brush approach lacks the necessary finesse. When implementing bespoke, high-stakes domain logic, such as the intricate legal rules governing property records, complex state machines, or cryptographic security layers, a predictive model is a liability. It simply does not understand the nuances or the unique edge cases of your specific domain.

## The Feature Factory Fallacy

The worry is that those less informed are easily dazzled by the sheer speed at which AI generates "functional" code. They assume that is all there is to it, lacking the hard-won engineering experience to understand why we build so much infrastructure around the code itself.

In feature-factory environments where developers are treated merely as code monkeys, it is incredibly tempting for management to believe that typing out the syntax was the primary bottleneck slowing down delivery. In reality, that could not be further from the truth. The bottleneck is, and always has been, understanding what to build, ensuring it scales, and proving that it works.

## Safety guards for the Power Saw

This is exactly why the foundational practices of eXtreme Programming (XP) are more important now than ever. When your tools allow feedback loops to be orders of magnitude shorter, and the volume of generated code skyrockets, simply relying on human review is a recipe for disaster. You cannot manually review your way out of that much noise.

Having robust, repeatable, and comprehensive automated test suites to quickly verify and validate changes is essential. An automated build process that executes these tests and performs continuous structural analysis, including security, performance, and accessibility testing, is what actually gives you the confidence to deploy small changes regularly. These guardrails were always important before AI entered the chat; they are absolutely critical now.

## Finding the Actual Value

That said, there is undeniable value to be found if you understand what the tool is actually built for.

An AI's true strength lies in pattern matching, syntax translation, and predictive modelling. Turn that to your advantage to make data-driven, analytical decisions. Use it to rapidly parse through logs, write tedious unit test boilerplate, or spot anomalies in massive datasets.

Rather than believing AI will magically architect your systems and solve your problems for you, treat it exactly like what it is: a tool in the belt. Just remember, when the only tool you have is a hammer, every problem starts to look like a nail.

---

[:fontawesome-brands-bluesky: Share on Bluesky](https://bsky.app/intent/compose?text={{ page.title | urlencode }} by @mash85.bsky.social {{ page.canonical_url }} {% for tag in page.meta.tags %}%23{{ tag | replace(" ", "") }} {% endfor %}){ .md-button .md-button--primary }

[:fontawesome-brands-linkedin: Share on LinkedIn](https://www.linkedin.com/sharing/share-offsite/?url={{page.canonical_url}}){ .md-button .md-button--primary }

[:fontawesome-brands-x-twitter: Share on Twitter](https://twitter.com/intent/tweet?text={{ page.title | urlencode }}&url={{ page.canonical_url }}&hashtags={% for tag in page.meta.tags %}{{ tag | replace(" ", "") }},{% endfor %}&via=MattShaw85){ .md-button .md-button--primary }
