# GET Conference Website

<!-- MarkdownTOC -->

* [Checklist from PGP Global Site](#checklist-from-pgp-global-site)
* [Questions](#questions)
  * [404 Page](#404-page)
* [2012](#2012)
* [Favicon](#favicon)
* [Optional](#optional)
  * [SCSS Refactor](#scss-refactor)
  * [DRY](#dry)
  * [Nav - Highlight Current Page](#nav---highlight-current-page)
  * [Collections](#collections)
  * [Relative Directories](#relative-directories)

<!-- /MarkdownTOC -->

<a id="checklist-from-pgp-global-site"></a>
## Checklist from PGP Global Site

* PrefixFree
* Subdomain and CNAME
* Contact Form?
* Favicon setup
* Agnostic config
* Enable all relevant plugins
* Cleanup Branches

The GET Conference: https://pgpconference.github.io/pgpconference/ repo

<a id="questions"></a>
## Questions

1. Is there any reason the "Sign up for Email Updates" link on the Sidebar needs to go to /updates.html?
    * I've currently set it up to just go straight to the [sign-up form](https://personalgenomes.us3.list-manage.com/subscribe?u=3980aaa2746fd428de44b2ab4&id=34d31b2d4b)
2. Google Analytics Setup?

<a id="404-page"></a>
### 404 Page

* Displaying a sitemap might be the best option

<a id="2012"></a>
## 2012

* Finish styles for Agenda page

<a id="favicon"></a>
## Favicon

* Need to set Favicon. Generate favicon files using [Real Favicon Generator](https://realfavicongenerator.net/)
  * Need to make background transparent instead of white

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

<a id="collections"></a>
### Collections

* Would like to find a way to tidy the directory structure up
  * May be a Jekyll limitation though

<a id="relative-directories"></a>
### Relative Directories
See here:

```ruby
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

