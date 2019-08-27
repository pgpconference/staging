# GET Conference Website

<!-- MarkdownTOC -->

* [Questions](#questions)
* [Issues](#issues)
  * [Sidebar](#sidebar)
  * [Labs](#labs)
  * [Collections](#collections)
    * [Relative Directories](#relative-directories)
    * [Labs - Row Alignments](#labs---row-alignments)
  * [Homepage](#homepage)
  * [Speakers](#speakers)
  * [Image Paths](#image-paths)
* [Optional](#optional)
  * [Refactor SCSS Code](#refactor-scss-code)
  * [Nav](#nav)
  * [Ordered Collections](#ordered-collections)
* [Completed](#completed)

<!-- /MarkdownTOC -->


The GET Conference repo.

<a id="questions"></a>
## Questions

* How is the updates.html redirect working?
* Speakers page, I changed the images to align to the top of the paragraph. Is that ok?

<a id="issues"></a>
## Issues

<a id="sidebar"></a>
### Sidebar

* Speaker and Organizer Font Styles

<a id="labs"></a>
### Labs

* Needs Desktop styles

<a id="collections"></a>
### Collections

* See if I can next collections under get2016, to reduce clutter and ensure continuity in future site iterations

<a id="relative-directories"></a>
#### Relative Directories
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

<a id="labs---row-alignments"></a>
#### Labs - Row Alignments

* The rows get entirely messed up here
  * Maybe introduce some divs??

<a id="homepage"></a>
### Homepage


<a id="speakers"></a>
### Speakers

* Alt Text for Speaker pics

<a id="image-paths"></a>
### Image Paths

* Revert image paths to original structure - will be better for future editing

<a id="optional"></a>
## Optional

<a id="refactor-scss-code"></a>
### Refactor SCSS Code

1. Change all #ids to .classes (keep in mind how this will affect markup for current and previous years):

```
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
```

* Reminder: I already changed #content and #content-wide to .content and .content-wide.
  * If I run into issues, check this first

<a id="nav"></a>
### Nav

* See about maybe integrating this code into the Nav (I think it highlights the current page?)

<a id="ordered-collections"></a>
### Ordered Collections

* Specify order in `_config.yml` file instead using variables. See Jekyll - [Manually Ordering Documents](https://jekyllrb.com/docs/collections/#manually-ordering-documents)

```html
{%- for path in page_paths -%}
  {%- assign my_page = site.pages | where: "path", path | first -%}
  {%- if my_page.title -%}
  <a class="page-link" href="{{ my_page.url | relative_url }}">{{ my_page.title | escape }}</a>
  {%- endif -%}
{%- endfor -%}
```

<a id="completed"></a>
## Completed

* Make Homepage fluid
* Sidebar - SPeakers & Organizer better markup (replace span w/ div)
* * 768-862px: Sidebar only showing 2 speakers
