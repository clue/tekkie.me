---
layout: page
title: Experience

---

{% for item in site.experience %}
<div class="position">
  <h2>{{ item.position }} @ {{ item.company }}</h2>
  <div>{{ item.since }}{% if item.until %} &dash; {{ item.until }}{% endif %} <small>{{ item.location }}</small></div>
  <ul>
{% for info in item.details %}
    <li>{{ info }}</li>
{% endfor %}
  </ul>
</div>
{% endfor %}
