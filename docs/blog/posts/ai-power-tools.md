---
date:
  created: 2026-03-31
  updated: 2026-04-08
authors:
  - mash
categories:
  - Software Development
description: Why AI is a powerful tool for the competent, but a liability for the unguided.
tags:
  - Artificial Intelligence
  - Code Quality
  - Engineering Culture
  - Software Architecture
  - Technical Debt
links:
  - blog/posts/what-matters.md
  - blog/posts/modern-software-delivery.md
---

# AI Won't Save You From Bad Engineering

When power tools first became widely available, did everyone suddenly become a master carpenter? Of course not. Operating a circular saw still requires the skill and knowledge to use the tool competently and safely. Power tools simply sped up the process, reducing manual labour and the physical toil of the job.

With a set of modern power tools, I can cut wood, sand it, and assemble something far quicker than I ever could by hand. But does that mean I know how to design and build a functional, structurally sound armchair? No, and that difference matters.

<!-- more -->

If I attempt to build that chair relying solely on the speed of my tools rather than a fundamental understanding of carpentry, I am more likely to end up with an ugly, uncomfortable, and unsafe piece of furniture. There's a good chance it will collapse the moment someone sits on it.

With AI-driven software development tooling, the coding process has become dramatically faster, and, in the wrong hands, potentially more dangerous.

