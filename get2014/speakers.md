---
layout: default
class: speakers
title: Speakers
year: 2014
---

# Speakers & Discussion Leaders

{% assign str = "site.speakers" | append: page.year %}
{% include_cached speakers.html col_name=str %}
