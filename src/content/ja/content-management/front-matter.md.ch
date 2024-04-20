%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Front matter
description: Use front matter to add metadata to your content.
categories: [content management]
keywords: [front matter,yaml,toml,json,metadata,archetypes]
@y
title: フロントマター
description: フロントマターを使ってコンテントにメタデータを追加します。
categories: [content management]
keywords: [front matter,yaml,toml,json,metadata,archetypes]
@z

@x
## Overview
@y
## Overview
@z

@x
The front matter at the top of each content file is metadata that:
@y
各コンテントファイルの最上段にあるフロントマター (front matter) というものはメタデータであり、以下の目的を実現します。
@z

@x
- Describes the content
- Augments the content
- Establishes relationships with other content
- Controls the published structure of your site
- Determines template selection
@y
- コンテントの説明を行います。
- コンテントの拡張を行います。
- 他のコンテントの関係を設定します。
- サイト公開時の構成を制御します。
- テンプレートの選定を行います。
@z

@x
Provide front matter using a serialization format, one of [JSON], [TOML], or [YAML]. Hugo determines the front matter format by examining the delimiters that separate the front matter from the page content.
@y
Provide front matter using a serialization format, one of [JSON], [TOML], or [YAML]. Hugo determines the front matter format by examining the delimiters that separate the front matter from the page content.
@z

@x
[json]: https://www.json.org/
[toml]: https://toml.io/
[yaml]: https://yaml.org/
@y
[json]: https://www.json.org/
[toml]: https://toml.io/
[yaml]: https://yaml.org/
@z

@x
See examples of front matter delimiters by toggling between the serialization formats below.
@y
See examples of front matter delimiters by toggling between the serialization formats below.
@z

@x
{{< code-toggle file=content/example.md fm=true >}}
title = 'Example'
date = 2024-02-02T04:14:54-08:00
draft = false
weight = 10
[params]
author = 'John Smith'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/example.md fm=true >}}
title = 'Example'
date = 2024-02-02T04:14:54-08:00
draft = false
weight = 10
[params]
author = 'John Smith'
{{< /code-toggle >}}
@z

@x
Front matter fields may be [scalar], [arrays], or [maps] containing [boolean], [integer], [float], or [string] values. Note that the TOML format also supports date/time values using unquoted strings.
@y
Front matter fields may be [scalar], [arrays], or [maps] containing [boolean], [integer], [float], or [string] values. Note that the TOML format also supports date/time values using unquoted strings.
@z

@x
[scalar]: /getting-started/glossary/#scalar
[arrays]: /getting-started/glossary/#array
[maps]: /getting-started/glossary/#map
[boolean]: /getting-started/glossary/#boolean
[integer]: /getting-started/glossary/#integer
[float]: /getting-started/glossary/#float
[string]: /getting-started/glossary/#string
@y
[scalar]: /getting-started/glossary/#scalar
[arrays]: /getting-started/glossary/#array
[maps]: /getting-started/glossary/#map
[boolean]: /getting-started/glossary/#boolean
[integer]: /getting-started/glossary/#integer
[float]: /getting-started/glossary/#float
[string]: /getting-started/glossary/#string
@z

@x
## Fields
@y
## Fields
@z

@x
The most common front matter fields are `date`, `draft`, `title`, and `weight`, but you can specify metadata using any of fields below.
@y
The most common front matter fields are `date`, `draft`, `title`, and `weight`, but you can specify metadata using any of fields below.
@z

@x note
The field names below are reserved. For example, you cannot create a custom field named `type`. Create custom fields under the `params` key. See the [parameters] section for details.
@y
The field names below are reserved. For example, you cannot create a custom field named `type`. Create custom fields under the `params` key. See the [parameters] section for details.
@z

% snip link...

@x
###### aliases
@y
###### aliases
@z