Two of the core problems in software engineering are, and always have been, competence and domain knowledge. Writing the code was never the hard part. As [I've written previously](what-matters.md), AI tools can write your boilerplate and regurgitate common structural patterns all day long. But it doesn't understand your system; it just predicts patterns that _look_ correct. It is essentially a spicy autocomplete that does a fantastic impersonation of human-like cognition.

## The Illusion of Competence

When we give software developers the equivalent of a power tool, we amplify output, not understanding. We now have the ability to introduce subtle bugs at a much higher rate. Recent empirical studies are beginning to highlight the impact this has on code quality and security:

- **The Confidence Trap:** A [study from Stanford University](https://arxiv.org/abs/2211.03622) found that, in their tasks, developers using AI assistants produced code with more security vulnerabilities (such as SQL injections and encryption flaws) than those working without them. Worse, the AI-assisted developers were significantly more confident that their code was secure. It turns out that being confidently wrong is a feature, not a bug.
- **The Death of Refactoring:** [GitClear recently analysed](https://www.gitclear.com/coding_on_copilot_data_shows_ais_downward_pressure_on_code_quality) over 150 million lines of code to measure AI's impact. They found that in 2024, the volume of "copy/pasted code" exceeded the number of moved lines, showing that code churn has increased significantly, while [refactoring](https://en.wikipedia.org/wiki/Code_refactoring) has decreased.
- **The Speed Paradox:** A recent randomised controlled [trial by METR](https://metr.org/blog/2025-07-10-early-2025-ai-experienced-os-dev-study/) evaluating experienced open-source developers found that those using AI tools actually took 19% _longer_ to complete complex tasks, largely due to the time spent debugging plausible but entirely fictitious logic errors the AI introduced.

Of course there are also studies that show productivity gains. However, the trade-off is that speed without understanding shifts the cost downstream into long-term maintenance and reliability.

## Systems Over Syntax

Real problems still require human judgement. As software professionals, we need to understand the domain, the legacy environment we are operating within, and the actual people we are solving problems for.

The real challenges we face in large-scale systems are deep-rooted, complex, and intertwined. They require architectural foresight and a deep understanding of how different services, databases, and user needs interact. An LLM does not inherently understand your legacy database, or undocumented architectural decisions. Relying too heavily on AI to solve these systemic issues is a fast track to [technical debt](modern-software-delivery.md#overload-on-systems) and architectural rot. It still requires an experienced human to set the constraints.

None of this is new. Poor understanding has always produced poor software. Humans don't [perfectly understand systems](modern-software-delivery.md#cognitive-load) either, but they can investigate, validate assumptions, and be held accountable for the outcomes.

## The Cost of Imprecision

To return to the workshop analogy, there are times when you absolutely must put down the power tools. If you are cutting a delicate dovetail joint you do not reach for a power saw. You reach for a chisel. In the places where mistakes are expensive, speed is the wrong metric.

The exact same principle applies to software. There are critical areas of our codebases where an AI's broad-brush, statistically-average approach lacks the necessary finesse. When implementing intricate, high-stakes domain logic, a predictive model left to its own devices is a liability. While an LLM might perfectly scaffold the API endpoint for you, it should not be relied upon to interpret the nuances of complex rules. It just knows which words usually sit next to each other.

## The Feature Factory Fallacy

The worry is that it is incredibly easy to be impressed by the sheer speed at which AI generates _"functional"_ code. This creates a dangerous illusion that syntax is all there is to it, masking the reality of why we must build so much infrastructure around the code itself.

In environments where delivery is heavily [focused on output metrics](modern-software-delivery.md#productivity-paranoia), it can sometimes seem as if typing out syntax is the main bottleneck slowing down delivery. In reality, the bottleneck is, and always has been, understanding the business domain, ensuring scalability, and proving resilience.

AI doesn't create these organisational challenges, but it can amplify them if they already exist.

## Safety Guards for the Power Saw

This is exactly why the foundational practices of eXtreme Programming (XP) are more important now than ever. When your tools allow feedback loops to be significantly shorter, and the volume of generated code increases, simply relying on human review is a recipe for disaster. You cannot manually review your way out of that much machine-generated noise without losing your sanity.

Having robust, deterministic, and comprehensive [automated test suites](modern-software-delivery.md#the-technical-system) to quickly verify and validate changes is essential. An automated build process that executes these tests and performs continuous structural analysis, including security, performance, and accessibility testing, is what actually gives you the confidence to deploy small changes regularly.

These guardrails were always important before AI; they are absolutely critical now.

## Managing the Hype Cycle

If you point out the realities of software engineering in the current era, you'll often hear the same responses. Let's address some of the common themes:

- **"But I built a whole app in a weekend without knowing how to code!"** That is fantastic for prototyping. But remember, with enough gaffer tape and enthusiasm, you can build a go-kart out of a shopping trolley. That does not mean anyone should trust you to drive it on a motorway in the pouring rain. There is a massive gap between bootstrapping a greenfield CRUD API and maintaining a complex, high-stakes enterprise system.
- **"The _next_ model will be an agent that can reason!"** Ah, the tech equivalent of [_"jam tomorrow"_](https://en.wikipedia.org/wiki/Jam_tomorrow). Throwing another trillion parameters at a model makes it a better interpolator, but it does not magically grant it the ability to intuit the unwritten business rules of your domain. It will simply predict the syntax with even greater false confidence. The human is still required to verify if that syntax represents the _truth_.
- **"We will just have the AI write the automated tests!"** Using AI to generate the boilerplate for your test suite is a fantastic use of the tool. However, if you use an AI to write your complex business logic, and then ask that _exact same AI_ to define the behavioural tests to validate it, you have built an echo chamber. It will confidently award itself top marks for flawlessly executing its own hallucinations.

## Finding the Actual Value

For experienced engineers, the upside is obvious if you understand what the tool is actually built for. We should not ignore power tools just because they can be dangerous in the wrong hands.

An AI's true strength lies in pattern matching, syntax translation, and summarisation. Turn that to your advantage. Treat the AI as a tireless pair programmer to rapidly parse through dense server logs, translate an old script from Bash to Python, write tedious unit test boilerplate, or act as a [rubber duck](https://en.wikipedia.org/wiki/Rubber_duck_debugging) when you are stuck on a difficult problem.

Rather than believing AI will magically architect your systems and solve your problems for you, treat it exactly like what it is: another powerful tool in your belt. Just remember, AI won't teach you how to design a chair. It just lets you build a bad one faster.

--8<-- "includes/disclaimer.md"
