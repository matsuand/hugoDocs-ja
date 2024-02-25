%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: PostCSS
description: Process CSS files with PostCSS, using any of the available plugins.
categories: [asset management]
keywords: []
menu:
  docs:
    parent: hugo-pipes
    weight: 40
weight: 40
toc: true
action:
  aliases: [postCSS]
  returnType: resource.Resource
  signatures: ['resources.PostCSS [OPTIONS] RESOURCE']
---
@y
---
title: PostCSS
description: Process CSS files with PostCSS, using any of the available plugins.
categories: [asset management]
keywords: []
menu:
  docs:
    parent: hugo-pipes
    weight: 40
weight: 40
toc: true
action:
  aliases: [postCSS]
  returnType: resource.Resource
  signatures: ['resources.PostCSS [OPTIONS] RESOURCE']
---
@z

@x
## Setup
@y
## Setup
@z

@x
Follow the steps below to transform CSS using any of the [available PostCSS plugins](https://www.postcss.parts/).
@y
Follow the steps below to transform CSS using any of the [available PostCSS plugins](https://www.postcss.parts/).
@z

@x
Step 1
: Install [Node.js](https://nodejs.org/en/download).
@y
Step 1
: Install [Node.js](https://nodejs.org/en/download).
@z

@x
Step 2
: Install the required Node.js packages in the root of your project. For example, to add vendor prefixes to CSS rules:
@y
Step 2
: Install the required Node.js packages in the root of your project. For example, to add vendor prefixes to CSS rules:
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
: Create a PostCSS configuration file in the root of your project. You must name this file `postcss.config.js` or one of the other [supported file names]. For example:
@y
Step 3
: Create a PostCSS configuration file in the root of your project. You must name this file `postcss.config.js` or one of the other [supported file names]. For example:
@z

@x
[supported file names]: https://github.com/postcss/postcss-load-config#usage
@y
[supported file names]: https://github.com/postcss/postcss-load-config#usage
@z

@x
{{< code file=postcss.config.js >}}
module.exports = {
  plugins: [
    require('autoprefixer')
  ]
};
{{< /code >}}
@y
{{< code file=postcss.config.js >}}
module.exports = {
  plugins: [
    require('autoprefixer')
  ]
};
{{< /code >}}
@z

@x
{{% note %}}
If you are a Windows user, and the path to your project contains a space, you must place the PostCSS configuration within the package.json file. See [this example](https://github.com/postcss/postcss-load-config#packagejson) and issue [#7333](https://github.com/gohugoio/hugo/issues/7333).
{{% /note %}}
@y
{{% note %}}
If you are a Windows user, and the path to your project contains a space, you must place the PostCSS configuration within the package.json file. See [this example](https://github.com/postcss/postcss-load-config#packagejson) and issue [#7333](https://github.com/gohugoio/hugo/issues/7333).
{{% /note %}}
@z

@x
Step 4
: Place your CSS file within the `assets` directory.
@y
Step 4
: Place your CSS file within the `assets` directory.
@z

@x
Step 5
: Capture the CSS file as a resource and pipe it through `resources.PostCSS` (alias `postCSS`):
@y
Step 5
: Capture the CSS file as a resource and pipe it through `resources.PostCSS` (alias `postCSS`):
@z

@x
{{< code file=layouts/partials/css.html >}}
{{ with resources.Get "css/main.css" | postCSS }}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/partials/css.html >}}
{{ with resources.Get "css/main.css" | postCSS }}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
{{< /code >}}
@z

@x
If starting with a Sass file within the `assets` directory:
@y
If starting with a Sass file within the `assets` directory:
@z

@x
{{< code file=layouts/partials/css.html >}}
{{ with resources.Get "sass/main.scss" | toCSS | postCSS }}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/partials/css.html >}}
{{ with resources.Get "sass/main.scss" | toCSS | postCSS }}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
{{< /code >}}
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
: (`bool`) Default is `false`. Enable inlining of @import statements. It does so recursively, but will only import a file once.
URL imports (e.g. `@import url('https://fonts.googleapis.com/css?family=Open+Sans&display=swap');`) and imports with media queries will be ignored.
Note that this import routine does not care about the CSS spec, so you can have @import anywhere in the file.
Hugo will look for imports relative to the module mount and will respect theme overrides.
@y
inlineImports
: (`bool`) Default is `false`. Enable inlining of @import statements. It does so recursively, but will only import a file once.
URL imports (e.g. `@import url('https://fonts.googleapis.com/css?family=Open+Sans&display=swap');`) and imports with media queries will be ignored.
Note that this import routine does not care about the CSS spec, so you can have @import anywhere in the file.
Hugo will look for imports relative to the module mount and will respect theme overrides.
@z

@x
skipInlineImportsNotFound {{< new-in 0.99.0 >}}
: (`bool`) Default is `false`. Before Hugo 0.99.0 when `inlineImports` was enabled and we failed to resolve an import, we logged it as a warning. We now fail the build. If you have regular CSS imports in your CSS that you want to preserve, you can either use imports with URL or media queries (Hugo does not try to resolve those) or set `skipInlineImportsNotFound` to true.
@y
skipInlineImportsNotFound {{< new-in 0.99.0 >}}
: (`bool`) Default is `false`. Before Hugo 0.99.0 when `inlineImports` was enabled and we failed to resolve an import, we logged it as a warning. We now fail the build. If you have regular CSS imports in your CSS that you want to preserve, you can either use imports with URL or media queries (Hugo does not try to resolve those) or set `skipInlineImportsNotFound` to true.
@z

@x
{{< code file=layouts/partials/css.html >}}
{{ $opts := dict "config" "config-directory" "noMap" true }}
{{ with resources.Get "css/main.css" | postCSS $opts }}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/partials/css.html >}}
{{ $opts := dict "config" "config-directory" "noMap" true }}
{{ with resources.Get "css/main.css" | postCSS $opts }}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
{{< /code >}}
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
{{< code file=layouts/partials/css.html >}}
{{ $opts := dict "use" "autoprefixer postcss-color-alpha" }}
{{ with resources.Get "css/main.css" | postCSS $opts }}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/partials/css.html >}}
{{ $opts := dict "use" "autoprefixer postcss-color-alpha" }}
{{ with resources.Get "css/main.css" | postCSS $opts }}
  <link rel="stylesheet" href="{{ .RelPermalink }}">
{{ end }}
{{< /code >}}
@z

@x
## Check Hugo environment
@y
## Check Hugo environment
@z

@x
The current Hugo environment name (set by `--environment` or in configuration or OS environment) is available in the Node context, which allows constructs like this:
@y
The current Hugo environment name (set by `--environment` or in configuration or OS environment) is available in the Node context, which allows constructs like this:
@z

@x
{{< code file=postcss.config.js >}}
module.exports = {
  plugins: [
    require('autoprefixer'),
    ...process.env.HUGO_ENVIRONMENT === 'production'
      ? [purgecss]
      : []
  ]
}
{{< /code >}}
@y
{{< code file=postcss.config.js >}}
module.exports = {
  plugins: [
    require('autoprefixer'),
    ...process.env.HUGO_ENVIRONMENT === 'production'
      ? [purgecss]
      : []
  ]
}
{{< /code >}}
@z
