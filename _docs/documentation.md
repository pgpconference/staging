## GET Conference Documentation

Variables required when using `include_cached`:

`_includes/labs.html`:

```php
{%- assign labs_str = "site.labs" | append: page.year  -%}
{%- include labs.html col_name=labs_str -%}
```
