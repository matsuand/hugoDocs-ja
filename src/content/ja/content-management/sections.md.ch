%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Sections
description: Organize content into sections.
@y
---
title: Sections
description: Organize content into sections.
@z

@x
categories: [content management]
keywords: [lists,sections,content types,organization]
menu:
  docs:
    parent: content-management
    weight: 120
weight: 120
toc: true
aliases: [/content/sections/]
---
@y
categories: [content management]
keywords: [lists,sections,content types,organization]
menu:
  docs:
    parent: content-management
    weight: 120
weight: 120
toc: true
aliases: [/content/sections/]
---
@z

@x
## Overview
@y
## Overview
@z

@x
A section is a top-level content directory, or any content directory with an&nbsp;_index.md file. A content directory with an _index.md file is also known as a [branch bundle](/getting-started/glossary/#branch-bundle). Section templates receive one or more page [collections](/getting-started/glossary/#collection) in [context](/getting-started/glossary/#context).
@y
A section is a top-level content directory, or any content directory with an&nbsp;_index.md file. A content directory with an _index.md file is also known as a [branch bundle](/getting-started/glossary/#branch-bundle). Section templates receive one or more page [collections](/getting-started/glossary/#collection) in [context](/getting-started/glossary/#context).
@z

@x
{{% note %}}
Although top-level directories without _index.md files are sections, we recommend creating _index.md files in _all_ sections.
{{% /note %}}
@y
{{% note %}}
Although top-level directories without _index.md files are sections, we recommend creating _index.md files in _all_ sections.
{{% /note %}}
@z

@x
A typical site consists of one or more sections. For example:
@y
A typical site consists of one or more sections. For example:
@z

@x
```text
content/
├── articles/             <-- section (top-level directory)
│   ├── 2022/
│   │   ├── article-1/
│   │   │   ├── cover.jpg
│   │   │   └── index.md
│   │   └── article-2.md
│   └── 2023/
│       ├── article-3.md
│       └── article-4.md
├── products/             <-- section (top-level directory)
│   ├── product-1/        <-- section (has _index.md file)
│   │   ├── benefits/     <-- section (has _index.md file)
│   │   │   ├── _index.md
│   │   │   ├── benefit-1.md
│   │   │   └── benefit-2.md
│   │   ├── features/     <-- section (has _index.md file)
│   │   │   ├── _index.md
│   │   │   ├── feature-1.md
│   │   │   └── feature-2.md
│   │   └── _index.md
│   └── product-2/        <-- section (has _index.md file)
│       ├── benefits/     <-- section (has _index.md file)
│       │   ├── _index.md
│       │   ├── benefit-1.md
│       │   └── benefit-2.md
│       ├── features/     <-- section (has _index.md file)
│       │   ├── _index.md
│       │   ├── feature-1.md
│       │   └── feature-2.md
│       └── _index.md
├── _index.md
└── about.md
```
@y
```text
content/
├── articles/             <-- section (top-level directory)
│   ├── 2022/
│   │   ├── article-1/
│   │   │   ├── cover.jpg
│   │   │   └── index.md
│   │   └── article-2.md
│   └── 2023/
│       ├── article-3.md
│       └── article-4.md
├── products/             <-- section (top-level directory)
│   ├── product-1/        <-- section (has _index.md file)
│   │   ├── benefits/     <-- section (has _index.md file)
│   │   │   ├── _index.md
│   │   │   ├── benefit-1.md
│   │   │   └── benefit-2.md
│   │   ├── features/     <-- section (has _index.md file)
│   │   │   ├── _index.md
│   │   │   ├── feature-1.md
│   │   │   └── feature-2.md
│   │   └── _index.md
│   └── product-2/        <-- section (has _index.md file)
│       ├── benefits/     <-- section (has _index.md file)
│       │   ├── _index.md
│       │   ├── benefit-1.md
│       │   └── benefit-2.md
│       ├── features/     <-- section (has _index.md file)
│       │   ├── _index.md
│       │   ├── feature-1.md
│       │   └── feature-2.md
│       └── _index.md
├── _index.md
└── about.md
```
@z

@x
The example above has two top-level sections: articles and products. None of the directories under articles are sections, while all of the directories under products are sections. A section within a section is a known as a nested section or subsection.
@y
The example above has two top-level sections: articles and products. None of the directories under articles are sections, while all of the directories under products are sections. A section within a section is a known as a nested section or subsection.
@z

@x
## Explanation
@y
## Explanation
@z

@x
Sections and non-sections behave differently.
@y
Sections and non-sections behave differently.
@z

@x
||Sections|Non-sections
:--|:-:|:-:
Directory names become URL segments|:heavy_check_mark:|:heavy_check_mark:
Have logical ancestors and descendants|:heavy_check_mark:|:x:
Have list pages|:heavy_check_mark:|:x:
@y
||Sections|Non-sections
:--|:-:|:-:
Directory names become URL segments|:heavy_check_mark:|:heavy_check_mark:
Have logical ancestors and descendants|:heavy_check_mark:|:x:
Have list pages|:heavy_check_mark:|:x:
@z

@x
With the file structure from the [example above](#overview):
@y
With the file structure from the [example above](#overview):
@z

@x
1. The list page for the articles section includes all articles, regardless of directory structure; none of the subdirectories are sections.
@y
1. The list page for the articles section includes all articles, regardless of directory structure; none of the subdirectories are sections.
@z

@x
1. The articles/2022 and articles/2023 directories do not have list pages; they are not sections.
@y
1. The articles/2022 and articles/2023 directories do not have list pages; they are not sections.
@z

@x
1. The list page for the products section, by default, includes product-1 and product-2, but not their descendant pages. To include descendant pages, use the `RegularPagesRecursive` method instead of the `Pages` method in the list template.
@y
1. The list page for the products section, by default, includes product-1 and product-2, but not their descendant pages. To include descendant pages, use the `RegularPagesRecursive` method instead of the `Pages` method in the list template.
@z

@x
[`Pages`]: /methods/page/pages/
[`RegularPagesRecursive`]: /methods/page/regularpagesrecursive/
@y
[`Pages`]: /methods/page/pages/
[`RegularPagesRecursive`]: /methods/page/regularpagesrecursive/
@z

@x
1. All directories in the products section have list pages; each directory is a section.
@y
1. All directories in the products section have list pages; each directory is a section.
@z

@x
## Template selection
@y
## Template selection
@z

@x
Hugo has a defined [lookup order] to determine which template to use when rendering a page. The [lookup rules] consider the top-level section name; subsection names are not considered when selecting a template.
@y
Hugo has a defined [lookup order] to determine which template to use when rendering a page. The [lookup rules] consider the top-level section name; subsection names are not considered when selecting a template.
@z

@x
With the file structure from the [example above](#overview):
@y
With the file structure from the [example above](#overview):
@z

@x
Content directory|List page template
:--|:--
content/products|layouts/products/list.html
content/products/product-1|layouts/products/list.html
content/products/product-1/benefits|layouts/products/list.html
@y
Content directory|List page template
:--|:--
content/products|layouts/products/list.html
content/products/product-1|layouts/products/list.html
content/products/product-1/benefits|layouts/products/list.html
@z

@x
Content directory|Single page template
:--|:--
content/products|layouts/products/single.html
content/products/product-1|layouts/products/single.html
content/products/product-1/benefits|layouts/products/single.html
@y
Content directory|Single page template
:--|:--
content/products|layouts/products/single.html
content/products/product-1|layouts/products/single.html
content/products/product-1/benefits|layouts/products/single.html
@z

@x
If you need to use a different template for a subsection, specify `type` and/or `layout` in front matter.
@y
If you need to use a different template for a subsection, specify `type` and/or `layout` in front matter.
@z

@x
[lookup rules]: /templates/lookup-order/#lookup-rules
[lookup order]: /templates/lookup-order/
@y
[lookup rules]: /templates/lookup-order/#lookup-rules
[lookup order]: /templates/lookup-order/
@z

@x
## Ancestors and descendants
@y
## Ancestors and descendants
@z

@x
A section has one or more ancestors (including the home page), and zero or more descendants. With the file structure from the [example above](#overview):
@y
A section has one or more ancestors (including the home page), and zero or more descendants. With the file structure from the [example above](#overview):
@z

@x
```text
content/products/product-1/benefits/benefit-1.md
```
@y
```text
content/products/product-1/benefits/benefit-1.md
```
@z

@x
The content file (benefit-1.md) has four ancestors: benefits, product-1, products, and the home page. This logical relationship allows us to use the `.Parent` and `.Ancestors` methods to traverse the site structure.
@y
The content file (benefit-1.md) has four ancestors: benefits, product-1, products, and the home page. This logical relationship allows us to use the `.Parent` and `.Ancestors` methods to traverse the site structure.
@z

@x
For example, use the `.Ancestors` method to render breadcrumb navigation.
@y
For example, use the `.Ancestors` method to render breadcrumb navigation.
@z

@x
{{< code file=layouts/partials/breadcrumb.html >}}
<nav aria-label="breadcrumb" class="breadcrumb">
  <ol>
    {{ range .Ancestors.Reverse }}
      <li>
        <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
      </li>
    {{ end }}
    <li class="active">
      <a aria-current="page" href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
    </li>
  </ol>
</nav>
{{< /code >}}
@y
{{< code file=layouts/partials/breadcrumb.html >}}
<nav aria-label="breadcrumb" class="breadcrumb">
  <ol>
    {{ range .Ancestors.Reverse }}
      <li>
        <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
      </li>
    {{ end }}
    <li class="active">
      <a aria-current="page" href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
    </li>
  </ol>
</nav>
{{< /code >}}
@z

@x
With this CSS:
@y
With this CSS:
@z

@x
```css
.breadcrumb ol {
  padding-left: 0;
}
@y
```css
.breadcrumb ol {
  padding-left: 0;
}
@z

@x
.breadcrumb li {
  display: inline;
}
@y
.breadcrumb li {
  display: inline;
}
@z

@x
.breadcrumb li:not(:last-child)::after {
  content: "»";
}
```
@y
.breadcrumb li:not(:last-child)::after {
  content: "»";
}
```
@z

@x
Hugo renders this, where each breadcrumb is a link to the corresponding page:
@y
Hugo renders this, where each breadcrumb is a link to the corresponding page:
@z

@x
```text
Home » Products » Product 1 » Benefits » Benefit 1
```
@y
```text
Home » Products » Product 1 » Benefits » Benefit 1
```
@z

@x
[archetype]: /content-management/archetypes/
[content type]: /content-management/types/
[directory structure]: /getting-started/directory-structure/
[section templates]: /templates/section-templates/
[leaf bundles]: /content-management/page-bundles/#leaf-bundles
[branch bundles]: /content-management/page-bundles/#branch-bundles
@y
[archetype]: /content-management/archetypes/
[content type]: /content-management/types/
[directory structure]: /getting-started/directory-structure/
[section templates]: /templates/section-templates/
[leaf bundles]: /content-management/page-bundles/#leaf-bundles
[branch bundles]: /content-management/page-bundles/#branch-bundles
@z
