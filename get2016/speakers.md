---
layout: default
class: speakers
title: Speakers
year: 2016
---

<h2>Speakers & Discussion Leaders</h2>

{% assign str = "site.speakers" | append: page.year %}
{% include_cached speakers.html col_name=str %}

<p class="collections-tag">Speaker list is subject to change.</p>
