# GET Conference Website

<!-- MarkdownTOC -->

* [Questions](#questions)
* [Remaining Years](#remaining-years)
* [Issues](#issues)
* [Nav Menu](#nav-menu)
  * [Ordering](#ordering)
  * [2014](#2014)
    * [YouTube - Responsive](#youtube---responsive)
  * [2015](#2015)
    * [Labs](#labs)
    * [Agendas](#agendas)
    * [Index page needs to be finished](#index-page-needs-to-be-finished)
  * [Favicon](#favicon)
  * [Collections](#collections)
    * [Relative Directories](#relative-directories)
  * [Sidebar](#sidebar)
  * [2016 Image Paths](#2016-image-paths)
* [Optional](#optional)
  * [DRY](#dry)
  * [Nav](#nav)
  * [404 Page](#404-page)
  * [Ordered Collections](#ordered-collections)
* [Miscellaneous Notes For Luna](#miscellaneous-notes-for-luna)
  * [Mobile Nav](#mobile-nav)
  * [Refactored SCSS Code](#refactored-scss-code)

<!-- /MarkdownTOC -->


The GET Conference: https://pgpconference.github.io/pgpconference/

<a id="questions"></a>
## Questions

1. Is there any reason the "Sign up for Email Updates" link on the Sidebar needs to go to /updates.html?
    * I've currently set it up to just go straight to the [sign-up form](https://personalgenomes.us3.list-manage.com/subscribe?u=3980aaa2746fd428de44b2ab4&id=34d31b2d4b)
2. Google Analytics Setup?

<a id="remaining-years"></a>
## Remaining Years

* Currently the 2010-2105 sites need to be imported. These should be a quicker process than the 2016 site was.

<a id="issues"></a>
## Issues

<a id="nav-menu"></a>
## Nav Menu

* Header Logo needs to link to relevant year

<a id="ordering"></a>
### Ordering

* Need to work out how to do dynamic ordering for collections (Speakers, Sponsors, etc).

<a id="2014"></a>
### 2014

* Sponsors pg: IBM looks weird (content issue) - maybe add some sort of class to change the vertical text alignment there?
* Sidebar - need to add in embedded YouTube vid
  * Find responsive code from the other page
* Agenda - should I change the <address> at the bottom to be `font-style: normal`?
* About - Content Width needs to be narrower
* **Site Logo is Different**

<a id="youtube---responsive"></a>
#### YouTube - Responsive

```html
<div class="video-responsive"><iframe width="560" height="315" src="https://www.youtube.com/embed/PvGVMg1wjoU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
```



<a id="2015"></a>
### 2015

<a id="labs"></a>
#### Labs

* Need to add Labs pages

<a id="agendas"></a>
#### Agendas

* Expand column width
* Generating accidental repeat data

<a id="index-page-needs-to-be-finished"></a>
#### Index page needs to be finished

<a id="favicon"></a>
### Favicon

* Need to set Favicon. Generate favicon files using [Real Favicon Generator](https://realfavicongenerator.net/)

<a id="collections"></a>
### Collections

* Would like to find a way to tidy the directory structure up
  * May be a Jekyll limitation though

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

<a id="sidebar"></a>
### Sidebar

* Speakers and Organizers need font formatting

<a id="2016-image-paths"></a>
### 2016 Image Paths

Revert image paths to original structure - will be better for future editing

Needs to be done for:
* Collections:
  * Co-Organizers
  * Expos
  * Labs
  * Speakers-2016: christoph-bock.md
  * Sponsors 2016
* SASS
  * `_custom.scss`
  * `_get2016.scss`
  * `media\_min-width-425.scss`
  * `media\_min-width-576.scss`
  * `media\_min-width-768.scss`


<a id="optional"></a>
## Optional

<a id="dry"></a>
### DRY

* Ideally make the following more DRY:
  * Agenda
  * Labs

<a id="nav"></a>
### Nav

* See about integrating code for highlighting the current page into the Nav menu

```html
{%- for path in page_paths -%}
  {%- assign my_page = site.pages | where: "path", path | first -%}
  {%- if my_page.title -%}
  <a class="page-link" href="{{ my_page.url | relative_url }}">{{ my_page.title | escape }}</a>
  {%- endif -%}
{%- endfor -%}
```

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
