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

### Agenda
  * Double check that the info on here is accurate

### Homepage

* Make Homepage fluid

### Speakers

* Alt Text for Speaker pics


## Optional

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
