---
layout: page
title: Speaking
css:
  body_class: theSpeaking

use:
  - talks
---

{% set now = 'now' | date_modify('-2 day') | date('U') %}
{% set forFuture = true %}
{% set forPast = true %}

<section>
{% for talk in data.talks %}
    {% if talk.date >= now %}
        {% if forFuture %}
    <header class="notification has-text-centered">
        <h1 class="title">Coming Up Next</h1>
        <p class="subtitle">Where I will be speaking in the future.</p>
    </header>
            {% set forFuture = false %}
        {% endif %}
{% include 'talks_list_item_mini' %}
    {% else %}
        {% if forPast %}
    <header class="notification has-text-centered">
        <h1 class="title">Past Events</h1>
        <p class="subtitle">Slides available for each talk.</p>
    </header>
            {% set forPast = false %}
        {% endif %}
{% include 'talks_list_item' %}
    {% endif %}

{% endfor %}
</section>
