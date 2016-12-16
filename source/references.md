---
layout: page
title: References
css:
    body_class: theExperience
---


{% for item in site.references %}
{% for reference in item %}
<div class="card is-fullwidth">
{# <header class="card-header"> #}

<nav class="level card-header">
  <div class="level-left">
    <div class="level-item">
      <h2 class="title">{{ reference.name }}</h2>
      <h3 class="subtitle">{{ reference.position }}</h3>
      <h3 class="subtitle">{{ reference.role }}</h3>
    </div>
  </div>
  <div class="level-right">
    <div class="level-item has-text-right">
      <div class="subtitle">{{ reference.location }}</div>
      {% if reference.referenced_at %}<h3 class="subtitle">On {{ reference.referenced_at }}</h3>{% endif %}
    </div>
  </div>
</nav>

{# </header><!-- .card-header --> #}
  
<div class="card-content">
{{ reference.details }}
</div><!-- .card-content -->

</div><!-- .card -->
{% endfor %}
{% endfor %}
