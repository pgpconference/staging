---
layout: default
class: sponsors
title: Sponsors
year: 2012
---

# Sponsors

{% assign col_str = "site.sponsors" | append: page.year %}
{% include_cached sponsors.html col_name=col_str %}

{:.margin-top-tall}
## Organizing Sponsors

<ul class="sponsors-list">
{%- for collection in site.collections -%}
  {%- if col_str contains collection.label -%}
    {%- for sponsor in collection.docs -%}
      {%- if sponsor.type == "custom" -%}
      <li class="sponsor"><img src="{{ sponsor.image | absolute_url }}" alt="{{ sponsor.name }}"></li>
      {%- endif -%}
    {%- endfor -%}
  {%- endif -%}
{%- endfor -%}
</ul>

{:.collections-tag}
Sponsorship opportunities are still available.<br>
For more information, please write: [jason@personalgenomes.org](mailto:jason@personalgenomes.org)
