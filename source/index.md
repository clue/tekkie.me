---
layout: splash
title: Home
---
<div class="columns is-mobile">
  <div class="column is-10 is-offset-1">
  
    <div class="card is-fullwidth">
      <div class="card-content">
        <div class="media">
            <figure class="media-left">
              <p class="image is-128x128">
                <img src="themes/tekkie/cv/assets/GeorgianaGligor.jpg" alt="Georgiana Gligor speaking at ITdays">
              </p>
            </figure>
            
            <div class="media-content">
              <h1 class="title is-1">Georgiana Gligor</h1>
              <h2 class="title is-3">{{ site.cover.oneliner }}</h2>
            </div>
        </div>
        
        <div class="content">
          <h3 class="title is-4">{{ site.cover.lead }}</h3>
    {% for item in site.cover.details %}
          <p>{{ item }}</p>
    {% endfor %}
        </div>
      </div>
      
      <footer class="card-footer">
      
    {% if site.social.linkedin %}
          <a class="card-footer-item" href="https://linkedin.com/in/{{ site.social.linkedin }}">
            <i class="fa fa-linkedin" aria-hidden="true"></i>
          </a>
    {% endif %}
    {% if site.social.mail %}
          <a class="card-footer-item" href="mailto:{{ site.social.mail }}">
            <i class="fa fa-envelope" aria-hidden="true"></i>
          </a>
    {% endif %}
    {% if site.social.skype %}
          <a class="card-footer-item" href="skype:{{ site.social.skype }}?chat">
            <i class="fa fa-skype" aria-hidden="true"></i>
          </a>
    {% endif %}
    
    {% if site.social.facebook %}
          <a class="card-footer-item" href="https://www.facebook.com/{{ site.social.facebook }}">
            <i class="fa fa-facebook" aria-hidden="true"></i>
          </a>
    {% endif %}
      </footer>
    
    </div><!-- .card -->

  </div>
</div>

