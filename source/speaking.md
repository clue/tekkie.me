---
layout: page
title: Speaking
css:
  body_class: theSpeaking

use:
  - talks
---

{% for talk in data.talks %}
<div class="card box is-fullwidth">

<h2 class="title is-block is-marginless"><a href="{{ talk.url }}">{{ talk.title }}</a></h2>
<nav class="level card-header">
  <div class="level-left">
    <div class="level-item">
      <h3 class="subtitle is-6"> @ {{ talk.conference.name }}</h3>
    </div>
  </div>
  <div class="level-right">
    <div class="level-item has-text-right">
      <div class="is-6">{{ talk.location }}</div>
      <div class="is-6">{{ talk.date|date("F jS, Y") }}</div>
    </div>
  </div>
</nav>

<div class="card-content">
{{ talk.description }}
</div><!-- .card-content -->

<footer class="card-footer">
    <div class="tags">
{% for tag in talk.tags %}
  <span class="tag is-light is-small">{{ tag }}</span>
{% endfor %}
      {%- if talk.language -%}
      <span class="flag-icon flag-icon-{{ talk.language }} with-text">{{ site.languages[talk.language] }}</span>
      {%- endif -%}
    </div>
</footer>

</div><!-- .card -->
{% endfor %}
