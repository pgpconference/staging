---
layout: default
title: Speakers
class: speakers
year: 2010
---

# 2010 Speakers

{% assign sp = "site.speakers" | append: page.year %}
{% assign mod = "site.moderators" | append: page.year %}
{% assign pro = "site.prototypes" | append: page.year %}
{% assign brk = "site.breakout-leaders" | append: page.year %}
{% assign awd = "site.awards-presenters" | append: page.year %}
{%- include speakers2010.html col_name=speakers_str speakers_col=speakers_str sp=sp mod=mod pro=pro brk=brk awd=awd -%}

{:.h3-steering-committee}
### GET Conference 2010 Steering Committee

<ul class="steering-committee">
  <li>Jason Bobe, PersonalGenomes.org</li>
  <li>Caryn Saitz, Creative Strategic Solutions</li>
  <li>Mikhail Shapiro, Third Rock Ventures</li>
  <li>Daniel Vorhaus, Robinson, Bradshaw, Hinson</li>
</ul>
