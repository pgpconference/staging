---
layout: default
class: speakers
title: Speakers
year: 2014
---

<h2>Speakers & Discussion Leaders</h2>

{% assign str = "site.speakers" | append: page.year %}
{% include_cached speakers.html col_name=str %}
