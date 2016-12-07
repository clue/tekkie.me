---
layout: splash
title: Home
---
<div class="inner cover">
  <p>
    <img src="themes/tekkie/cv/assets/GeorgianaGligor.jpg" alt="Georgiana Gligor speaking at ITdays" class="rounded-circle" />
  </p>
  <h1 class="cover-heading">{{ site.cover.oneliner }}</h1>
  <p class="lead">{{ site.cover.lead }}</p>
{% for item in site.cover.details %}
  <p>{{ item }}</p>
{% endfor %}
  <p class="lead">
    <a href="#" class="btn btn-lg btn-secondary">Hire Me</a>
  </p>
</div>

<div class="inner social">
  <ul>
{% if site.social.linkedin %}
    <li>
      <a href="https://linkedin.com/in/{{ site.social.linkedin }}">
        <i class="geek-icon icon ion-social-linkedin"></i>
      </a>
    </li>
{% endif %}
{% if site.social.skype %}
    <li>
      <a href="skype:{{ site.social.skype }}?chat">
        <i class="geek-icon icon ion-social-skype"></i>
      </a>
    </li>
{% endif %}
{% if site.social.facebook %}
    <li>
      <a href="https://www.facebook.com/{{ site.social.facebook }}">
        <i class="geek-icon icon ion-social-facebook"></i>
      </a>
    </li>
{% endif %}
  </ul>
</div>
