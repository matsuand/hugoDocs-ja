%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: css.TailwindCSS
description: Processes the given resource with the Tailwind CSS CLI.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/resources/Fingerprint
    - functions/resources/Minify
    - functions/css/PostCSS
  returnType: resource.Resource
  signatures: ['css.TailwindCSS [OPTIONS] RESOURCE']
toc: true
---
@y
---
title: css.TailwindCSS
description: Processes the given resource with the Tailwind CSS CLI.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/resources/Fingerprint
    - functions/resources/Minify
    - functions/css/PostCSS
  returnType: resource.Resource
  signatures: ['css.TailwindCSS [OPTIONS] RESOURCE']
toc: true
---
@z

@x
{{< new-in 0.128.0 >}}
@y
{{< new-in 0.128.0 >}}
@z

@x
<!-- TODO remove this admonition when feature is stable. -->
@y
<!-- TODO remove this admonition when feature is stable. -->
@z

@x
{{% note %}}
This is an experimental feature pending the release of TailwindCSS v4.0.
@y
{{% note %}}
This is an experimental feature pending the release of TailwindCSS v4.0.
@z

@x
The functionality, configuration requirements, and documentation are subject to change at any time and may be not compatible with prior releases.
{{% /note %}}
@y
The functionality, configuration requirements, and documentation are subject to change at any time and may be not compatible with prior releases.
{{% /note %}}
@z

@x
## Prerequisites
@y
## Prerequisites
@z

@x
To use this function you must install the Tailwind CSS CLI v4.0 or later. You may install the CLI as an npm package or as a standalone executable. See the [Tailwind CSS documentation] for details.
@y
To use this function you must install the Tailwind CSS CLI v4.0 or later. You may install the CLI as an npm package or as a standalone executable. See the [Tailwind CSS documentation] for details.
@z

@x
[Tailwind CSS documentation]: https://tailwindcss.com/docs/installation
@y
[Tailwind CSS documentation]: https://tailwindcss.com/docs/installation
@z

@x
{{% note %}}
Use npm to install the CLI prior to the v4.0 release of Tailwind CSS.
@y
{{% note %}}
Use npm to install the CLI prior to the v4.0 release of Tailwind CSS.
@z

@x
`npm install --save-dev tailwindcss@next @tailwindcss/cli@next`
{{% /note %}}
@y
`npm install --save-dev tailwindcss@next @tailwindcss/cli@next`
{{% /note %}}
@z

@x
## Options
@y
## Options
@z

@x
minify
: (`bool`) Whether to optimize and minify the output. Default is `false`.
@y
minify
: (`bool`) Whether to optimize and minify the output. Default is `false`.
@z

@x
optimize
: (`bool`) Whether to optimize the output without minifying. Default is `false`.
@y
optimize
: (`bool`) Whether to optimize the output without minifying. Default is `false`.
@z

@x
inlineImports
: (`bool`) Whether to enable inlining of `@import` statements. Inlining is performed recursively, but currently once only per file. It is not possible to import the same file in different scopes (root, media query, etc.). Note that this import routine does not care about the CSS specification, so you can have `@import` statements anywhere in the file. Default is `false`.
@y
inlineImports
: (`bool`) Whether to enable inlining of `@import` statements. Inlining is performed recursively, but currently once only per file. It is not possible to import the same file in different scopes (root, media query, etc.). Note that this import routine does not care about the CSS specification, so you can have `@import` statements anywhere in the file. Default is `false`.
@z

@x
skipInlineImportsNotFound
: (`bool`) When `inlineImports` is enabled, we fail the build if an import cannot be resolved. Enable this option to allow the build to continue and leave the import statement in place. Note that the inline importer does not process URL location or imports with media queries, so those will be left as-is even without enabling this option. Default is `false`.
@y
skipInlineImportsNotFound
: (`bool`) When `inlineImports` is enabled, we fail the build if an import cannot be resolved. Enable this option to allow the build to continue and leave the import statement in place. Note that the inline importer does not process URL location or imports with media queries, so those will be left as-is even without enabling this option. Default is `false`.
@z

@x
## Example
@y
## Example
@z

@x
Define a [cache buster] in your site configuration:
@y
Define a [cache buster] in your site configuration:
@z

@x
[cache buster]: /getting-started/configuration/#configure-cache-busters
@y
[cache buster]: /getting-started/configuration/#configure-cache-busters
@z

@x
{{< code-toggle file=hugo >}}
[[build.cachebusters]]
source = 'layouts/.*'
target = 'css'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[[build.cachebusters]]
source = 'layouts/.*'
target = 'css'
{{< /code-toggle >}}
@z

@x
Process the resource:
@y
Process the resource:
@z

@x
```go-html-template
{{ with resources.Get "css/main.css" }}
  {{ $opts := dict "minify" true }}
  {{ with . | css.TailwindCSS $opts }}
    {{ if hugo.IsDevelopment }}
      <link rel="stylesheet" href="{{ .RelPermalink }}">
    {{ else }}
      {{ with . | fingerprint }}
        <link rel="stylesheet" href="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous">
      {{ end }}
    {{ end }}
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "css/main.css" }}
  {{ $opts := dict "minify" true }}
  {{ with . | css.TailwindCSS $opts }}
    {{ if hugo.IsDevelopment }}
      <link rel="stylesheet" href="{{ .RelPermalink }}">
    {{ else }}
      {{ with . | fingerprint }}
        <link rel="stylesheet" href="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous">
      {{ end }}
    {{ end }}
  {{ end }}
{{ end }}
```
@z

@x
The example above publishes the minified CSS file to public/css/main.css.
@y
The example above publishes the minified CSS file to public/css/main.css.
@z

@x
See [this repository] for more information about the integration with Tailwind CSS v4.0.
@y
See [this repository] for more information about the integration with Tailwind CSS v4.0.
@z

@x
[this repository]: https://github.com/bep/hugo-testing-tailwindcss-v4
@y
[this repository]: https://github.com/bep/hugo-testing-tailwindcss-v4
@z
