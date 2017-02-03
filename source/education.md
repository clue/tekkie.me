---
layout: page
title: Education
css:
  body_class: theEducation
---

{% for item in site.education %}
<div class="card is-fullwidth">

<div class="box-header">
    <div class="columns is-marginless">
        <div class="column is-half is-paddingless">
            <h2 class="title is-3">{{ item.position }}</h2>
        </div>
        <div class="column is-half has-text-right is-paddingless">
      <div class="is-6">{% if not item.until %}Since {{ item.until }}{% endif %}{{ item.since }}{% if item.until %} &dash; {{ item.until }}{% endif %}</div>
        </div>
    </div>
    
    <div class="columns">
        <div class="column is-half is-marginless">
          <h3 class="subtitle is-6"> @ {{ item.company }}</h3>
        </div>

        <div class="column is-half has-text-right is-marginless">
          <div class="is-6">{{ item.location }}</div>
        </div>
    </div>
</div>

<div class="card-content">
  <ul class="content position-details">
{% for info in item.details %}
    <li>{{ info }}</li>
{% endfor %}
  </ul>
</div><!-- .card-content -->

</div><!-- .card -->
{% endfor %}
