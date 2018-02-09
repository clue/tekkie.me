---
title: Building Johnny the Deployer, our AI-powered DevOps Chatbot Assistant
shortcode: indexconf-building-johnny-deployer-our-ai-powered-devops-chatbot
language: gb

name: Georgiana Gligor
author: Georgiana
conference:
  name: IBM Index Developer Conference 2018
  link: https://developer.ibm.com/indexconf/sessions/
  logo: assets/talks/php-uk-2016.png
year: 2018
slides_embed:

description: |
    After working on AI-powered applications for a while now, we applied a lot of the lessons learned in building our own bot.

    Johnny, our DevOps chatbot, enables the release manager skip the confusing discussions with the tekkies and master the release process. It’s using NLP, so you don’t feel like talking to a bot, rather to a teammate.

tags:
  - Artificial Intelligence
  - DevOps
  - Chatbot
  - OpsChat
---

After working on AI-powered applications for a while now, we applied a lot of the lessons learned in building our own bot.

Johnny, our DevOps chatbot, enables the release manager skip the confusing discussions with the tekkies and master the release process. It’s using NLP, so you don’t feel like talking to a bot, rather to a teammate.

In this session you will learn about the building blocks of Johnny, dive into how each plays its part (pointing out reasoning behind our design decisions), and then we’ll get to do a live demo to see how all fits together. A bot framework is used to pass on information to “the brain”, which decodes your message using Natural Language Processing, and if it’s below a configurable certitude threshold comes and asks you for confirmation/clarification. Once the task to be executed is understood, the “brain” goes on to execute it and hand you over the results. Here are some questions you may ask Johnny:

- “What tickets are ready for QA?”
- “Prepare a release candidate and deploy it to QA”
- “When did we last install the API in staging?”
- “How did the traffic look for the last 36 hours?”
- “How many sales are there today compared with last week?”
- “What version of the API is installed in production?”
- “How many servers are we using now in the integration environment?”
- “What is the medium load across the cluster in the last three days.”
- “List the last three deployments in the QA environment.”
- “Who ordered the update on the CMS in staging?”
