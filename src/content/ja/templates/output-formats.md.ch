%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Custom output formats
description: Hugo can output content in multiple formats, including calendar events, e-book formats, Google AMP, and JSON search indexes, or any custom text format.
categories: [templates,fundamentals]
keywords: ["amp", "outputs", "rss"]
menu:
  docs:
    parent: templates
    weight: 210
weight: 210
toc: true
aliases: [/templates/outputs/,/extras/output-formats/,/content-management/custom-outputs/]
---
@y
---
title: Custom output formats
description: Hugo can output content in multiple formats, including calendar events, e-book formats, Google AMP, and JSON search indexes, or any custom text format.
categories: [templates,fundamentals]
keywords: ["amp", "outputs", "rss"]
menu:
  docs:
    parent: templates
    weight: 210
weight: 210
toc: true
aliases: [/templates/outputs/,/extras/output-formats/,/content-management/custom-outputs/]
---
@z

@x
This page describes how to properly configure your site with the media types and output formats, as well as where to create your templates for your custom outputs.
@y
This page describes how to properly configure your site with the media types and output formats, as well as where to create your templates for your custom outputs.
@z

@x
## Media types
@y
## Media types
@z

@x
A [media type] (formerly known as a MIME type) is a two-part identifier for file formats and format contents transmitted on the internet.
@y
A [media type] (formerly known as a MIME type) is a two-part identifier for file formats and format contents transmitted on the internet.
@z

@x
This is the full set of built-in media types in Hugo:
@y
This is the full set of built-in media types in Hugo:
@z

@x
{{< datatable "config" "mediaTypes" "_key" "suffixes" >}}
@y
{{< datatable "config" "mediaTypes" "_key" "suffixes" >}}
@z

@x
**Note:**
@y
**Note:**
@z

@x
- It is possible to add custom media types or change the defaults; e.g., if you want to change the suffix for `text/html` to `asp`.
- `Suffixes` are the values that will be used for URLs and file names for that media type in Hugo.
- The `Type` is the identifier that must be used when defining new/custom `Output Formats` (see below).
- The full set of media types will be registered in Hugo's built-in development server to make sure they are recognized by the browser.
@y
- It is possible to add custom media types or change the defaults; e.g., if you want to change the suffix for `text/html` to `asp`.
- `Suffixes` are the values that will be used for URLs and file names for that media type in Hugo.
- The `Type` is the identifier that must be used when defining new/custom `Output Formats` (see below).
- The full set of media types will be registered in Hugo's built-in development server to make sure they are recognized by the browser.
@z

@x
To add or modify a media type, define it in a `mediaTypes` section in your [site configuration], either for all sites or for a given language.
@y
To add or modify a media type, define it in a `mediaTypes` section in your [site configuration], either for all sites or for a given language.
@z