@x
(`string array`) An array of one or more aliases, where each alias is a relative URL that will redirect the browser to the current location. Access these values from a template using the [`Aliases`] method on a `Page` object. See the [aliases] section for details.
@y
(`string array`) An array of one or more aliases, where each alias is a relative URL that will redirect the browser to the current location. Access these values from a template using the [`Aliases`] method on a `Page` object. See the [aliases] section for details.
@z

% snip links...

@x
###### build
@y
###### build
@z

@x
(`map`) A map of [build options].
@y
(`map`) A map of [build options].
@z

@x
[build options]: /content-management/build-options/
@y
[build options]: /content-management/build-options/
@z

@x
###### cascade {#cascade-field}
@y
###### cascade {#cascade-field}
@z

@x
(`map`) A map of front matter keys whose values are passed down to the page’s descendants unless overwritten by self or a closer ancestor’s cascade. See the [cascade] section for details.
@y
(`map`) A map of front matter keys whose values are passed down to the page’s descendants unless overwritten by self or a closer ancestor’s cascade. See the [cascade] section for details.
@z

% snip link...

@x
###### date
@y
###### date
@z

@x
(`string`) The date associated with the page, typically the creation date. Note that the TOML format also supports date/time values using unquoted strings. Access this value from a template using the [`Date`] method on a `Page` object.
@y
(`string`) The date associated with the page, typically the creation date. Note that the TOML format also supports date/time values using unquoted strings. Access this value from a template using the [`Date`] method on a `Page` object.
@z

% snip link...

@x
###### description
@y
###### description
@z

@x
(`string`) Conceptually different than the page `summary`, the description is typically rendered within a `meta` element within the `head` element of the published HTML file. Access this value from a template using the [`Description`] method on a `Page` object.
@y
(`string`) Conceptually different than the page `summary`, the description is typically rendered within a `meta` element within the `head` element of the published HTML file. Access this value from a template using the [`Description`] method on a `Page` object.
@z

% snip link...

@x
###### draft
@y
###### draft
@z

@x
(`bool`)
If `true`, the page will not be rendered unless you pass the `--buildDrafts` flag to the `hugo` command. Access this value from a template using the [`Draft`] method on a `Page` object.
@y
(`bool`)
If `true`, the page will not be rendered unless you pass the `--buildDrafts` flag to the `hugo` command. Access this value from a template using the [`Draft`] method on a `Page` object.
@z

% snip link...

@x
###### expiryDate
@y
###### expiryDate
@z

@x
(`string`) The page expiration date. On or after the expiration date, the page will not be rendered unless you pass the `--buildExpired` flag to the `hugo` command. Note that the TOML format also supports date/time values using unquoted strings. Access this value from a template using the [`ExpiryDate`] method on a `Page` object.
@y
(`string`) The page expiration date. On or after the expiration date, the page will not be rendered unless you pass the `--buildExpired` flag to the `hugo` command. Note that the TOML format also supports date/time values using unquoted strings. Access this value from a template using the [`ExpiryDate`] method on a `Page` object.
@z

% snip link...

@x
###### headless
@y
###### headless
@z

@x
(`bool`) Applicable to [leaf bundles], if `true` this value sets the `render` and `list` [build options] to `never`, creating a headless bundle of [page resources].
@y
(`bool`) Applicable to [leaf bundles], if `true` this value sets the `render` and `list` [build options] to `never`, creating a headless bundle of [page resources].
@z

% snip links...

@x
###### isCJKLanguage
@y
###### isCJKLanguage
@z

@x
(`bool`) Set to `true` if the content language is in the [CJK] family. This value determines how Hugo calculates word count, and affects the values returned by the [`WordCount`], [`FuzzyWordCount`], [`ReadingTime`], and [`Summary`] methods on a `Page` object.
@y
(`bool`) Set to `true` if the content language is in the [CJK] family. This value determines how Hugo calculates word count, and affects the values returned by the [`WordCount`], [`FuzzyWordCount`], [`ReadingTime`], and [`Summary`] methods on a `Page` object.
@z

% snip links...

