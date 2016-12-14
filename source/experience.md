---
layout: page
title: Experience
css:
  body_class: theExperience

---

{% for item in site.experience %}
<div class="card is-fullwidth">
{# <header class="card-header"> #}

<nav class="level card-header">
  <div class="level-left">
    <div class="level-item">
      <h2 class="title">{{ item.position }}</h2>
      <h3 class="subtitle"> @ {{ item.company }}</h3>
    </div>
  </div>
  <div class="level-right">
    <div class="level-item has-text-right">
      <div class="subtitle">{{ item.location }}</div>
      <h3 class="subtitle">{% if not item.until %}Since {{ item.until }}{% endif %}{{ item.since }}{% if item.until %} &dash; {{ item.until }}{% endif %}</h3>
    </div>
  </div>
</nav>

{# </header><!-- .card-header --> #}
  
<div class="card-content">
  <ul class="content position-details">
{% for info in item.details %}
    <li>{{ info }}</li>
{% endfor %}
  </ul>
</div><!-- .card-content -->

</div><!-- .card -->
{% endfor %}
