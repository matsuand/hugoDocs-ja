%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Sitemap templates
description: Hugo provides built-in sitemap templates.
categories: [templates]
keywords: [sitemap,xml,templates]
menu:
  docs:
    parent: templates
    weight: 170
weight: 170
toc: true
aliases: [/layout/sitemap/,/templates/sitemap/]
---
@y
---
title: サイトマップテンプレート
description: Hugo provides built-in sitemap templates.
categories: [templates]
keywords: [sitemap,xml,templates]
menu:
  docs:
    parent: templates
    weight: 170
weight: 170
toc: true
aliases: [/layout/sitemap/,/templates/sitemap/]
---
@z

@x
## Overview
@y
## Overview
@z

@x
Hugo's embedded sitemap templates conform to v0.9 of the [sitemap protocol].
@y
Hugo's embedded sitemap templates conform to v0.9 of the [sitemap protocol].
@z

@x
With a monolingual project, Hugo generates a sitemap.xml file in the root of the [`publishDir`] using the [embedded sitemap template].
@y
With a monolingual project, Hugo generates a sitemap.xml file in the root of the [`publishDir`] using the [embedded sitemap template].
@z

@x
With a multilingual project, Hugo generates:
@y
With a multilingual project, Hugo generates:
@z

@x
- A sitemap.xml file in the root of each site (language) using the [embedded sitemap template]
- A sitemap.xml file in the root of the [`publishDir`] using the [embedded sitemapindex template]
@y
- A sitemap.xml file in the root of each site (language) using the [embedded sitemap template]
- A sitemap.xml file in the root of the [`publishDir`] using the [embedded sitemapindex template]
@z

@x
[embedded sitemap template]: {{% eturl sitemap %}}
[embedded sitemapindex template]: {{% eturl sitemapindex %}}
@y
[embedded sitemap template]: {{% eturl sitemap %}}
[embedded sitemapindex template]: {{% eturl sitemapindex %}}
@z

@x
## Configuration
@y
## Configuration
@z

@x
These are the default sitemap configuration values. They apply to all pages unless overridden in front matter.
@y
These are the default sitemap configuration values. They apply to all pages unless overridden in front matter.
@z

@x
{{< code-toggle config=sitemap />}}
@y
{{< code-toggle config=sitemap />}}
@z

@x
changefreq
: (`string`) How frequently a page is likely to change. Valid values are `always`, `hourly`, `daily`, `weekly`, `monthly`, `yearly`, and `never`. With the default value of `""` Hugo will omit this field from the sitemap. See [details](https://www.sitemaps.org/protocol.html#changefreqdef).
@y
changefreq
: (`string`) How frequently a page is likely to change. Valid values are `always`, `hourly`, `daily`, `weekly`, `monthly`, `yearly`, and `never`. With the default value of `""` Hugo will omit this field from the sitemap. See [details](https://www.sitemaps.org/protocol.html#changefreqdef).
@z

@x
disable {{< new-in 0.125.0 >}}
: (`bool`) Whether to disable page inclusion. Default is `false`. Set to `true` in front matter to exclude the page.
@y
disable {{< new-in 0.125.0 >}}
: (`bool`) Whether to disable page inclusion. Default is `false`. Set to `true` in front matter to exclude the page.
@z

@x
filename
: (`string`) The name of the generated file. Default is `sitemap.xml`.
@y
filename
: (`string`) The name of the generated file. Default is `sitemap.xml`.
@z

@x
priority
: (`float`) The priority of a page relative to any other page on the site. Valid values range from 0.0 to 1.0.  With the default value of `-1` Hugo will omit this field from the sitemap. See [details](https://www.sitemaps.org/protocol.html#priority).
@y
priority
: (`float`) The priority of a page relative to any other page on the site. Valid values range from 0.0 to 1.0.  With the default value of `-1` Hugo will omit this field from the sitemap. See [details](https://www.sitemaps.org/protocol.html#priority).
@z

@x
## Override default values
@y
## Override default values
@z

@x
Override the default values for a given page in front matter.
@y
Override the default values for a given page in front matter.
@z

@x
{{< code-toggle file=news.md fm=true >}}
title = 'News'
[sitemap]
  changefreq = 'weekly'
  disable = true
  priority = 0.8
{{</ code-toggle >}}
@y
{{< code-toggle file=news.md fm=true >}}
title = 'News'
[sitemap]
  changefreq = 'weekly'
  disable = true
  priority = 0.8
{{</ code-toggle >}}
@z

@x
## Override built-in templates
@y
## Override built-in templates
@z

@x
To override the built-in sitemap.xml template, create a new file in either of these locations:
@y
To override the built-in sitemap.xml template, create a new file in either of these locations:
@z

@x
- layouts/sitemap.xml
- layouts/_default/sitemap.xml
@y
- layouts/sitemap.xml
- layouts/_default/sitemap.xml
@z

@x
When ranging through the page collection, access the _change frequency_ and _priority_ with `.Sitemap.ChangeFreq` and `.Sitemap.Priority` respectively.
@y
When ranging through the page collection, access the _change frequency_ and _priority_ with `.Sitemap.ChangeFreq` and `.Sitemap.Priority` respectively.
@z

@x
To override the built-in sitemapindex.xml template, create a new file in either of these locations:
@y
To override the built-in sitemapindex.xml template, create a new file in either of these locations:
@z

@x
- layouts/sitemapindex.xml
- layouts/_default/sitemapindex.xml
@y
- layouts/sitemapindex.xml
- layouts/_default/sitemapindex.xml
@z

@x
## Disable sitemap generation
@y
## Disable sitemap generation
@z

@x
You may disable sitemap generation in your site configuration:
@y
You may disable sitemap generation in your site configuration:
@z

@x
{{< code-toggle file=hugo >}}
disableKinds = ['sitemap']
{{</ code-toggle >}}
@y
{{< code-toggle file=hugo >}}
disableKinds = ['sitemap']
{{</ code-toggle >}}
@z

@x
[`publishDir`]: /getting-started/configuration#publishdir
[sitemap protocol]: <https://www.sitemaps.org/protocol.html>
@y
[`publishDir`]: /getting-started/configuration#publishdir
[sitemap protocol]: <https://www.sitemaps.org/protocol.html>
@z