@x
###### keywords
@y
###### keywords
@z

@x
(`string array`) An array of keywords, typically rendered within a `meta` element within the `head` element of the published HTML file, or used as a [taxonomy] to classify content. Access these values from a template using the [`Keywords`] method on a `Page` object.
@y
(`string array`) An array of keywords, typically rendered within a `meta` element within the `head` element of the published HTML file, or used as a [taxonomy] to classify content. Access these values from a template using the [`Keywords`] method on a `Page` object.
@z

% snip links...

@x
<!-- Added in v0.123.0 but purposefully omitted from documentation. -->
<!--
kind
: The kind of page, e.g. "page", "section", "home" etc. This is usually derived from the content path.
-->
@y
<!-- Added in v0.123.0 but purposefully omitted from documentation. -->
<!--
kind
: The kind of page, e.g. "page", "section", "home" etc. This is usually derived from the content path.
-->
@z

@x
<!-- Added in v0.123.0 but purposefully omitted from documentation. -->
<!--
lang
: The language code for this page. This is usually derived from the module mount or filename.
-->
@y
<!-- Added in v0.123.0 but purposefully omitted from documentation. -->
<!--
lang
: The language code for this page. This is usually derived from the module mount or filename.
-->
@z

@x
###### lastmod
@y
###### lastmod
@z

@x
(`string`) The date that the page was last modified. Note that the TOML format also supports date/time values using unquoted strings. Access this value from a template using the [`Lastmod`] method on a `Page` object.
@y
(`string`) The date that the page was last modified. Note that the TOML format also supports date/time values using unquoted strings. Access this value from a template using the [`Lastmod`] method on a `Page` object.
@z

% snip link...

@x
###### layout
@y
###### layout
@z

@x
(`string`) Provide a template name to [target a specific template],  overriding the default [template lookup order]. Set the value to the base file name of the template, excluding its extension. Access this value from a template using the [`Layout`] method on a `Page` object.
@y
(`string`) Provide a template name to [target a specific template],  overriding the default [template lookup order]. Set the value to the base file name of the template, excluding its extension. Access this value from a template using the [`Layout`] method on a `Page` object.
@z

% snip links...

@x
###### linkTitle
@y
###### linkTitle
@z

@x
(`string`) Typically a shorter version of the `title`. Access this value from a template using the [`LinkTitle`] method on a `Page` object.
@y
(`string`) Typically a shorter version of the `title`. Access this value from a template using the [`LinkTitle`] method on a `Page` object.
@z

% snip link...

@x
###### markup
@y
###### markup
@z

@x
(`string`) A identifier corresponding to one of the supported [content formats]:
@y
(`string`) A identifier corresponding to one of the supported [content formats]:
@z

@x
Identifier|Content format
:--|:--
`adoc`|Asciidoc
`html`|HTML
`md`|Markdown
`org`|Emacs Org Mode
`pdc`|Pandoc
`rst`|reStructuredText
@y
Identifier|Content format
:--|:--
`adoc`|Asciidoc
`html`|HTML
`md`|Markdown
`org`|Emacs Org Mode
`pdc`|Pandoc
`rst`|reStructuredText
@z

% snip link...

@x
###### menus
@y
###### menus
@z

@x
(`string`,`string array`, or `map`) If set, Hugo adds the page to the given menu or menus. See the [menus] page for details.
@y
(`string`,`string array`, or `map`) If set, Hugo adds the page to the given menu or menus. See the [menus] page for details.
@z

% snip link...

@x
###### outputs
@y
###### outputs
@z

@x
(`string array`) The [output formats] to render.
@y
(`string array`) The [output formats] to render.
@z

% snip link...

@x
<!-- Added in v0.123.0 but purposefully omitted from documentation. -->
<!--
path
: The canonical page path.
-->
@y
<!-- Added in v0.123.0 but purposefully omitted from documentation. -->
<!--
path
: The canonical page path.
-->
@z

@x
###### params
@y
###### params
@z

