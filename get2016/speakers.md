---
layout: default
---

<h2>Speakers & Discussion Leaders</h2>

  <ul class="speakers-list">
    {% assign speakers = site.speakers-2016 | sort: 'order' %}
    {% for speaker in speakers %}
    <li class="speaker">
      <img class="speaker-img" src="{{ speaker.image }}" alt="{{ speaker.name }}">
      <span class="speaker-bio">{{ speaker.content }}</span>
    </li>
    {% endfor %}
  </ul>

<p>Speaker list is subject to change.</p>