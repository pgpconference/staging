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
    {{ "[![Franklin Institute](images/TFI.jpg)](http://www.fi.edu/)" | markdownify | remove: '<p>' | remove: '</p>' }}

    {{ "[![Penn Medicine](images/pennmed.gif)](http://www.pennmedicine.org/)" | markdownify | remove: '<p>' | remove: '</p>' }}

    {{ "[![UPenn](images/penn.gif)](http://www.upenn.edu)" | markdownify | remove: '<p>' | remove: '</p>' }}

  </div>
  <div class="org-right">
    {{ "[![Penn Genome Frontiers Institute](images/PGFI.jpg)](http://www.genomics.upenn.edu/)" | markdownify | remove: '<p>' | remove: '</p>' }}

    {{ "[![PersonalGenomes.org](images/personalgenomes.gif)](http://www.personalgenomes.org/)" | markdownify | remove: '<p>' | remove: '</p>' }}
  </div>
</div>

<!-- Table -->
<!-- 355px wide -->
