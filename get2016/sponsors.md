---
layout: default
---

<h2>Sponsors</h2>

<ul class="sponsors-list">
  {% assign sponsors = site.sponsors2016 | sort: 'order' %}
  {% for sponsor in sponsors %}
  <li class="sponsor">
    <div class="sponsor-bio"><b><a href="{{ sponsor.link }}">{{ sponsor.name }}</a>:</b> {{ sponsor.content }}</div>
    <img src="{{ sponsor.image | relative_url }}" alt="{{ sponsor.name }}" class="sponsor-img">
  </li>
  {% endfor %}
</ul>

<p class="collections-tag">Sponsorship opportunities are still available.<br>
For more information, please write: <a href="mailto:jason@personalgenomes.org">jason@personalgenomes.org</a></p>
