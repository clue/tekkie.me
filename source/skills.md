---
layout: page
title: Skills
css:
  body_class: theSkills
---

<div class="container">

{% for group in site.skills %}

{% if loop.index % 3 == 1 %}{% set shouldStart = true %}{% else %}{% set shouldStart = false %}{% endif %}
{% if (loop.index % 3) == 0 %}{% set shouldEnd = true %}{% else %}{% set shouldEnd = false %}{% endif %}

{% if shouldStart %}<div class="columns">{% endif %}

{% spaceless %}
<div class="column card">

<nav class="level card-header">
  <div class="level-left">
    <div class="level-item">
      <h1 id="{{ group.label | lower }}" class="title">{{ group.label }}</h1>
    </div>
  </div>
</nav><!-- .card-header -->
  
<div class="card-content">
{% for skill in group.items %}
{{ skill.label }} <progress class="progress" value="{{ skill.value }}" max="100">{{ skill.value }}%</progress>
{% endfor %}
</div><!-- .card-content -->

</div><!-- .card -->
{% endspaceless %}

{% if shouldEnd %}</div>{% endif %}

{% endfor %}

</div><!-- .asdf -->