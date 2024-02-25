%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: resources.PostCSS
description: Processes the given resource with PostCSS using any PostCSS plugin.
categories: []
keywords: []
action:
  aliases: [postCSS]
  related:
    - functions/resources/Fingerprint
    - functions/resources/Minify
    - functions/resources/PostProcess
    - functions/resources/ToCSS
  returnType: resource.Resource
  signatures: ['resources.PostCSS [OPTIONS] RESOURCE']
toc: true
---
@y
---
title: resources.PostCSS
description: Processes the given resource with PostCSS using any PostCSS plugin.
categories: []
keywords: []
action:
  aliases: [postCSS]
  related:
    - functions/resources/Fingerprint
    - functions/resources/Minify
    - functions/resources/PostProcess
    - functions/resources/ToCSS
  returnType: resource.Resource
  signatures: ['resources.PostCSS [OPTIONS] RESOURCE']
toc: true
---
@z

@x
```go-html-template
{{ with resources.Get "css/main.css" | postCSS }}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "css/main.css" | postCSS }}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
```
@z

@x
## Setup
@y
## Setup
@z

@x
Follow the steps below to transform CSS using any of the available [PostCSS plugins].
@y
Follow the steps below to transform CSS using any of the available [PostCSS plugins].
@z

@x
Step 1
: Install [Node.js].
@y
Step 1
: Install [Node.js].
@z

@x
Step 2
: Install the required Node.js packages in the root of your project. For example, to add vendor prefixes to your CSS rules:
@y
Step 2
: Install the required Node.js packages in the root of your project. For example, to add vendor prefixes to your CSS rules:
@z

@x
```sh
npm i -D postcss postcss-cli autoprefixer
```
@y
```sh
npm i -D postcss postcss-cli autoprefixer
```
@z

@x
Step 3
: Create a PostCSS configuration file in the root of your project. You must name this file `postcss.config.js` or another [supported file name]. For example:
@y
Step 3
: Create a PostCSS configuration file in the root of your project. You must name this file `postcss.config.js` or another [supported file name]. For example:
@z

@x
```js
module.exports = {
  plugins: [
    require('autoprefixer')
  ]
};
```
@y
```js
module.exports = {
  plugins: [
    require('autoprefixer')
  ]
};
```
@z

@x
{{% note %}}
{{% include "functions/resources/_common/postcss-windows-warning.md" %}}
{{% /note %}}
@y
{{% note %}}
{{% include "functions/resources/_common/postcss-windows-warning.md" %}}
{{% /note %}}
@z

@x
Step 4
: Place your CSS file within the `assets/css` directory.
@y
Step 4
: Place your CSS file within the `assets/css` directory.
@z

@x
Step 5
: Process the resource with PostCSS:
@y
Step 5
: Process the resource with PostCSS:
@z

@x
```go-html-template
{{ with resources.Get "css/main.css" | postCSS }}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "css/main.css" | postCSS }}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
```
@z

@x
## Options
@y
## Options
@z

@x
The `resources.PostCSS` method takes an optional map of options.
@y
The `resources.PostCSS` method takes an optional map of options.
@z

@x
config
: (`string`) The directory that contains the PostCSS configuration file. Default is the root of the project directory.
@y
config
: (`string`) The directory that contains the PostCSS configuration file. Default is the root of the project directory.
@z

@x
noMap
: (`bool`) Default is `false`. If `true`, disables inline sourcemaps.
@y
noMap
: (`bool`) Default is `false`. If `true`, disables inline sourcemaps.
@z

@x
inlineImports
: (`bool`) Default is `false`. Enable inlining of @import statements. It does so recursively, but will only import a file once. URL imports (e.g. `@import url('https://fonts.googleapis.com/css?family=Open+Sans&display=swap');`) and imports with media queries will be ignored. Note that this import routine does not care about the CSS spec, so you can have @import anywhere in the file. Hugo will look for imports relative to the module mount and will respect theme overrides.
@y
inlineImports
: (`bool`) Default is `false`. Enable inlining of @import statements. It does so recursively, but will only import a file once. URL imports (e.g. `@import url('https://fonts.googleapis.com/css?family=Open+Sans&display=swap');`) and imports with media queries will be ignored. Note that this import routine does not care about the CSS spec, so you can have @import anywhere in the file. Hugo will look for imports relative to the module mount and will respect theme overrides.
@z

