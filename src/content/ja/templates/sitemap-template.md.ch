%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Sitemap templates
description: Hugo provides built-in sitemap templates.
categories: [templates]
keywords: [sitemap,xml,templates]
@y
title: サイトマップテンプレート
description: Hugo provides built-in sitemap templates.
categories: [templates]
keywords: [sitemap,xml,templates]
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
## Configuration
@y
## Configuration
@z

@x
Set the default values for [change frequency] and [priority], and the name of the generated file, in your site configuration.
@y
Set the default values for [change frequency] and [priority], and the name of the generated file, in your site configuration.
@z

@x
{{< code-toggle config=sitemap />}}
@y
{{< code-toggle config=sitemap />}}
@z

@x
changefreq
: How frequently a page is likely to change. Valid values are `always`, `hourly`, `daily`, `weekly`, `monthly`, `yearly`, and `never`. Default is `""` (change frequency omitted from rendered sitemap).
@y
changefreq
: How frequently a page is likely to change. Valid values are `always`, `hourly`, `daily`, `weekly`, `monthly`, `yearly`, and `never`. Default is `""` (change frequency omitted from rendered sitemap).
@z

@x
filename
: The name of the generated file. Default is `sitemap.xml`.
@y
filename
: The name of the generated file. Default is `sitemap.xml`.
@z

@x
priority
: The priority of a page relative to any other page on the site. Valid values range from 0.0 to 1.0. Default is `-1` (priority omitted from rendered sitemap).
@y
priority
: The priority of a page relative to any other page on the site. Valid values range from 0.0 to 1.0. Default is `-1` (priority omitted from rendered sitemap).
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
  priority = 0.8
{{</ code-toggle >}}
@y
{{< code-toggle file=news.md fm=true >}}
title = 'News'
[sitemap]
  changefreq = 'weekly'
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

% snip links...
