---
layout: default
class: sponsors
title: Sponsors
year: 2011
---

# 2011 Sponsors

{% assign col_str = "site.sponsors" | append: page.year %}
{% include_cached sponsors.html col_name=col_str %}

# Organizing Sponsors

<div class="organizing-sponsors-box">
  <div class="org-left">
    {%- comment -%}
    {{ "[![Franklin Institute](images/TFI.jpg)](http://www.fi.edu/)" | markdownify | remove: '<p>' | remove: '</p>' }}

    {{ "[![Penn Medicine](images/pennmed.gif)](http://www.pennmedicine.org/)" | markdownify | remove: '<p>' | remove: '</p>' }}

    {{ "[![UPenn](images/penn.gif)](http://www.upenn.edu)" | markdownify | remove: '<p>' | remove: '</p>' }}
    {%- endcomment -%}

    <a href="http://www.fi.edu/"><img src="{{ "/get2011/images/TFI.jpg" | relative_url }}" alt="Franklin Institute" /></a>

    <a href="http://www.pennmedicine.org/"><img src="{{ "/get2011/images/pennmed.gif" | relative_url }}" alt="Penn Medicine" /></a>

    <a href="http://www.upenn.edu"><img src="{{ "/get2011/images/penn.gif" | relative_url }}" alt="UPenn" /></a>

  </div>

  <div class="org-right">
    {%- comment -%}
    {{ "[![Penn Genome Frontiers Institute](images/PGFI.jpg)](http://www.genomics.upenn.edu/)" | markdownify | remove: '<p>' | remove: '</p>' }}

    {{ "[![PersonalGenomes.org](images/personalgenomes.gif)](http://www.personalgenomes.org/)" | markdownify | remove: '<p>' | remove: '</p>' }}
    {%- endcomment -%}

    <a href="http://www.genomics.upenn.edu/"><img src="{{ "/get2011/images/PGFI.jpg" | relative_url }}" alt="Penn Genome Frontiers Institute" /></a>

    <a href="http://www.personalgenomes.org/"><img src="{{ "/get2011/images/personalgenomes.gif" | relative_url }}" alt="PersonalGenomes.org" /></a>
  </div>
</div>

<!-- Table -->
<!-- 355px wide -->
