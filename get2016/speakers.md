---
layout: default
class: speakers
title: Speakers
year: 2016
---

<h2>Speakers & Discussion Leaders</h2>

  <ul class="speakers-list">
    {% assign speakers = site.speakers2016 | sort: 'order' %}
    {% for speaker in speakers %}
    <li class="speaker">
      <img class="speaker-img" src="{{ speaker.image | relative_url }}" alt="{{ speaker.name }}">
      <div class="speaker-bio">{{ speaker.content }}</div>
    </li>
    {% endfor %}
  </ul>

<p class="collections-tag">Speaker list is subject to change.</p>