@x
{{< new-in 0.123.0 >}}
@y
{{< new-in 0.123.0 >}}
@z

@x
(`map`) A map of custom [page parameters].
@y
(`map`) A map of custom [page parameters].
@z

@x
[page parameters]: #parameters
@y
[page parameters]: #parameters
@z

@x
###### publishDate
@y
###### publishDate
@z

@x
(`string`) The page publication date. Before the publication date, the page will not be rendered unless you pass the `--buildFuture` flag to the `hugo` command. Note that the TOML format also supports date/time values using unquoted strings. Access this value from a template using the [`PublishDate`] method on a `Page` object.
@y
(`string`) The page publication date. Before the publication date, the page will not be rendered unless you pass the `--buildFuture` flag to the `hugo` command. Note that the TOML format also supports date/time values using unquoted strings. Access this value from a template using the [`PublishDate`] method on a `Page` object.
@z

@x
[`publishdate`]: /methods/page/publishdate/
@y
[`publishdate`]: /methods/page/publishdate/
@z

@x
###### resources
@y
###### resources
@z

@x
(`map array`) An array of maps to provide metadata for [page resources].
@y
(`map array`) An array of maps to provide metadata for [page resources].
@z

@x
[page-resources]: /content-management/page-resources/#page-resources-metadata
@y
[page-resources]: /content-management/page-resources/#page-resources-metadata
@z

@x
###### sitemap
@y
###### sitemap
@z

@x
(`map`) A map of sitemap options. See the [sitemap templates] page for details. Access these values from a template using the [`Sitemap`] method on a `Page` object.
@y
(`map`) A map of sitemap options. See the [sitemap templates] page for details. Access these values from a template using the [`Sitemap`] method on a `Page` object.
@z

@x
[sitemap templates]: /templates/sitemap-template/
[`sitemap`]: /methods/page/sitemap/
@y
[sitemap templates]: /templates/sitemap-template/
[`sitemap`]: /methods/page/sitemap/
@z

@x
###### slug
@y
###### slug
@z

@x
(`string`) Overrides the last segment of the URL path. Not applicable to section pages. See the [URL management] page for details. Access this value from a template using the [`Slug`] method on a `Page` object.
@y
(`string`) Overrides the last segment of the URL path. Not applicable to section pages. See the [URL management] page for details. Access this value from a template using the [`Slug`] method on a `Page` object.
@z

@x
[`slug`]: /methods/page/slug/
[URL management]: /content-management/urls/#slug
@y
[`slug`]: /methods/page/slug/
[URL management]: /content-management/urls/#slug
@z

@x
###### summary
@y
###### summary
@z

@x
(`string`) Conceptually different than the page `description`, the summary either summarizes the content or serves as a teaser to encourage readers to visit the page. Access this value from a template using the [`Summary`] method on a `Page` object.
@y
(`string`) Conceptually different than the page `description`, the summary either summarizes the content or serves as a teaser to encourage readers to visit the page. Access this value from a template using the [`Summary`] method on a `Page` object.
@z

@x
[`Summary`]: /methods/page/summary/
@y
[`Summary`]: /methods/page/summary/
@z

@x
###### title
@y
###### title
@z

@x
(`string`) The page title. Access this value from a template using the [`Title`] method on a `Page` object.
@y
(`string`) The page title. Access this value from a template using the [`Title`] method on a `Page` object.
@z

@x
[`title`]: /methods/page/title/
@y
[`title`]: /methods/page/title/
@z

@x
###### translationKey
@y
###### translationKey
@z

@x
(`string`) An arbitrary value used to relate two or more translations of the same page, useful when the translated pages do not share a common path. Access this value from a template using the [`TranslationKey`] method on a `Page` object.
@y
(`string`) An arbitrary value used to relate two or more translations of the same page, useful when the translated pages do not share a common path. Access this value from a template using the [`TranslationKey`] method on a `Page` object.
@z

