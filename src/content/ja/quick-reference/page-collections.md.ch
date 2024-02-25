%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Page collections
description: A quick reference guide to Hugo's page collections.
categories: [quick reference]
keywords: []
menu:
  docs:
    parent: quick-reference
    weight: 50
weight: 50
toc: true
---
@y
---
title: Page collections
description: A quick reference guide to Hugo's page collections.
categories: [quick reference]
keywords: []
menu:
  docs:
    parent: quick-reference
    weight: 50
weight: 50
toc: true
---
@z

@x
## Page
@y
## Page
@z

@x
Use these `Page` methods when rendering lists on [section] pages, [taxonomy] pages, [term] pages, and the home page.
@y
Use these `Page` methods when rendering lists on [section] pages, [taxonomy] pages, [term] pages, and the home page.
@z

@x
[section]: /getting-started/glossary/#section
[taxonomy]: /getting-started/glossary/#taxonomy
[term]: /getting-started/glossary/#term
@y
[section]: /getting-started/glossary/#section
[taxonomy]: /getting-started/glossary/#taxonomy
[term]: /getting-started/glossary/#term
@z

@x
{{< list-pages-in-section path=/methods/page filter=methods_page_page_collections filterType=include omitElementIDs=true titlePrefix=PAGE. >}}
@y
{{< list-pages-in-section path=/methods/page filter=methods_page_page_collections filterType=include omitElementIDs=true titlePrefix=PAGE. >}}
@z

@x
## Site
@y
## Site
@z

@x
Use these `Site` methods when rendering lists on any page.
@y
Use these `Site` methods when rendering lists on any page.
@z

@x
{{< list-pages-in-section path=/methods/site filter=methods_site_page_collections filterType=include omitElementIDs=true titlePrefix=SITE. >}}
@y
{{< list-pages-in-section path=/methods/site filter=methods_site_page_collections filterType=include omitElementIDs=true titlePrefix=SITE. >}}
@z

@x
## Filter
@y
## Filter
@z

@x
Use the [`where`] function to filter page collections.
@y
Use the [`where`] function to filter page collections.
@z

@x
[`where`]: /functions/collections/where/
@y
[`where`]: /functions/collections/where/
@z

@x
## Sort
@y
## Sort
@z

@x
Use these methods to sort page collections.
@y
Use these methods to sort page collections.
@z

@x
{{< list-pages-in-section path=/methods/pages filter=methods_pages_sort filterType=include titlePrefix=. omitElementIDs=true titlePrefix=PAGES. >}}
@y
{{< list-pages-in-section path=/methods/pages filter=methods_pages_sort filterType=include titlePrefix=. omitElementIDs=true titlePrefix=PAGES. >}}
@z

@x
## Group
@y
## Group
@z

@x
Use these methods to group page collections.
@y
Use these methods to group page collections.
@z

@x
{{< list-pages-in-section path=/methods/pages filter=methods_pages_group filterType=include titlePrefix=. omitElementIDs=true titlePrefix=PAGES. >}}
@y
{{< list-pages-in-section path=/methods/pages filter=methods_pages_group filterType=include titlePrefix=. omitElementIDs=true titlePrefix=PAGES. >}}
@z
