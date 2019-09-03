# GET Conference Website

<!-- MarkdownTOC -->

* [Questions](#questions)
* [Nav Menu](#nav-menu)
* [Collections Ordering](#collections-ordering)
* [404 Page](#404-page)
* [Agendas](#agendas)
* [2010](#2010)
* [2012](#2012)
* [2014](#2014)
* [2015](#2015)
* [Homepage](#homepage)
* [Labs](#labs)
* [Sponsors](#sponsors)
* [Favicon](#favicon)
* [Collections](#collections)
  * [Relative Directories](#relative-directories)
* [Optional](#optional)
  * [DRY](#dry)
  * [Nav](#nav)
  * [404 Page](#404-page-1)

<!-- /MarkdownTOC -->


The GET Conference: https://pgpconference.github.io/pgpconference/

<a id="questions"></a>
## Questions

1. Is there any reason the "Sign up for Email Updates" link on the Sidebar needs to go to /updates.html?
    * I've currently set it up to just go straight to the [sign-up form](https://personalgenomes.us3.list-manage.com/subscribe?u=3980aaa2746fd428de44b2ab4&id=34d31b2d4b)
2. Google Analytics Setup?

<a id="nav-menu"></a>
## Nav Menu

* Site < 2013 - Glitches at 768px (and fine again at 769)

<a id="collections-ordering"></a>
## Collections Ordering

* Needs Dynamic Ordering Fix:
  * Sponsors
  * Try doing some debugging with this to see if I can go by a central _config.yml file_

<a id="404-page"></a>
## 404 Page
  * Broken logo when coming from 2010

<a id="agendas"></a>
## Agendas

* Still need 2012 Agenda pg
* Inconsistent Column Width - add `_include` variable and css class
  * 2013 & 2016 Narrow
  * 2014 & 2015 Wide

<a id="2010"></a>
## 2010

* Homepage: horizontal content width
* Sidebar: Producing extra people for some reason

<a id="2012"></a>
## 2012

* Still needs Agenda page

<a id="2014"></a>
## 2014

* Sponsors pg: IBM looks weird (content issue) - maybe add some sort of class to change the vertical text alignment there?
* About - Content Width needs to be narrower

<a id="2015"></a>
## 2015
* Agendas??
  * Check if I need to expand column width

<a id="homepage"></a>
## Homepage

* Subheader needs to be adjusted for each conference year

<a id="labs"></a>
## Labs

* Add conditional to change formatting of lab entries from `title <br> description` to `title: description`
  * Probably just via "hide title", keep company name in content

<a id="sponsors"></a>
## Sponsors

* Figure out how to do the ordering
  * Does it make sense to just hardcode into the page?

<a id="favicon"></a>
## Favicon

* Need to set Favicon. Generate favicon files using [Real Favicon Generator](https://realfavicongenerator.net/)

<a id="collections"></a>
## Collections

* Would like to find a way to tidy the directory structure up
  * May be a Jekyll limitation though

<a id="relative-directories"></a>
### Relative Directories
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

* See about integrating code for highlighting the current page into the Nav menu

```html
{%- for path in page_paths -%}
  {%- assign my_page = site.pages | where: "path", path | first -%}
  {%- if my_page.title -%}
  <a class="page-link" href="{{ my_page.url | relative_url }}">{{ my_page.title | escape }}</a>
  {%- endif -%}
{%- endfor -%}
```

<a id="404-page-1"></a>
### 404 Page

* For previous conference years, it's a bit awkward that the nav links stay for current year's conference.
  * Unclear if there's a way to do anything about this
  * Displaying a sitemap might be the best option

