# GET Conference Website

The GET Conference repo.

## Questions

* How is the updates.html redirect working?
* Speakers page, I changed the images to align to the top of the paragraph. Is that ok?

## Issues

### Semantic HTML Tags

* Recode lists, tables, etc, with proper tags

### Collections

* Double check spelling and filenames for 2016 Speakers
  * Add id to their sidebar url, so clicking the homepage link brings you right to the speaker
* Create better collections structure, so as to not clutter top_dir

#### Labs - Row Alignments

* The rows get entirely messed up here
  * Maybe introduce some divs??

### Agenda
  * Double check that the info on here is accurate

### Homepage

* Make Homepage fluid

### Speakers

* Alt Text for Speaker pics

### Image Paths

* Revert image paths to original structure - will be better for future editing

## Optional

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

### Nav

* See about maybe integrating this code into the Nav (I think it highlights the current page?)

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
