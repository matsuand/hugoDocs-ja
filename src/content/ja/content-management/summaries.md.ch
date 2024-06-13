%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% snip 対応

@x
title: Content summaries
linkTitle: Summaries
description: Create and render content summaries.
categories: [content management]
keywords: [summaries,abstracts,read more]
@y
title: Content summaries
linkTitle: Summaries
description: Create and render content summaries.
categories: [content management]
keywords: [summaries,abstracts,read more]
@z

@x
You can define a content summary manually, in front matter, or automatically. A manual content summary takes precedence over a front matter summary, and a front matter summary takes precedence over an automatic summary.
@y
You can define a content summary manually, in front matter, or automatically. A manual content summary takes precedence over a front matter summary, and a front matter summary takes precedence over an automatic summary.
@z

@x
Review the [comparison table](#comparison) below to understand the characteristics of each summary type.
@y
Review the [comparison table](#comparison) below to understand the characteristics of each summary type.
@z

@x
## Manual summary
@y
## Manual summary
@z

@x
Use a `<!--more-->` divider to indicate the end of the content summary. Hugo will not render the summary divider itself.
@y
Use a `<!--more-->` divider to indicate the end of the content summary. Hugo will not render the summary divider itself.
@z

@x
{{< code file=content/sample.md >}}
+++
title: 'Example'
date: 2024-05-26T09:10:33-07:00
+++
@y
{{< code file=content/sample.md >}}
+++
title: 'Example'
date: 2024-05-26T09:10:33-07:00
+++
@z

@x
Thénardier was not mistaken. The man was sitting there, and letting
Cosette get somewhat rested.
@y
Thénardier was not mistaken. The man was sitting there, and letting
Cosette get somewhat rested.
@z

@x
<!--more-->
@y
<!--more-->
@z

@x
The inn-keeper walked round the brushwood and presented himself
abruptly to the eyes of those whom he was in search of.
{{< /code >}}
@y
The inn-keeper walked round the brushwood and presented himself
abruptly to the eyes of those whom he was in search of.
{{< /code >}}
@z

@x
When using the Emacs Org Mode [content format], use a `# more` divider to indicate the end of the content summary.
@y
When using the Emacs Org Mode [content format], use a `# more` divider to indicate the end of the content summary.
@z

@x
[content format]: /content-management/formats/
@y
[content format]: /content-management/formats/
@z

@x
## Front matter summary
@y
## Front matter summary
@z

@x
Use front matter to define a summary independent of content.
@y
Use front matter to define a summary independent of content.
@z

@x
{{< code file=content/sample.md >}}
+++
title: 'Example'
date: 2024-05-26T09:10:33-07:00
summary: 'Learn more about _Les Misérables_ by Victor Hugo.'
+++
@y
{{< code file=content/sample.md >}}
+++
title: 'Example'
date: 2024-05-26T09:10:33-07:00
summary: 'Learn more about _Les Misérables_ by Victor Hugo.'
+++
@z

@x
Thénardier was not mistaken. The man was sitting there, and letting
Cosette get somewhat rested. The inn-keeper walked round the
brushwood and presented himself abruptly to the eyes of those whom
he was in search of.
{{< /code >}}
@y
Thénardier was not mistaken. The man was sitting there, and letting
Cosette get somewhat rested. The inn-keeper walked round the
brushwood and presented himself abruptly to the eyes of those whom
he was in search of.
{{< /code >}}
@z

@x
## Automatic summary
@y
## Automatic summary
@z

@x
If you have not defined the summary manually or in front matter, Hugo automatically defines the summary based on the [`summaryLength`] in your site configuration.
@y
If you have not defined the summary manually or in front matter, Hugo automatically defines the summary based on the [`summaryLength`] in your site configuration.
@z

@x
[`summaryLength`]: /getting-started/configuration/#summarylength
@y
[`summaryLength`]: /getting-started/configuration/#summarylength
@z

@x
{{< code file=content/sample.md >}}
+++
title: 'Example'
date: 2024-05-26T09:10:33-07:00
+++
@y
{{< code file=content/sample.md >}}
+++
title: 'Example'
date: 2024-05-26T09:10:33-07:00
+++
@z

@x
Thénardier was not mistaken. The man was sitting there, and letting
Cosette get somewhat rested. The inn-keeper walked round the
brushwood and presented himself abruptly to the eyes of those whom
he was in search of.
{{< /code >}}
@y
Thénardier was not mistaken. The man was sitting there, and letting
Cosette get somewhat rested. The inn-keeper walked round the
brushwood and presented himself abruptly to the eyes of those whom
he was in search of.
{{< /code >}}
@z

@x
For example, with a `summaryLength` of 10, the automatic summary will be:
@y
For example, with a `summaryLength` of 10, the automatic summary will be:
@z

@x
```text
Thénardier was not mistaken. The man was sitting there, and letting
Cosette get somewhat rested.
```
@y
```text
Thénardier was not mistaken. The man was sitting there, and letting
Cosette get somewhat rested.
```
@z

@x
Note that the `summaryLength` is an approximate number of words.
@y
Note that the `summaryLength` is an approximate number of words.
@z

@x
## Comparison
@y
## Comparison
@z

@x
Each summary type has different characteristics:
@y
Each summary type has different characteristics:
@z

@x
Type|Precedence|Renders markdown|Renders shortcodes|Strips HTML tags|Wraps single lines with `<p>`
:--|:-:|:-:|:-:|:-:|:-:
Manual|1|:heavy_check_mark:|:heavy_check_mark:|:x:|:heavy_check_mark:
Front&nbsp;matter|2|:heavy_check_mark:|:x:|:x:|:x:
Automatic|3|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:x:
@y
Type|Precedence|Renders markdown|Renders shortcodes|Strips HTML tags|Wraps single lines with `<p>`
:--|:-:|:-:|:-:|:-:|:-:
Manual|1|:heavy_check_mark:|:heavy_check_mark:|:x:|:heavy_check_mark:
Front&nbsp;matter|2|:heavy_check_mark:|:x:|:x:|:x:
Automatic|3|:heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|:x:
@z

@x
## Rendering
@y
## Rendering
@z

@x
Render the summary in a template by calling the [`Summary`] method on a `Page` object.
@y
Render the summary in a template by calling the [`Summary`] method on a `Page` object.
@z

@x
[`Summary`]: /methods/page/summary
@y
[`Summary`]: /methods/page/summary
@z

@x
```go-html-template
{{ range site.RegularPages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  <div class="summary">
    {{ .Summary }}
    {{ if .Truncated }}
      <a href="{{ .RelPermalink }}">More ...</a>
    {{ end }}
  </div>
{{ end }}
```
@y
```go-html-template
{{ range site.RegularPages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
  <div class="summary">
    {{ .Summary }}
    {{ if .Truncated }}
      <a href="{{ .RelPermalink }}">More ...</a>
    {{ end }}
  </div>
{{ end }}
```
@z
