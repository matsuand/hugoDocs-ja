%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Template lookup order
description: Hugo uses the rules below to select a template for a given page, starting from the most specific.
categories: [templates,fundamentals]
keywords: [templates]
menu:
  docs:
    parent: templates
    weight: 30
weight: 30
toc: true
---
@y
---
title: テンプレートの適用順
description: Hugo uses the rules below to select a template for a given page, starting from the most specific.
categories: [templates,fundamentals]
keywords: [templates]
menu:
  docs:
    parent: templates
    weight: 30
weight: 30
toc: true
---
@z

@x
## Lookup rules
@y
## Lookup rules
@z

@x
Hugo takes the parameters listed below into consideration when choosing a template for a given page. The templates are ordered by specificity. This should feel natural, but look at the table below for concrete examples of the different parameter variations.
@y
Hugo takes the parameters listed below into consideration when choosing a template for a given page. The templates are ordered by specificity. This should feel natural, but look at the table below for concrete examples of the different parameter variations.
@z

@x
Kind
: The page `Kind` (the home page is one). See the example tables below per kind. This also determines if it is a **single page** (i.e. a regular content page. We then look for a template in `_default/single.html` for HTML) or a **list page** (section listings, home page, taxonomy lists, taxonomy terms. We then look for a template in `_default/list.html` for HTML).
@y
Kind
: The page `Kind` (the home page is one). See the example tables below per kind. This also determines if it is a **single page** (i.e. a regular content page. We then look for a template in `_default/single.html` for HTML) or a **list page** (section listings, home page, taxonomy lists, taxonomy terms. We then look for a template in `_default/list.html` for HTML).
@z

@x
Layout
: Can be set in front matter.
@y
Layout
: Can be set in front matter.
@z

@x
Output Format
: See [Custom Output Formats](/templates/output-formats). An output format has both a `name` (e.g. `rss`, `amp`, `html`) and a `suffix` (e.g. `xml`, `html`). We prefer matches with both (e.g. `index.amp.html`), but look for less specific templates.
@y
Output Format
: See [Custom Output Formats](/templates/output-formats). An output format has both a `name` (e.g. `rss`, `amp`, `html`) and a `suffix` (e.g. `xml`, `html`). We prefer matches with both (e.g. `index.amp.html`), but look for less specific templates.
@z

@x
Note that if the output format's Media Type has more than one suffix defined, only the first is considered.
@y
Note that if the output format's Media Type has more than one suffix defined, only the first is considered.
@z

@x
Language
: We will consider a language tag in the template name. If the site language is `fr`, `index.fr.amp.html` will win over `index.amp.html`, but `index.amp.html` will be chosen before `index.fr.html`.
@y
Language
: We will consider a language tag in the template name. If the site language is `fr`, `index.fr.amp.html` will win over `index.amp.html`, but `index.amp.html` will be chosen before `index.fr.html`.
@z

@x
Type
: Is value of `type` if set in front matter, else it is the name of the root section (e.g. "blog"). It will always have a value, so if not set, the value is "page".
@y
Type
: Is value of `type` if set in front matter, else it is the name of the root section (e.g. "blog"). It will always have a value, so if not set, the value is "page".
@z

@x
Section
: Is relevant for `section`, `taxonomy` and `term` types.
@y
Section
: Is relevant for `section`, `taxonomy` and `term` types.
@z

@x
{{% note %}}
Templates can live in either the project's or the themes' layout folders, and the most specific templates will be chosen. Hugo will interleave the lookups listed below, finding the most specific one either in the project or themes.
{{% /note %}}
@y
{{% note %}}
Templates can live in either the project's or the themes' layout folders, and the most specific templates will be chosen. Hugo will interleave the lookups listed below, finding the most specific one either in the project or themes.
{{% /note %}}
@z

@x
## Target a template
@y
## Target a template
@z

@x
You cannot change the lookup order to target a content page, but you can change a content page to target a template. Specify `type`, `layout`, or both in front matter.
@y
You cannot change the lookup order to target a content page, but you can change a content page to target a template. Specify `type`, `layout`, or both in front matter.
@z

@x
Consider this content structure:
@y
Consider this content structure:
@z

@x
```text
content/
├── about.md
└── contact.md
```
@y
```text
content/
├── about.md
└── contact.md
```
@z

@x
Files in the root of the content directory have a [content type] of `page`. To render these pages with a unique template, create a matching subdirectory:
@y
Files in the root of the content directory have a [content type] of `page`. To render these pages with a unique template, create a matching subdirectory:
@z

@x
[content type]: /getting-started/glossary/#content-type
@y
[content type]: /getting-started/glossary/#content-type
@z