@x
[`translationkey`]: /methods/page/translationkey/
@y
[`translationkey`]: /methods/page/translationkey/
@z

@x
###### type
@y
###### type
@z

@x
(`string`) The [content type], overriding the value derived from the top level section in which the page resides. Access this value from a template using the [`Type`] method on a `Page` object.
@y
(`string`) The [content type], overriding the value derived from the top level section in which the page resides. Access this value from a template using the [`Type`] method on a `Page` object.
@z

@x
[content type]: /getting-started/glossary/#content-type
[`type`]: /methods/page/type/
@y
[content type]: /getting-started/glossary/#content-type
[`type`]: /methods/page/type/
@z

@x
###### url
@y
###### url
@z

@x
(`string`) Overrides the entire URL path. Applicable to regular pages and section pages. See the [URL management] page for details.
@y
(`string`) Overrides the entire URL path. Applicable to regular pages and section pages. See the [URL management] page for details.
@z

@x
###### weight
(`int`) The page [weight], used to order the page within a [page collection]. Access this value from a template using the [`Weight`] method on a `Page` object.
@y
###### weight
(`int`) The page [weight], used to order the page within a [page collection]. Access this value from a template using the [`Weight`] method on a `Page` object.
@z

@x
[page collection]: /getting-started/glossary/#page-collection
[weight]: /getting-started/glossary/#weight
[`weight`]: /methods/page/weight/
@y
[page collection]: /getting-started/glossary/#page-collection
[weight]: /getting-started/glossary/#weight
[`weight`]: /methods/page/weight/
@z

@x
## Parameters
@y
## Parameters
@z

@x
{{< new-in 0.123.0 >}}
@y
{{< new-in 0.123.0 >}}
@z

@x
Specify custom page parameters under the `params` key in front matter:
@y
Specify custom page parameters under the `params` key in front matter:
@z

% snip code...

@x
Access these values from a template using the [`Params`] or [`Param`] method on a `Page` object.
@y
Access these values from a template using the [`Params`] or [`Param`] method on a `Page` object.
@z

% snip links...

@x
Hugo provides [embedded templates] to optionally insert meta data within the `head` element of your rendered pages. These embedded templates expect the following front matter parameters:
@y
Hugo provides [embedded templates] to optionally insert meta data within the `head` element of your rendered pages. These embedded templates expect the following front matter parameters:
@z

@x
Parameter|Data type|Used by these embedded templates
:--|:--|:--
`audio`|`[]string`|[`opengraph.html`]
`images`|`[]string`|[`opengraph.html`], [`schema.html`], [`twitter_cards.html`]
`videos`|`[]string`|[`opengraph.html`]
@y
Parameter|Data type|Used by these embedded templates
:--|:--|:--
`audio`|`[]string`|[`opengraph.html`]
`images`|`[]string`|[`opengraph.html`], [`schema.html`], [`twitter_cards.html`]
`videos`|`[]string`|[`opengraph.html`]
@z

@x
The embedded templates will skip a parameter if not provided in front matter, but will throw an error if the data type is unexpected. 
@y
The embedded templates will skip a parameter if not provided in front matter, but will throw an error if the data type is unexpected. 
@z

% snip links...

@x
## Taxonomies
@y
## Taxonomies
@z

@x
Classify content by adding taxonomy terms to front matter. For example, with this site configuration:
@y
Classify content by adding taxonomy terms to front matter. For example, with this site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[taxonomies]
tag = 'tags'
genre = 'genres'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[taxonomies]
tag = 'tags'
genre = 'genres'
{{< /code-toggle >}}
@z

@x
Add taxonomy terms as shown below:
@y
Add taxonomy terms as shown below:
@z

@x
{{< code-toggle file=content/example.md fm=true >}}
title = 'Example'
date = 2024-02-02T04:14:54-08:00
draft = false
weight = 10
tags = ['red','blue']
genres = ['mystery','romance']
[params]
author = 'John Smith'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/example.md fm=true >}}
title = 'Example'
date = 2024-02-02T04:14:54-08:00
draft = false
weight = 10
tags = ['red','blue']
genres = ['mystery','romance']
[params]
author = 'John Smith'
{{< /code-toggle >}}
@z

