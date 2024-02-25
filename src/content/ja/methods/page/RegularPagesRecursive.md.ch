%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: RegularPagesRecursive
description: Returns a collection of regular pages within the current section, and regular pages within all descendant sections.
categories: []
keywords: []
action:
  related:
    - methods/page/Pages
    - methods/page/RegularPages
  returnType: page.Pages
  signatures: [PAGE.RegularPagesRecursive]
---
@y
---
title: RegularPagesRecursive
description: Returns a collection of regular pages within the current section, and regular pages within all descendant sections.
categories: []
keywords: []
action:
  related:
    - methods/page/Pages
    - methods/page/RegularPages
  returnType: page.Pages
  signatures: [PAGE.RegularPagesRecursive]
---
@z

@x
The `RegularPagesRecursive` method on a `Page` object is available to these [page kinds]: `home`, `section`, `taxonomy`, and `term`. The templates for these page kinds receive a page [collection] in [context].
@y
The `RegularPagesRecursive` method on a `Page` object is available to these [page kinds]: `home`, `section`, `taxonomy`, and `term`. The templates for these page kinds receive a page [collection] in [context].
@z

@x
Range through the page collection in your template:
@y
Range through the page collection in your template:
@z

@x
```go-html-template
{{ range .RegularPagesRecursive.ByTitle }}
  <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
{{ end }}
```
@y
```go-html-template
{{ range .RegularPagesRecursive.ByTitle }}
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
When rendering the home page, the `RegularPagesRecursive` method returns:
@y
When rendering the home page, the `RegularPagesRecursive` method returns:
@z

@x
    contact.md
    lessons/grading-policy.md
    legal.md
    lessons/lesson-plan.md
    lessons/lesson-2/part-1.md
    lessons/lesson-1/part-1.md
    lessons/lesson-2/part-2.md
    lessons/lesson-1/part-2.md
    lessons/lesson-2/resources/task-list.md
    lessons/lesson-2/resources/worksheet.md
@y
    contact.md
    lessons/grading-policy.md
    legal.md
    lessons/lesson-plan.md
    lessons/lesson-2/part-1.md
    lessons/lesson-1/part-1.md
    lessons/lesson-2/part-2.md
    lessons/lesson-1/part-2.md
    lessons/lesson-2/resources/task-list.md
    lessons/lesson-2/resources/worksheet.md
@z

@x
When rendering the lessons page, the `RegularPagesRecursive` method returns:
@y
When rendering the lessons page, the `RegularPagesRecursive` method returns:
@z

@x
    lessons/grading-policy.md
    lessons/lesson-plan.md
    lessons/lesson-2/part-1.md
    lessons/lesson-1/part-1.md
    lessons/lesson-2/part-2.md
    lessons/lesson-1/part-2.md
    lessons/lesson-2/resources/task-list.md
    lessons/lesson-2/resources/worksheet.md
@y
    lessons/grading-policy.md
    lessons/lesson-plan.md
    lessons/lesson-2/part-1.md
    lessons/lesson-1/part-1.md
    lessons/lesson-2/part-2.md
    lessons/lesson-1/part-2.md
    lessons/lesson-2/resources/task-list.md
    lessons/lesson-2/resources/worksheet.md
@z

@x
When rendering lesson-1, the `RegularPagesRecursive` method returns:
@y
When rendering lesson-1, the `RegularPagesRecursive` method returns:
@z

@x
    lessons/lesson-1/part-1.md
    lessons/lesson-1/part-2.md
@y
    lessons/lesson-1/part-1.md
    lessons/lesson-1/part-2.md
@z

@x
When rendering lesson-2, the `RegularPagesRecursive` method returns:
@y
When rendering lesson-2, the `RegularPagesRecursive` method returns:
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
{{% note %}}
The `RegularPagesRecursive` method in not available on a `Site` object.
{{% /note %}}
@y
{{% note %}}
The `RegularPagesRecursive` method in not available on a `Site` object.
{{% /note %}}
@z

@x
[collection]: /getting-started/glossary/#collection
[context]: /getting-started/glossary/#context
[page kinds]: /getting-started/glossary/#page-kind
@y
[collection]: /getting-started/glossary/#collection
[context]: /getting-started/glossary/#context
[page kinds]: /getting-started/glossary/#page-kind
@z
