%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Pages
description: Returns a collection of regular pages within the current section, and section pages of immediate descendant sections.
categories: []
keywords: []
action:
  related:
    - methods/page/RegularPages
    - methods/page/RegularPagesRecursive
  returnType: page.Pages
  signatures: [PAGE.Pages]
---
@y
---
title: Pages
description: Returns a collection of regular pages within the current section, and section pages of immediate descendant sections.
categories: []
keywords: []
action:
  related:
    - methods/page/RegularPages
    - methods/page/RegularPagesRecursive
  returnType: page.Pages
  signatures: [PAGE.Pages]
---
@z

@x
The `Pages` method on a `Page` object is available to these [page kinds]: `home`, `section`, `taxonomy`, and `term`. The templates for these page kinds receive a page [collection] in [context].
@y
The `Pages` method on a `Page` object is available to these [page kinds]: `home`, `section`, `taxonomy`, and `term`. The templates for these page kinds receive a page [collection] in [context].
@z

@x
Range through the page collection in your template:
@y
Range through the page collection in your template:
@z

@x
```go-html-template
{{ range .Pages.ByTitle }}
  <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Pages.ByTitle }}
  <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
{{ end }}
```
@z

@x
Consider this content structure:
@y
Consider this content structure:
@z

@x
```text
content/
├── lessons/
│   ├── lesson-1/
│   │   ├── _index.md
│   │   ├── part-1.md
│   │   └── part-2.md
│   ├── lesson-2/
│   │   ├── resources/
│   │   │   ├── task-list.md
│   │   │   └── worksheet.md
│   │   ├── _index.md
│   │   ├── part-1.md
│   │   └── part-2.md
│   ├── _index.md
│   ├── grading-policy.md
│   └── lesson-plan.md
├── _index.md
├── contact.md
└── legal.md
```
@y
```text
content/
├── lessons/
│   ├── lesson-1/
│   │   ├── _index.md
│   │   ├── part-1.md
│   │   └── part-2.md
│   ├── lesson-2/
│   │   ├── resources/
│   │   │   ├── task-list.md
│   │   │   └── worksheet.md
│   │   ├── _index.md
│   │   ├── part-1.md
│   │   └── part-2.md
│   ├── _index.md
│   ├── grading-policy.md
│   └── lesson-plan.md
├── _index.md
├── contact.md
└── legal.md
```
@z

@x
When rendering the home page, the `Pages` method returns:
@y
When rendering the home page, the `Pages` method returns:
@z

@x
    contact.md
    legal.md
    lessons/_index.md
@y
    contact.md
    legal.md
    lessons/_index.md
@z

@x
When rendering the lessons page, the `Pages` method returns:
@y
When rendering the lessons page, the `Pages` method returns:
@z

@x
    lessons/grading-policy.md
    lessons/lesson-plan.md
    lessons/lesson-1/_index.md
    lessons/lesson-2/_index.md
@y
    lessons/grading-policy.md
    lessons/lesson-plan.md
    lessons/lesson-1/_index.md
    lessons/lesson-2/_index.md
@z

@x
When rendering lesson-1, the `Pages` method returns:
@y
When rendering lesson-1, the `Pages` method returns:
@z

@x
    lessons/lesson-1/part-1.md
    lessons/lesson-1/part-2.md
@y
    lessons/lesson-1/part-1.md
    lessons/lesson-1/part-2.md
@z

@x
When rendering lesson-2, the `Pages` method returns:
@y
When rendering lesson-2, the `Pages` method returns:
@z

@x
    lessons/lesson-2/part-1.md
    lessons/lesson-2/part-2.md
    lessons/lesson-2/resources/task-list.md
    lessons/lesson-2/resources/worksheet.md
@y
    lessons/lesson-2/part-1.md
    lessons/lesson-2/part-2.md
    lessons/lesson-2/resources/task-list.md
    lessons/lesson-2/resources/worksheet.md
@z

@x
In the last example, the collection includes pages in the resources subdirectory. That directory is not a [section]---it does not contain an _index.md file. Its contents are part of the lesson-2 section.
@y
In the last example, the collection includes pages in the resources subdirectory. That directory is not a [section]---it does not contain an _index.md file. Its contents are part of the lesson-2 section.
@z

@x
{{% note %}}
When used with a `Site` object, the `Pages` method recursively returns all pages within the site. See&nbsp;[details].
@y
{{% note %}}
When used with a `Site` object, the `Pages` method recursively returns all pages within the site. See&nbsp;[details].
@z

@x
[details]: /methods/site/pages/
{{% /note %}}
@y
[details]: /methods/site/pages/
{{% /note %}}
@z

@x
```go-html-template
{{ range .Site.Pages.ByTitle }}
  <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .Site.Pages.ByTitle }}
  <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
{{ end }}
```
@z

@x
[collection]: /getting-started/glossary/#collection
[context]: /getting-started/glossary/#context
[page kinds]: /getting-started/glossary/#page-kind
[section]: /getting-started/glossary/#section
@y
[collection]: /getting-started/glossary/#collection
[context]: /getting-started/glossary/#context
[page kinds]: /getting-started/glossary/#page-kind
[section]: /getting-started/glossary/#section
@z
