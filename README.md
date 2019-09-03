# GET Conference Website

<!-- MarkdownTOC -->

* [Questions](#questions)
  * [Sidebar](#sidebar)
* [Remaining Years](#remaining-years)
* [Issues](#issues)
  * [Collections Ordering](#collections-ordering)
  * [Sidebars](#sidebars)
  * [Agendas](#agendas)
  * [2011](#2011)
  * [2013](#2013)
    * [Homepage](#homepage)
    * [Sidebar and Speakers](#sidebar-and-speakers)
    * [Labs](#labs)
    * [Sponsors](#sponsors)
  * [2014](#2014)
  * [2015](#2015)
    * [Agendas](#agendas-1)
    * [Index page needs to be finished](#index-page-needs-to-be-finished)
  * [2016](#2016)
    * [Home](#home)
    * [Sponsors](#sponsors-1)
  * [Favicon](#favicon)
    * [Relative Directories](#relative-directories)
* [Optional](#optional)
  * [DRY](#dry)
  * [Nav](#nav)
    * [Current Page](#current-page)
    * [2012 & 2013](#2012--2013)
  * [Naming Convention](#naming-convention)
  * [404 Page](#404-page)
  * [Ordered Collections](#ordered-collections)
* [Miscellaneous Notes For Luna](#miscellaneous-notes-for-luna)
  * [Page Titles and Content Padding](#page-titles-and-content-padding)
  * [Mobile Nav](#mobile-nav)
  * [Refactored SCSS Code](#refactored-scss-code)
* [Useful Resources and Snippets](#useful-resources-and-snippets)
  * [YouTube - Responsive](#youtube---responsive)

<!-- /MarkdownTOC -->


The GET Conference: https://pgpconference.github.io/pgpconference/

<a id="questions"></a>
## Questions

1. Is there any reason the "Sign up for Email Updates" link on the Sidebar needs to go to /updates.html?
    * I've currently set it up to just go straight to the [sign-up form](https://personalgenomes.us3.list-manage.com/subscribe?u=3980aaa2746fd428de44b2ab4&id=34d31b2d4b)
2. Google Analytics Setup?

<a id="sidebar"></a>
### Sidebar

1. Is having `font-size: 14px` instead of `font-size: 12px` ok for the Sidebar headings?

<a id="remaining-years"></a>
## Remaining Years

* Currently the 2010-2012 sites need to be imported. 2013 is mostly finished

<a id="issues"></a>
## Issues

<a id="collections-ordering"></a>
### Collections Ordering

* Needs Dynamic Ordering Fix:
  * Sponsors
  * Try doing some debugging with this to see if I can go by a central _config.yml file_

<a id="sidebars"></a>
### Sidebars

* Review various years for differences in sidebars

<a id="agendas"></a>
### Agendas

* Inconsistent Column Width - add `_include` variable and css class
  * 2013 & 2016 Narrow
  * 2014 & 2015 Wide


<a id="2011"></a>
### 2011

* Sidebar Speakers needs to be 2x2

<a id="2013"></a>
### 2013

<a id="homepage"></a>
#### Homepage

* Subheader and Sidebar need correct content
* Broken sponsors img at bottom of the page

<a id="sidebar-and-speakers"></a>
#### Sidebar and Speakers

* Sidebar has separate category for Discussion Leaders - which is not reflected on the Speakers
  * Update Speakers template
    * If sidebar, if category, etc

<a id="labs"></a>
#### Labs

* Add conditional to change formatting of lab entries from `title <br> description` to `title: description`
  * Probably just via "hide title", keep company name in content

<a id="sponsors"></a>
#### Sponsors

* Figure out how to do the ordering
  * Does it make sense to just hardcode into the page?

<a id="2014"></a>
### 2014

* Sponsors pg: IBM looks weird (content issue) - maybe add some sort of class to change the vertical text alignment there?
* Sidebar - need to add in embedded YouTube vid
  * See below for responsive code
* Agenda - should I change the <address> at the bottom to be `font-style: normal`?
* About - Content Width needs to be narrower

<a id="2015"></a>
### 2015

<a id="agendas-1"></a>
#### Agendas

* Expand column width

<a id="index-page-needs-to-be-finished"></a>
#### Index page needs to be finished

<a id="2016"></a>
### 2016

<a id="home"></a>
#### Home

* About GETy Awards heading needs `.margin-top-tall`

<a id="sponsors-1"></a>
#### Sponsors

* Weird extra `</ul>` tag at the bottom... thought I'd fixed that already...

<a id="favicon"></a>
### Favicon

* Need to set Favicon. Generate favicon files using [Real Favicon Generator](https://realfavicongenerator.net/)

<a id="relative-directories"></a>
#### Relative Directories
See here:

```ruby
<a id="from-httpssimpleitrocksrubyjekyllcollectionsunderstanding-how-collections-work"></a>
# From: https://simpleit.rocks/ruby/jekyll/collections/understanding-how-collections-work/
{% for collection in site.collections %}
 Collection name: {{collection.label}}
 Relative path to the collection's source directory: {{collection.relative_directory }}
 Full path to the collection's directory: {{collection.directory}}
 Output collection files as individual files?: {{collection.output}}
 {% for doc in collection.docs%}
  {{doc.title}}
  {{doc.slug}}
 {% endfor %}
{% endfor %}
```

<a id="optional"></a>
## Optional

<a id="dry"></a>
### DRY

* Ideally make the following pages more DRY:
  * Agenda
  * Labs
* Is it possibly to have a single `_include_` for processing speaker lists that look exactly the same, but might need slightly different classes/data? (Judges, Speakers, etc)
  * Should be easy enough to do with a bit of liquid

<a id="nav"></a>
### Nav

<a id="current-page"></a>
#### Current Page

* See about integrating code for highlighting the current page into the Nav menu

```html
{%- for path in page_paths -%}
  {%- assign my_page = site.pages | where: "path", path | first -%}
  {%- if my_page.title -%}
  <a class="page-link" href="{{ my_page.url | relative_url }}">{{ my_page.title | escape }}</a>
  {%- endif -%}
{%- endfor -%}
```

<a id="2012--2013"></a>
#### 2012 & 2013

* Deal with "too many items" issue by making text smaller - not by eliminating the home link
  * Bad UX

<a id="naming-convention"></a>
### Naming Convention

* Any preference for `/get2012/speakers.html` vs `/speakers.html` in `_data/navigation.yml`.
  * Currently configured to flexibly handle both

<a id="404-page"></a>
### 404 Page

* For previous conference years, it's a bit awkward that the nav links stay for current year's conference.
  * Unclear if there's a way to do anything about this
  * Displaying a sitemap might be the best option

<a id="ordered-collections"></a>
### Ordered Collections

* Specify order in `_config.yml` file instead using variables. See Jekyll - [Manually Ordering Documents](https://jekyllrb.com/docs/collections/#manually-ordering-documents)
  * This was not working when I attempted. Troubleshoot if possible, since this will be useful for future iterations.

<a id="miscellaneous-notes-for-luna"></a>
## Miscellaneous Notes For Luna

A note or two for Luna:

<a id="page-titles-and-content-padding"></a>
### Page Titles and Content Padding

I may need to adjust these for `min-width: 576px`:

```css
/* 425px */
.content h1 {
  margin: 0 0 20px;
}

.content {
  padding-top: 20px;
}
```

<a id="mobile-nav"></a>
### Mobile Nav

Determin if `scripts/mobile-nav.js` is actually doing anything, or if I can delete it

<a id="refactored-scss-code"></a>
### Refactored SCSS Code

1. Changed all #ids to .classes. This may require some adustive for previous conference years.

```css
#oho
#header
#logo
#subheader
#subheader .summary
#subheader .summary h2
#subheader .summary p
#subheader .cta
#subheader .cta h3
#nav
#nav li
#nav li a:link, #nav li a:link, #nav li a:visited
#nav li a:hover
#sidebar
#sidebar .personnel a
#sidebar .personnel span
#sidebar .personnel h3
#sidebar .personnel img
#sidebar .personnel img.no-border
#sidebar .labs a
#sidebar .labs span
#sidebar .labs h3
#sidebar .labs img
#sidebar .labs img.no-border
#sidebar-narrow
#sidebar-narrow .personnel a
#sidebar-narrow .personnel span
#sidebar-narrow .personnel h3
#sidebar-narrow .personnel img
#sidebar-narrow .personnel img.no-border
{}
```

* Reminder: I already changed #content and #content-wide to .content and .content-wide.
  * If I run into issues, check this first

<a id="useful-resources-and-snippets"></a>
## Useful Resources and Snippets

<a id="youtube---responsive"></a>
### YouTube - Responsive

```html
<div class="video-responsive"><iframe width="560" height="315" src="https://www.youtube.com/embed/PvGVMg1wjoU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
```