@x
```text
layouts/
└── page/
    └── single.html
```
@y
```text
layouts/
└── page/
    └── single.html
```
@z

@x
But the contact page probably has a form and requires a different template. In the front matter specify `layout`:
@y
But the contact page probably has a form and requires a different template. In the front matter specify `layout`:
@z

@x
{{< code-toggle file=content/contact.md >}}
title = 'Contact'
layout = 'contact'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/contact.md >}}
title = 'Contact'
layout = 'contact'
{{< /code-toggle >}}
@z

@x
Then create the template for the contact page:
@y
Then create the template for the contact page:
@z

@x
```text
layouts/
└── page/
    └── contact.html  <-- renders contact.md
    └── single.html   <-- renders about.md
```
@y
```text
layouts/
└── page/
    └── contact.html  <-- renders contact.md
    └── single.html   <-- renders about.md
```
@z

@x
As a content type, the word `page` is vague. Perhaps `miscellaneous` would be better. Add `type` to the front matter of each page:
@y
As a content type, the word `page` is vague. Perhaps `miscellaneous` would be better. Add `type` to the front matter of each page:
@z

@x
{{< code-toggle file=content/about.md >}}
title = 'About'
type = 'miscellaneous'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/about.md >}}
title = 'About'
type = 'miscellaneous'
{{< /code-toggle >}}
@z

@x
{{< code-toggle file=content/contact.md >}}
title = 'Contact'
type = 'miscellaneous'
layout = 'contact'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/contact.md >}}
title = 'Contact'
type = 'miscellaneous'
layout = 'contact'
{{< /code-toggle >}}
@z

@x
Now place the layouts in the corresponding directory:
@y
Now place the layouts in the corresponding directory:
@z

@x
```text
layouts/
└── miscellaneous/
    └── contact.html  <-- renders contact.md
    └── single.html   <-- renders about.md
```
@y
```text
layouts/
└── miscellaneous/
    └── contact.html  <-- renders contact.md
    └── single.html   <-- renders about.md
```
@z

@x
## Home page
@y
## Home page
@z

@x
{{< datatable-filtered "output" "layouts" "Kind == home" "Example" "OutputFormat" "Suffix" "Template Lookup Order" >}}
@y
{{< datatable-filtered "output" "layouts" "Kind == home" "Example" "OutputFormat" "Suffix" "Template Lookup Order" >}}
@z

@x
## Single pages
@y
## Single pages
@z

@x
{{< datatable-filtered "output" "layouts" "Kind == page" "Example" "OutputFormat" "Suffix" "Template Lookup Order" >}}
@y
{{< datatable-filtered "output" "layouts" "Kind == page" "Example" "OutputFormat" "Suffix" "Template Lookup Order" >}}
@z

@x
## Section pages
@y
## Section pages
@z

@x
A section page is a list of pages within a given section.
@y
A section page is a list of pages within a given section.
@z

@x
{{< datatable-filtered "output" "layouts" "Kind == section" "Example" "OutputFormat" "Suffix" "Template Lookup Order" >}}
@y
{{< datatable-filtered "output" "layouts" "Kind == section" "Example" "OutputFormat" "Suffix" "Template Lookup Order" >}}
@z

@x
## Taxonomy pages
@y
## Taxonomy pages
@z

@x
A taxonomy page is a list of terms within a given taxonomy. The examples below assume the following site configuration:
@y
A taxonomy page is a list of terms within a given taxonomy. The examples below assume the following site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[taxonomies]
category = 'categories'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[taxonomies]
category = 'categories'
{{< /code-toggle >}}
@z

@x
{{< datatable-filtered "output" "layouts" "Kind == taxonomy" "Example" "OutputFormat" "Suffix" "Template Lookup Order" >}}
@y
{{< datatable-filtered "output" "layouts" "Kind == taxonomy" "Example" "OutputFormat" "Suffix" "Template Lookup Order" >}}
@z

@x
## Term pages
@y
## Term pages
@z

@x
A term page is a list of pages associated with a given term. The examples below assume the following site configuration:
@y
A term page is a list of pages associated with a given term. The examples below assume the following site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[taxonomies]
category = 'categories'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[taxonomies]
category = 'categories'
{{< /code-toggle >}}
@z

@x
{{< datatable-filtered "output" "layouts" "Kind == term" "Example" "OutputFormat" "Suffix" "Template Lookup Order" >}}
@y
{{< datatable-filtered "output" "layouts" "Kind == term" "Example" "OutputFormat" "Suffix" "Template Lookup Order" >}}
@z
