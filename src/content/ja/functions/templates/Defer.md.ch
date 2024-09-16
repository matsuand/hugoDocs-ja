%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: templates.Defer
description: Defer execution of a template until after all sites and output formats have been rendered.
categories: []
keywords: []
toc: true
action:
  aliases: []
  related: []
  returnType: string
  signatures: [templates.Defer OPTIONS]
aliases: [/functions/templates.defer]
---
@y
---
title: templates.Defer
description: Defer execution of a template until after all sites and output formats have been rendered.
categories: []
keywords: []
toc: true
action:
  aliases: []
  related: []
  returnType: string
  signatures: [templates.Defer OPTIONS]
aliases: [/functions/templates.defer]
---
@z

@x
{{< new-in "0.128.0" >}}
@y
{{< new-in "0.128.0" >}}
@z

@x
In some rare use cases, you may need to defer the execution of a template until after all sites and output formats have been rendered. One such example could be [TailwindCSS](/functions/css/tailwindcss/) using the output of [hugo_stats.json](/getting-started/configuration/#configure-build) to determine which classes and other HTML identifiers are being used in the final output:
@y
In some rare use cases, you may need to defer the execution of a template until after all sites and output formats have been rendered. One such example could be [TailwindCSS](/functions/css/tailwindcss/) using the output of [hugo_stats.json](/getting-started/configuration/#configure-build) to determine which classes and other HTML identifiers are being used in the final output:
@z

@x
```go-html-template
{{ with (templates.Defer (dict "key" "global")) }}
  {{ $t := debug.Timer "tailwindcss" }}
  {{ with resources.Get "css/styles.css" }}
    {{ $opts := dict
      "inlineImports" true
      "optimize" hugo.IsProduction
    }}
    {{ with . | css.TailwindCSS $opts }}
      {{ if hugo.IsDevelopment }}
        <link rel="stylesheet" href="{{ .RelPermalink }}" />
      {{ else }}
        {{ with . | minify | fingerprint }}
          <link
            rel="stylesheet"
            href="{{ .RelPermalink }}"
            integrity="{{ .Data.Integrity }}"
            crossorigin="anonymous" />
        {{ end }}
      {{ end }}
    {{ end }}
  {{ end }}
  {{ $t.Stop }}
{{ end }}
```
@y
```go-html-template
{{ with (templates.Defer (dict "key" "global")) }}
  {{ $t := debug.Timer "tailwindcss" }}
  {{ with resources.Get "css/styles.css" }}
    {{ $opts := dict
      "inlineImports" true
      "optimize" hugo.IsProduction
    }}
    {{ with . | css.TailwindCSS $opts }}
      {{ if hugo.IsDevelopment }}
        <link rel="stylesheet" href="{{ .RelPermalink }}" />
      {{ else }}
        {{ with . | minify | fingerprint }}
          <link
            rel="stylesheet"
            href="{{ .RelPermalink }}"
            integrity="{{ .Data.Integrity }}"
            crossorigin="anonymous" />
        {{ end }}
      {{ end }}
    {{ end }}
  {{ end }}
  {{ $t.Stop }}
{{ end }}
```
@z

@x
{{% note %}}
This function only works in combination with the `with` keyword.
{{% /note %}}
@y
{{% note %}}
This function only works in combination with the `with` keyword.
{{% /note %}}
@z

@x
{{% note %}}
Variables defined on the outside are not visible on the inside and vice versa. To pass in data, use the `data` [option](#options).
{{% /note %}}
@y
{{% note %}}
Variables defined on the outside are not visible on the inside and vice versa. To pass in data, use the `data` [option](#options).
{{% /note %}}
@z

@x
For the above to work well when running the server (or `hugo -w`), you want to have a configuration similar to this:
@y
For the above to work well when running the server (or `hugo -w`), you want to have a configuration similar to this:
@z

@x
{{< code-toggle file=hugo >}}
[module]
[[module.mounts]]
source       = "hugo_stats.json"
target       = "assets/notwatching/hugo_stats.json"
disableWatch = true
[build.buildStats]
enable = true
[[build.cachebusters]]
source = "assets/notwatching/hugo_stats\\.json"
target = "styles\\.css"
[[build.cachebusters]]
source = "(postcss|tailwind)\\.config\\.js"
target = "css"
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[module]
[[module.mounts]]
source       = "hugo_stats.json"
target       = "assets/notwatching/hugo_stats.json"
disableWatch = true
[build.buildStats]
enable = true
[[build.cachebusters]]
source = "assets/notwatching/hugo_stats\\.json"
target = "styles\\.css"
[[build.cachebusters]]
source = "(postcss|tailwind)\\.config\\.js"
target = "css"
{{< /code-toggle >}}
@z

@x
## Options
@y
## Options
@z

@x
The `templates.Defer` function takes a single argument, a map with the following optional keys:
@y
The `templates.Defer` function takes a single argument, a map with the following optional keys:
@z

@x
key (`string`)
: The key to use for the deferred template. This will, combined with a hash of the template content, be used as a cache key. If this is not set, Hugo will execute the deferred template on every render. This is not what you want for shared resources like CSS and JavaScript.
@y
key (`string`)
: The key to use for the deferred template. This will, combined with a hash of the template content, be used as a cache key. If this is not set, Hugo will execute the deferred template on every render. This is not what you want for shared resources like CSS and JavaScript.
@z

@x
data (`map`) 
: Optional map to pass as data to the deferred template. This will be available in the deferred template as `.` or `$`.
@y
data (`map`) 
: Optional map to pass as data to the deferred template. This will be available in the deferred template as `.` or `$`.
@z

@x
```go-html-template
Language Outside: {{ site.Language.Lang }}
Page Outside: {{ .RelPermalink }}
I18n Outside: {{ i18n "hello" }}
{{ $data := (dict "page" . )}}
{{ with (templates.Defer (dict "data" $data )) }}
     Language Inside: {{ site.Language.Lang }}
     Page Inside: {{ .page.RelPermalink }}
     I18n Inside: {{ i18n "hello" }}
{{ end }}
```
@y
```go-html-template
Language Outside: {{ site.Language.Lang }}
Page Outside: {{ .RelPermalink }}
I18n Outside: {{ i18n "hello" }}
{{ $data := (dict "page" . )}}
{{ with (templates.Defer (dict "data" $data )) }}
     Language Inside: {{ site.Language.Lang }}
     Page Inside: {{ .page.RelPermalink }}
     I18n Inside: {{ i18n "hello" }}
{{ end }}
```
@z

@x
The [Output Format](/templates/output-formats/), [Site](/methods/page/site/), and [language](/methods/site/language) will be the same, even if the execution is deferred. In the example above, this means that the `site.Language.Lang` and `.RelPermalink` will be the same on the inside and the outside of the deferred template. 
@y
The [Output Format](/templates/output-formats/), [Site](/methods/page/site/), and [language](/methods/site/language) will be the same, even if the execution is deferred. In the example above, this means that the `site.Language.Lang` and `.RelPermalink` will be the same on the inside and the outside of the deferred template. 
@z
