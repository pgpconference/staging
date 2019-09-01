---
layout: default
class: speakers
title: Speakers
year: 2013
---

# Speakers & Discussion Leaders

{% assign str = "site.speakers" | append: page.year %}
{% include_cached speakers.html col_name=str %}

<p class="collections-tag">Speaker list is subject to change.</p>
