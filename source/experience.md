---
layout: page
title: Experience
css:
  body_class: theExperience

---

{% for item in site.experience %}
<div class="card is-fullwidth">

<nav class="level card-header">
  <div class="level-left">
    <div class="level-item">
      <h2 class="title is-3">{{ item.position }}</h2>
      <h3 class="subtitle is-6"> @ {{ item.company }}</h3>
    </div>
  </div>
  <div class="level-right">
    <div class="level-item has-text-right">
      <div class="is-6">{% if not item.until %}Since {{ item.until }}{% endif %}{{ item.since }}{% if item.until %} &dash; {{ item.until }}{% endif %}</div>
      <div class="is-6">{{ item.location }}</div>
    </div>
  </div>
</nav><!-- .card-header -->
  
<div class="card-content">
  <ul class="content position-details">
{% for info in item.details %}
    <li>{{ info }}</li>
{% endfor %}
  </ul>
</div><!-- .card-content -->

</div><!-- .card -->
{% endfor %}
