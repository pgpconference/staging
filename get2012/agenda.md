---
layout: default
class: agenda-detailed
title: Agenda 2012
year: 2012
date1: April 25, 2012
type: double_col
---

# 2012 Agenda

{% assign col_str = "site.agenda" | append: page.year %}
{%- include_cached agenda-double.html col_name=col_str -%}

{% comment %}
{% include_cached agenda-double.html year=page.year date1=page.date1 date2=page.date2 %}
{% endcomment %}