@x
skipInlineImportsNotFound
: (`bool`) Default is `false`. Before Hugo 0.99.0 when `inlineImports` was enabled and we failed to resolve an import, we logged it as a warning. We now fail the build. If you have regular CSS imports in your CSS that you want to preserve, you can either use imports with URL or media queries (Hugo does not try to resolve those) or set `skipInlineImportsNotFound` to true.
@y
skipInlineImportsNotFound
: (`bool`) Default is `false`. Before Hugo 0.99.0 when `inlineImports` was enabled and we failed to resolve an import, we logged it as a warning. We now fail the build. If you have regular CSS imports in your CSS that you want to preserve, you can either use imports with URL or media queries (Hugo does not try to resolve those) or set `skipInlineImportsNotFound` to true.
@z

@x
```go-html-template
{{ $opts := dict "config" "config-directory" "noMap" true }}
{{ with resources.Get "css/main.css" | postCSS $opts }}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
```
@y
```go-html-template
{{ $opts := dict "config" "config-directory" "noMap" true }}
{{ with resources.Get "css/main.css" | postCSS $opts }}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
```
@z

@x
## No configuration file
@y
## No configuration file
@z

@x
To avoid using a PostCSS configuration file, you can specify a minimal configuration using the options map.
@y
To avoid using a PostCSS configuration file, you can specify a minimal configuration using the options map.
@z

@x
use
: (`string`) A space-delimited list of PostCSS plugins to use.
@y
use
: (`string`) A space-delimited list of PostCSS plugins to use.
@z

@x
parser
: (`string`) A custom PostCSS parser.
@y
parser
: (`string`) A custom PostCSS parser.
@z

@x
stringifier
: (`string`) A custom PostCSS stringifier.
@y
stringifier
: (`string`) A custom PostCSS stringifier.
@z

@x
syntax
: (`string`) Custom postcss syntax.
@y
syntax
: (`string`) Custom postcss syntax.
@z

@x
```go-html-template
{{ $opts := dict "use" "autoprefixer postcss-color-alpha" }}
{{ with resources.Get "css/main.css" | postCSS $opts }}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
```
@y
```go-html-template
{{ $opts := dict "use" "autoprefixer postcss-color-alpha" }}
{{ with resources.Get "css/main.css" | postCSS $opts }}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
```
@z

@x
## Check environment
@y
## Check environment
@z

@x
The current Hugo environment name (set by `--environment` or in configuration or OS environment) is available in the Node context, which allows constructs like this:
@y
The current Hugo environment name (set by `--environment` or in configuration or OS environment) is available in the Node context, which allows constructs like this:
@z

@x
```js
const autoprefixer = require('autoprefixer');
const purgecss = require('@fullhuman/postcss-purgecss');
module.exports = {
  plugins: [
    autoprefixer,
    process.env.HUGO_ENVIRONMENT !== 'development' ? purgecss : null
  ]
}
```
@y
```js
const autoprefixer = require('autoprefixer');
const purgecss = require('@fullhuman/postcss-purgecss');
module.exports = {
  plugins: [
    autoprefixer,
    process.env.HUGO_ENVIRONMENT !== 'development' ? purgecss : null
  ]
}
```
@z

@x
[node.js]: https://nodejs.org/en/download
[postcss plugins]: https://www.postcss.parts/
[supported file name]: https://github.com/postcss/postcss-load-config#usage
[transpile to CSS]: /functions/resources/tocss.md
@y
[node.js]: https://nodejs.org/en/download
[postcss plugins]: https://www.postcss.parts/
[supported file name]: https://github.com/postcss/postcss-load-config#usage
[transpile to CSS]: /functions/resources/tocss.md
@z
