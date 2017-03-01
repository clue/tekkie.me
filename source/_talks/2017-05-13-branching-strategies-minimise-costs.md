---
title: Branching Strategies: choose wisely to minimise costs
shortcode: phpday-verona-branching-strategies-minimise-costs
language: gb

name: Georgiana Gligor
author: Georgiana
conference:
  name: phpDay 2017
  city: Verona, Italy
  link: https://2017.phpday.it/talks.html#georgiana-gligor
  logo: assets/talks/php-uk-2016.png
year: 2017
slides_embed: 

description: Is your team choosing the branching strategy from the beginning, or is it switching after a while to better accommodate the current project stage? How does this affect you, and what are the costs involved?

tags:
  - Architecture
  - High-Availability
  - 99.999%
---

Is your team choosing the branching strategy from the beginning, or is it switching after a while to better accommodate the current project stage? How does this affect you, and what are the costs involved? Multiply this by the number of repositories, each playing a definite role in a large-scale project, and you will want to know how to minimise the impact. In the inception phase, developers are the ones producing code, and oftentimes they choose the project branching strategy that mostly fits their immediate needs. In some teams the developers don't have DevOps knowledge, so when there is a working prototype that needs to see the light of day (err...server), they need a packagist to help them assemble the code so that it can be deployed in a specific environment, which often translates into a branching change. When the codebase matures and bug hunts start to occur, new constraints are imposed, and a more mature strategy is transitioned to. The branching model needs to be simple - so that everyone involved can grasp it quickly, flexible - so it can serve the needs of very different roles within the project lifecycle, adaptable - when you have a particular unforeseen need, it should not be a barrier. See what's already being used by others, ask a few questions that might drive an adaptation of your choice, then choose wisely. Then let your team spend their time on coding rather than painfully switching strategies.
