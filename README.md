# GET Conference Website

<!-- MarkdownTOC -->

* [Questions](#questions)
* [Collections Ordering](#collections-ordering)
* [404 Page](#404-page)
* [Agendas](#agendas)
* [2010](#2010)
* [2012](#2012)
* [2013](#2013)
* [Homepage](#homepage)
* [Labs](#labs)
* [Favicon](#favicon)
* [Collections](#collections)
  * [Relative Directories](#relative-directories)
* [File Check List](#file-check-list)
* [Optional](#optional)
  * [SCSS Refactor](#scss-refactor)
  * [DRY](#dry)
  * [Nav - Highlight Current Page](#nav---highlight-current-page)
  * [404 Page](#404-page-1)

<!-- /MarkdownTOC -->


The GET Conference: https://pgpconference.github.io/pgpconference/ repo

<a id="questions"></a>
## Questions

1. Is there any reason the "Sign up for Email Updates" link on the Sidebar needs to go to /updates.html?
    * I've currently set it up to just go straight to the [sign-up form](https://personalgenomes.us3.list-manage.com/subscribe?u=3980aaa2746fd428de44b2ab4&id=34d31b2d4b)
2. Google Analytics Setup?

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

* Sidebar: West Family (last item) margin wrong

<a id="2012"></a>
## 2012

* Still needs Agenda page

<a id="2013"></a>
## 2013

* Sponsors page needs to be properly ordered
  * Write custom template
* Agenda: Way too much space after first header on Agenda page
  * Page is weirdly generating a blank agenda item for no discernible reason
    * Just add a conditional for "if empty" into the Agenda template

<a id="homepage"></a>
## Homepage

* Subheader needs to be adjusted for each conference year

<a id="labs"></a>
## Labs

* Add conditional to change formatting of lab entries from `title <br> description` to `title: description`
  * Probably just via "hide title", keep company name in content

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

<a id="file-check-list"></a>
## File Check List

Are the following being used:

* `scripts/mobile-nav.js`
  * Remove from header if not

<a id="optional"></a>
## Optional

<a id="scss-refactor"></a>
### SCSS Refactor

* Move Speakers & Organizers section out from `_custom.scss` to `_collections.scss`
* Would love to get rid of the whole `.site-nav` vs `.top-nav` issue
  * Creates too many chained classes

<a id="dry"></a>
### DRY

* Ideally make the following pages more DRY:
  * Agenda
  * Labs
* Is it possibly to have a single `_include_` for processing speaker lists that look exactly the same, but might need slightly different classes/data? (Judges, Speakers, etc)
  * Should be easy enough to do with a bit of liquid

<a id="nav---highlight-current-page"></a>
### Nav - Highlight Current Page

* See about integrating code for highlighting the current page into the Nav menu
  * Good for Accessibility

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