@x
{{< code-toggle file=hugo >}}
[mediaTypes]
  [mediaTypes."text/enriched"]
  suffixes = ["enr"]
  [mediaTypes."text/html"]
  suffixes = ["asp"]
{{</ code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[mediaTypes]
  [mediaTypes."text/enriched"]
  suffixes = ["enr"]
  [mediaTypes."text/html"]
  suffixes = ["asp"]
{{</ code-toggle >}}
@z

@x
The above example adds one new media type, `text/enriched`, and changes the suffix for the built-in `text/html` media type.
@y
The above example adds one new media type, `text/enriched`, and changes the suffix for the built-in `text/html` media type.
@z

@x
**Note:** these media types are configured for **your output formats**. If you want to redefine one of Hugo's default output formats (e.g. `HTML`), you also need to redefine the media type. So, if you want to change the suffix of the `HTML` output format from `html` (default) to `htm`:
@y
**Note:** these media types are configured for **your output formats**. If you want to redefine one of Hugo's default output formats (e.g. `HTML`), you also need to redefine the media type. So, if you want to change the suffix of the `HTML` output format from `html` (default) to `htm`:
@z

@x
{{< code-toggle file=hugo >}}
[mediaTypes]
  [mediaTypes."text/html"]
    suffixes = ["htm"]
@y
{{< code-toggle file=hugo >}}
[mediaTypes]
  [mediaTypes."text/html"]
    suffixes = ["htm"]
@z

@x
[outputFormats]
  [outputFormats.html]
    mediaType = "text/html"
{{</ code-toggle >}}
@y
[outputFormats]
  [outputFormats.html]
    mediaType = "text/html"
{{</ code-toggle >}}
@z

@x
{{% note %}}
For the above to work, you also need to add an `outputs` definition in your site configuration.
{{% /note %}}
@y
{{% note %}}
For the above to work, you also need to add an `outputs` definition in your site configuration.
{{% /note %}}
@z

@x
## Output format definitions
@y
## Output format definitions
@z

@x
Given a media type and some additional configuration, you get an **Output Format**.
@y
Given a media type and some additional configuration, you get an **Output Format**.
@z

@x
This is the full set of Hugo's built-in output formats:
@y
This is the full set of Hugo's built-in output formats:
@z

@x
{{< datatable "config" "outputFormats" "_key" "baseName" "isHTML" "isPlainText" "mediaType" "noUgly"  "path" "permalinkable" "protocol"  "rel" >}}
@y
{{< datatable "config" "outputFormats" "_key" "baseName" "isHTML" "isPlainText" "mediaType" "noUgly"  "path" "permalinkable" "protocol"  "rel" >}}
@z

@x
- A page can be output in as many output formats as you want, and you can have an infinite amount of output formats defined **as long as they resolve to a unique path on the file system**. In the above table, the best example of this is `amp` vs. `html`. `amp` has the value `amp` for `path` so it doesn't overwrite the `html` version; e.g. we can now have both `/index.html` and `/amp/index.html`.
- The `mediaType` must match a defined media type.
- You can define new output formats or redefine built-in output formats; e.g., if you want to put `amp` pages in a different path.
@y
- A page can be output in as many output formats as you want, and you can have an infinite amount of output formats defined **as long as they resolve to a unique path on the file system**. In the above table, the best example of this is `amp` vs. `html`. `amp` has the value `amp` for `path` so it doesn't overwrite the `html` version; e.g. we can now have both `/index.html` and `/amp/index.html`.
- The `mediaType` must match a defined media type.
- You can define new output formats or redefine built-in output formats; e.g., if you want to put `amp` pages in a different path.
@z

@x
To add or modify an output format, define it in an `outputFormats` section in your site's [configuration file](/getting-started/configuration/), either for all sites or for a given language.
@y
To add or modify an output format, define it in an `outputFormats` section in your site's [configuration file](/getting-started/configuration/), either for all sites or for a given language.
@z

@x
{{< code-toggle file=hugo >}}
[outputFormats.MyEnrichedFormat]
mediaType = "text/enriched"
baseName = "myindex"
isPlainText = true
protocol = "bep://"
{{</ code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[outputFormats.MyEnrichedFormat]
mediaType = "text/enriched"
baseName = "myindex"
isPlainText = true
protocol = "bep://"
{{</ code-toggle >}}
@z

@x
The above example is fictional, but if used for the homepage on a site with `baseURL` `https://example.org`, it will produce a plain text homepage with the URL `bep://example.org/myindex.enr`.
@y
The above example is fictional, but if used for the homepage on a site with `baseURL` `https://example.org`, it will produce a plain text homepage with the URL `bep://example.org/myindex.enr`.
@z

@x
### Configure output formats
@y
### Configure output formats
@z

@x
Use these parameters when configuring an output format:
@y
Use these parameters when configuring an output format:
@z

@x
baseName
: (`string`) The base name of the published file. Default is `index`.
@y
baseName
: (`string`) The base name of the published file. Default is `index`.
@z

@x
isHTML
: (`bool`) If `true`, classifies the output format as HTML. Hugo uses this value to determine when to create alias redirects, when to inject the LiveReload script, etc. Default is `false`.
@y
isHTML
: (`bool`) If `true`, classifies the output format as HTML. Hugo uses this value to determine when to create alias redirects, when to inject the LiveReload script, etc. Default is `false`.
@z

@x
isPlainText
: (`bool`) If `true`, Hugo parses templates for this output format with Go's [text/template] package instead of the [html/template] package. Default is `false`.
@y
isPlainText
: (`bool`) If `true`, Hugo parses templates for this output format with Go's [text/template] package instead of the [html/template] package. Default is `false`.
@z

@x
[html/template]: https://pkg.go.dev/html/template
[text/template]: https://pkg.go.dev/text/template
@y
[html/template]: https://pkg.go.dev/html/template
[text/template]: https://pkg.go.dev/text/template
@z

@x
mediaType
: (`string`) The [media type] of the published file. This must match a defined media type, either [built-in](#media-types) or custom.
@y
mediaType
: (`string`) The [media type] of the published file. This must match a defined media type, either [built-in](#media-types) or custom.
@z

@x
[media type]: https://en.wikipedia.org/wiki/Media_type
@y
[media type]: https://en.wikipedia.org/wiki/Media_type
@z

@x
notAlternative
: (`bool`) If `true`, excludes this output format from the values returned by the [`AlternativeOutputFormats`] method on a `Page` object. Default is `false`.
@y
notAlternative
: (`bool`) If `true`, excludes this output format from the values returned by the [`AlternativeOutputFormats`] method on a `Page` object. Default is `false`.
@z

@x
[`AlternativeOutputFormats`]: /methods/page/alternativeoutputformats/
@y
[`AlternativeOutputFormats`]: /methods/page/alternativeoutputformats/
@z

@x
noUgly
: (`bool`) If `true`, disables ugly URLs for this output format when `uglyURLs` is `true` in your site configuration. Default is `false`.
@y
noUgly
: (`bool`) If `true`, disables ugly URLs for this output format when `uglyURLs` is `true` in your site configuration. Default is `false`.
@z

@x
path
: (`string`) The path to the directory containing the published files, relative to the root of the publish directory.
@y
path
: (`string`) The path to the directory containing the published files, relative to the root of the publish directory.
@z

@x
permalinkable
: (`bool`) If `true`, the [`Permalink`] and [`RelPermalink`] methods on a `Page` object return the rendering output format rather than main output format ([see below](#link-to-output-formats)). Enabled by default for the `html` and `amp` output formats. Default is `false`.
@y
permalinkable
: (`bool`) If `true`, the [`Permalink`] and [`RelPermalink`] methods on a `Page` object return the rendering output format rather than main output format ([see below](#link-to-output-formats)). Enabled by default for the `html` and `amp` output formats. Default is `false`.
@z

@x
[`Permalink`]: /methods/page/permalink/
[`RelPermalink`]: /methods/page/relpermalink/
@y
[`Permalink`]: /methods/page/permalink/
[`RelPermalink`]: /methods/page/relpermalink/
@z

@x
protocol
: (`string`) The protocol (scheme) of the URL for this output format. For example, `https://` or `webcal://`. Default is the scheme of the `baseURL` parameter in your site configuration, typically `https://`.
@y
protocol
: (`string`) The protocol (scheme) of the URL for this output format. For example, `https://` or `webcal://`. Default is the scheme of the `baseURL` parameter in your site configuration, typically `https://`.
@z

@x
rel
: (`string`) If provided, you can assign this value to `rel` attributes in `link` elements when iterating over output formats in your templates. Default is `alternate`.
@y
rel
: (`string`) If provided, you can assign this value to `rel` attributes in `link` elements when iterating over output formats in your templates. Default is `alternate`.
@z

@x
root
: (`bool`) If `true`, files will be published to the root of the publish directory. Default is `false`.
@y
root
: (`bool`) If `true`, files will be published to the root of the publish directory. Default is `false`.
@z

@x
ugly
: (`bool`) If `true`, enables uglyURLs for this output format when `uglyURLs` is `false` in your site configuration. Default is `false`.
@y
ugly
: (`bool`) If `true`, enables uglyURLs for this output format when `uglyURLs` is `false` in your site configuration. Default is `false`.
@z

@x
weight
: (`int`) When set to a non-zero value, Hugo uses the `weight` as the first criteria when sorting output formats, falling back to the name of the output format. Lighter items float to the top, while heavier items sink to the bottom. Hugo renders output formats sequentially based on the sort order.
@y
weight
: (`int`) When set to a non-zero value, Hugo uses the `weight` as the first criteria when sorting output formats, falling back to the name of the output format. Lighter items float to the top, while heavier items sink to the bottom. Hugo renders output formats sequentially based on the sort order.
@z

@x
## Output formats for pages
@y
## Output formats for pages
@z

@x
A `Page` in Hugo can be rendered to multiple _output formats_ on the file
system.
@y
A `Page` in Hugo can be rendered to multiple _output formats_ on the file
system.
@z

@x
### Default output formats
@y
### Default output formats
@z

@x
Every `Page` has a [`Kind`] attribute, and the default Output
Formats are set based on that.
@y
Every `Page` has a [`Kind`] attribute, and the default Output
Formats are set based on that.
@z

@x
{{< code-toggle config=outputs />}}
@y
{{< code-toggle config=outputs />}}
@z

@x
### Customizing output formats
@y
### Customizing output formats
@z

@x
This can be changed by defining an `outputs` list of output formats in either
the `Page` front matter or in the site configuration (either for all sites or
per language).
@y
This can be changed by defining an `outputs` list of output formats in either
the `Page` front matter or in the site configuration (either for all sites or
per language).
@z

@x
Example from site configuration file:
@y
Example from site configuration file:
@z

@x
{{< code-toggle file=hugo >}}
[outputs]
  home = ["html", "amp", "rss"]
  page = ["html"]
{{</ code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[outputs]
  home = ["html", "amp", "rss"]
  page = ["html"]
{{</ code-toggle >}}
@z

@x
Note that in the above examples, the _output formats_ for `section`,
`taxonomy` and `term` will stay at their default value `['html','rss']`.
@y
Note that in the above examples, the _output formats_ for `section`,
`taxonomy` and `term` will stay at their default value `['html','rss']`.
@z

@x
* The `outputs` definition is per page [`Kind`][page_kinds].
* The names (e.g. `html`, `amp`) must match the `name` of a defined output format, and can be overridden per page in front matter.
@y
* The `outputs` definition is per page [`Kind`][page_kinds].
* The names (e.g. `html`, `amp`) must match the `name` of a defined output format, and can be overridden per page in front matter.
@z

@x
The following is an example of front matter in a content file that defines output formats for the rendered `Page`:
@y
The following is an example of front matter in a content file that defines output formats for the rendered `Page`:
@z

@x
{{< code-toggle file=content/example.md fm=true >}}
title: Example
outputs:
- html
- amp
- json
{{< /code-toggle >}}
@y
{{< code-toggle file=content/example.md fm=true >}}
title: Example
outputs:
- html
- amp
- json
{{< /code-toggle >}}
@z

@x
## List output formats
@y
## List output formats
@z

@x
Each `Page` object has both an [`OutputFormats`] method (all formats, including the current) and an [`AlternativeOutputFormats`] method, the latter of which is useful for creating a `link rel` list in your site's `<head>`:
@y
Each `Page` object has both an [`OutputFormats`] method (all formats, including the current) and an [`AlternativeOutputFormats`] method, the latter of which is useful for creating a `link rel` list in your site's `<head>`:
@z

@x
[`OutputFormats`]: /methods/page/outputformats
[`AlternativeOutputFormats`]: /methods/page/alternativeoutputformats
@y
[`OutputFormats`]: /methods/page/outputformats
[`AlternativeOutputFormats`]: /methods/page/alternativeoutputformats
@z

@x
```go-html-template
{{ range .AlternativeOutputFormats -}}
  <link rel="{{ .Rel }}" type="{{ .MediaType.Type }}" href="{{ .Permalink | safeURL }}">
{{ end }}
```
@y
```go-html-template
{{ range .AlternativeOutputFormats -}}
  <link rel="{{ .Rel }}" type="{{ .MediaType.Type }}" href="{{ .Permalink | safeURL }}">
{{ end }}
```
@z

@x
## Link to output formats
@y
## Link to output formats
@z

@x
The [`Permalink`] and [`RelPermalink`] methods on a `Page` object return the first output format defined for that page (usually `HTML` if nothing else is defined). This is regardless of the template from which they are called.
@y
The [`Permalink`] and [`RelPermalink`] methods on a `Page` object return the first output format defined for that page (usually `HTML` if nothing else is defined). This is regardless of the template from which they are called.
@z

@x
[`Permalink`]: /methods/page/permalink
[`RelPermalink`]: /methods/page/relpermalink
@y
[`Permalink`]: /methods/page/permalink
[`RelPermalink`]: /methods/page/relpermalink
@z

@x
__from `single.json.json`:__
```go-html-template
{{ .RelPermalink }} → /that-page/
{{ with .OutputFormats.Get "json" }}
  {{ .RelPermalink }} → /that-page/index.json
{{ end }}
```
@y
__from `single.json.json`:__
```go-html-template
{{ .RelPermalink }} → /that-page/
{{ with .OutputFormats.Get "json" }}
  {{ .RelPermalink }} → /that-page/index.json
{{ end }}
```
@z

@x
In order for them to return the output format of the current template file instead, the given output format should have its `permalinkable` setting set to true.
@y
In order for them to return the output format of the current template file instead, the given output format should have its `permalinkable` setting set to true.
@z

@x
**Same template file as above with json output format's `permalinkable` set to true:**
@y
**Same template file as above with json output format's `permalinkable` set to true:**
@z

@x
```go-html-template
{{ .RelPermalink }} → /that-page/index.json
{{ with  .OutputFormats.Get "html" }}
  {{ .RelPermalink }} → /that-page/
{{ end }}
```
@y
```go-html-template
{{ .RelPermalink }} → /that-page/index.json
{{ with  .OutputFormats.Get "html" }}
  {{ .RelPermalink }} → /that-page/
{{ end }}
```
@z

@x
From content files, you can use the `ref` or `relref` shortcodes:
@y
From content files, you can use the `ref` or `relref` shortcodes:
@z

@x
```go-html-template
[Neat]({{</* ref "blog/neat.md" "amp" */>}})
[Who]({{</* relref "about.md#who" "amp" */>}})
```
@y
```go-html-template
[Neat]({{</* ref "blog/neat.md" "amp" */>}})
[Who]({{</* relref "about.md#who" "amp" */>}})
```
@z

@x
## Templates for your output formats
@y
## Templates for your output formats
@z

@x
Each output format requires a corresponding template conforming to the [template lookup order](/templates/lookup-order/). Hugo considers both output format and suffix when selecting a template.
@y
Each output format requires a corresponding template conforming to the [template lookup order](/templates/lookup-order/). Hugo considers both output format and suffix when selecting a template.
@z

@x
For example, to generate a JSON file for the home page, the template with highest specificity is `layouts/index.json.json`.
@y
For example, to generate a JSON file for the home page, the template with highest specificity is `layouts/index.json.json`.
@z

@x
Hugo will now also detect the media type and output format of partials, if possible, and use that information to decide if the partial should be parsed as a plain text template or not.
@y
Hugo will now also detect the media type and output format of partials, if possible, and use that information to decide if the partial should be parsed as a plain text template or not.
@z

@x
Hugo will look for the name given, so you can name it whatever you want. But if you want it treated as plain text, you should use the file suffix and, if needed, the name of the Output Format. The pattern is as follows:
@y
Hugo will look for the name given, so you can name it whatever you want. But if you want it treated as plain text, you should use the file suffix and, if needed, the name of the Output Format. The pattern is as follows:
@z

@x
```go-html-template
[partial name].[OutputFormat].[suffix]
```
@y
```go-html-template
[partial name].[OutputFormat].[suffix]
```
@z

@x
The partial below is a plain text template . The output format is `csv`, and since this is the only output format with the suffix `csv`, we don't need to include the output format `name`):
@y
The partial below is a plain text template . The output format is `csv`, and since this is the only output format with the suffix `csv`, we don't need to include the output format `name`):
@z

@x
```go-html-template
{{ partial "mytextpartial.csv" . }}
```
@y
```go-html-template
{{ partial "mytextpartial.csv" . }}
```
@z

@x
[base]: /templates/base/
[site configuration]: /getting-started/configuration/
[lookup order]: /templates/lookup-order/
[media type]: https://en.wikipedia.org/wiki/Media_type
[partials]: /templates/partials/
[`kind`]: /methods/page/kind/
@y
[base]: /templates/base/
[site configuration]: /getting-started/configuration/
[lookup order]: /templates/lookup-order/
[media type]: https://en.wikipedia.org/wiki/Media_type
[partials]: /templates/partials/
[`kind`]: /methods/page/kind/
@z
