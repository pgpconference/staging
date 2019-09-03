---
layout: default
class: sponsors
title: Sponsors
year: 2016
---

# Sponsors

{% assign str = "site.sponsors" | append: page.year %}
{%- include_cached sponsors.html col_name=str -%}

<p class="collections-tag">Sponsorship opportunities are still available.<br>
For more information, please write: <a href="mailto:jason@personalgenomes.org">jason@personalgenomes.org</a></p>
