---
layout: default
class: labs
title: "About GET Labs"
year: 2013
---

<h2>Labs</h2>

Many Personal Genome Project (PGP) participants attend the GET Conference each year. These individuals include some of the most well-characterized humans on earth. An increasing number of research groups are organizing phenotyping sessions, specimen collection, recruitment booths, information sessions, workshops and other activities at the GET Conference to take advantage of this special opportunity.

<p>Researchers at the GET Conference will explore a wide range of human traits and their variability.</p>

{%- assign labs_str = "site.labs" | append: page.year -%}
{%- include_cached labs.html labs_col=labs_str expos_col=expos_str -%}

Interested in featuring your research project or activity at the GET Conference? Send inquiries to Jason Bobe (jason at personalgenomes.org)