@x
You can add taxonomy terms to the front matter of any these [page kinds]: 
@y
You can add taxonomy terms to the front matter of any these [page kinds]: 
@z

@x
- `home`
- `page`
- `section`
- `taxonomy`
- `term`
@y
- `home`
- `page`
- `section`
- `taxonomy`
- `term`
@z

@x
[page kinds]: /getting-started/glossary/#page-kind
@y
[page kinds]: /getting-started/glossary/#page-kind
@z

@x
Access taxonomy terms from a template using the [`Params`] or [`GetTerms`] method on a `Page` object. For example:
@y
Access taxonomy terms from a template using the [`Params`] or [`GetTerms`] method on a `Page` object. For example:
@z

@x
{{< code file=layouts/_default/single.html >}}
{{ with .GetTerms "tags" }}
  <p>Tags</p>
  <ul>
    {{ range . }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/single.html >}}
{{ with .GetTerms "tags" }}
  <p>Tags</p>
  <ul>
    {{ range . }}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
    {{ end }}
  </ul>
{{ end }}
{{< /code >}}
@z

@x
[`Params`]: /methods/page/params/
[`GetTerms`]: /methods/page/getterms/
@y
[`Params`]: /methods/page/params/
[`GetTerms`]: /methods/page/getterms/
@z

@x
## Cascade
@y
## Cascade
@z

@x
Any [node] can pass down to its descendants a set of front matter values.
@y
Any [node] can pass down to its descendants a set of front matter values.
@z

@x
[node]: /getting-started/glossary/#node
@y
[node]: /getting-started/glossary/#node
@z

@x
### Target specific pages
@y
### Target specific pages
@z

@x
The `cascade` block can be an array with an optional `_target` keyword, allowing you to target different page sets while cascading values.
@y
The `cascade` block can be an array with an optional `_target` keyword, allowing you to target different page sets while cascading values.
@z

@x
{{< code-toggle file=content/_index.md fm=true >}}
title ="Home"
[[cascade]]
[cascade.params]
background = "yosemite.jpg"
[cascade._target]
path="/articles/**"
lang="en"
kind="page"
[[cascade]]
[cascade.params]
background = "goldenbridge.jpg"
[cascade._target]
kind="section"
{{</ code-toggle >}}
@y
{{< code-toggle file=content/_index.md fm=true >}}
title ="Home"
[[cascade]]
[cascade.params]
background = "yosemite.jpg"
[cascade._target]
path="/articles/**"
lang="en"
kind="page"
[[cascade]]
[cascade.params]
background = "goldenbridge.jpg"
[cascade._target]
kind="section"
{{</ code-toggle >}}
@z

@x
Use any combination of these keywords to target a set of pages:
@y
Use any combination of these keywords to target a set of pages:
@z

@x
###### path {#cascade-path}
@y
###### path {#cascade-path}
@z

@x
(`string`) A [Glob](https://github.com/gobwas/glob) pattern matching the content path below /content. Expects Unix-styled slashes. Note that this is the virtual path, so it starts at the mount root. The matching supports double-asterisks so you can match for patterns like `/blog/*/**` to match anything from the third level and down.
@y
(`string`) A [Glob](https://github.com/gobwas/glob) pattern matching the content path below /content. Expects Unix-styled slashes. Note that this is the virtual path, so it starts at the mount root. The matching supports double-asterisks so you can match for patterns like `/blog/*/**` to match anything from the third level and down.
@z

@x
###### kind {#cascade-kind}
@y
###### kind {#cascade-kind}
@z

@x
(`string`) A Glob pattern matching the Page's Kind(s), e.g. "{home,section}".
@y
(`string`) A Glob pattern matching the Page's Kind(s), e.g. "{home,section}".
@z

@x
###### lang {#cascade-lang}
@y
###### lang {#cascade-lang}
@z

@x
(`string`) A Glob pattern matching the Page's language, e.g. "{en,sv}".
@y
(`string`) A Glob pattern matching the Page's language, e.g. "{en,sv}".
@z

@x
###### environment {#cascade-environment}
@y
###### environment {#cascade-environment}
@z

@x
(`string`) A Glob pattern matching the build environment, e.g. "{production,development}"
@y
(`string`) A Glob pattern matching the build environment, e.g. "{production,development}"
@z

@x
Any of the above can be omitted.
@y
Any of the above can be omitted.
@z

@x note
With a multilingual site it may be more efficient to define the `cascade` values in your site configuration to avoid duplicating the `cascade` values on the section, taxonomy, or term page for each language.
@y
With a multilingual site it may be more efficient to define the `cascade` values in your site configuration to avoid duplicating the `cascade` values on the section, taxonomy, or term page for each language.
@z

@x
With a multilingual site, if you choose to define the `cascade` values in front matter, you must create a section, taxonomy, or term page for each language; the `lang` keyword is ignored.
@y
With a multilingual site, if you choose to define the `cascade` values in front matter, you must create a section, taxonomy, or term page for each language; the `lang` keyword is ignored.
@z

@x
### Example
@y
### Example
@z

@x
{{< code-toggle file=content/posts/_index.md fm=true >}}
date = 2024-02-01T21:25:36-08:00
title = 'Posts'
[cascade]
  [cascade.params]
    banner = 'images/typewriter.jpg'
{{</ code-toggle >}}
@y
{{< code-toggle file=content/posts/_index.md fm=true >}}
date = 2024-02-01T21:25:36-08:00
title = 'Posts'
[cascade]
  [cascade.params]
    banner = 'images/typewriter.jpg'
{{</ code-toggle >}}
@z

@x
With the above example the posts section page and its descendants will return `images/typewriter.jpg` when `.Params.banner` is invoked unless:
@y
With the above example the posts section page and its descendants will return `images/typewriter.jpg` when `.Params.banner` is invoked unless:
@z

@x
- Said descendant has its own `banner` value set
- Or a closer ancestor node has its own `cascade.banner` value set.
@y
- Said descendant has its own `banner` value set
- Or a closer ancestor node has its own `cascade.banner` value set.
@z

@x
## Emacs Org Mode
@y
## Emacs Org Mode
@z

@x
If your [content format] is [Emacs Org Mode], you may provide front matter using Org Mode keywords. For example:
@y
If your [content format] is [Emacs Org Mode], you may provide front matter using Org Mode keywords. For example:
@z

@x
{{< code file=content/example.org lang=text >}}
#+TITLE: Example
#+DATE: 2024-02-02T04:14:54-08:00
#+DRAFT: false
#+AUTHOR: John Smith
#+GENRES: mystery
#+GENRES: romance
#+TAGS: red
#+TAGS: blue
#+WEIGHT: 10
{{< /code >}}
@y
{{< code file=content/example.org lang=text >}}
#+TITLE: Example
#+DATE: 2024-02-02T04:14:54-08:00
#+DRAFT: false
#+AUTHOR: John Smith
#+GENRES: mystery
#+GENRES: romance
#+TAGS: red
#+TAGS: blue
#+WEIGHT: 10
{{< /code >}}
@z

@x
Note that you can also specify array elements on a single line:
@y
Note that you can also specify array elements on a single line:
@z

@x
{{< code file=content/example.org lang=text >}}
#+TAGS[]: red blue
{{< /code >}}
@y
{{< code file=content/example.org lang=text >}}
#+TAGS[]: red blue
{{< /code >}}
@z

@x
[content format]: /content-management/formats/
[emacs org mode]: https://orgmode.org/
@y
[content format]: /content-management/formats/
[emacs org mode]: https://orgmode.org/
@z
