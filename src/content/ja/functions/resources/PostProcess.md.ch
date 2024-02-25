%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: resources.PostProcess
description: Processes the given resource after the build.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/resources/Fingerprint
    - functions/resources/Minify
    - functions/resources/PostCSS
    - functions/resources/ToCSS
  returnType: postpub.PostPublishedResource
  signatures: [resources.PostProcess RESOURCE]
toc: true
---
@y
---
title: resources.PostProcess
description: Processes the given resource after the build.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/resources/Fingerprint
    - functions/resources/Minify
    - functions/resources/PostCSS
    - functions/resources/ToCSS
  returnType: postpub.PostPublishedResource
  signatures: [resources.PostProcess RESOURCE]
toc: true
---
@z

@x
```go-html-template
{{ with resources.Get "css/main.css" }}
  {{ if hugo.IsDevelopment }}
    <link rel="stylesheet" href="{{ .RelPermalink }}">
  {{ else }}
    {{ with . | postCSS | minify | fingerprint | resources.PostProcess }}
      <link rel="stylesheet" href="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous">
    {{ end }}
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "css/main.css" }}
  {{ if hugo.IsDevelopment }}
    <link rel="stylesheet" href="{{ .RelPermalink }}">
  {{ else }}
    {{ with . | postCSS | minify | fingerprint | resources.PostProcess }}
      <link rel="stylesheet" href="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous">
    {{ end }}
  {{ end }}
{{ end }}
```
@z

@x
Marking a resource with `resources.PostProcess` postpones transformations until the build has finished.
@y
Marking a resource with `resources.PostProcess` postpones transformations until the build has finished.
@z

@x
Call `resources.PostProcess` when one or more of the steps in the transformation chain depends on the result of the build.
@y
Call `resources.PostProcess` when one or more of the steps in the transformation chain depends on the result of the build.
@z

@x
A prime use case for this is purging unused CSS rules using the [PurgeCSS] plugin for the PostCSS Node.js package.
@y
A prime use case for this is purging unused CSS rules using the [PurgeCSS] plugin for the PostCSS Node.js package.
@z

@x
## CSS Purging
@y
## CSS Purging
@z

@x
{{% note %}}
There are several ways to set up CSS purging with PostCSS in Hugo. If you have a simple project, you should consider going the simpler route and drop the use of `resources.PostProcess` and just extract keywords from the templates. See the [Tailwind documentation](https://tailwindcss.com/docs/controlling-file-size/#app) for examples.
{{% /note %}}
@y
{{% note %}}
There are several ways to set up CSS purging with PostCSS in Hugo. If you have a simple project, you should consider going the simpler route and drop the use of `resources.PostProcess` and just extract keywords from the templates. See the [Tailwind documentation](https://tailwindcss.com/docs/controlling-file-size/#app) for examples.
{{% /note %}}
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
: Install the required Node.js packages in the root of your project:
@y
Step 2
: Install the required Node.js packages in the root of your project:
@z

@x
```sh
npm i -D postcss postcss-cli autoprefixer @fullhuman/postcss-purgecss
```
@y
```sh
npm i -D postcss postcss-cli autoprefixer @fullhuman/postcss-purgecss
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
const autoprefixer = require('autoprefixer');
const purgecss = require('@fullhuman/postcss-purgecss')({
  content: ['./hugo_stats.json'],
  defaultExtractor: content => {
    const els = JSON.parse(content).htmlElements;
    return [
      ...(els.tags || []),
      ...(els.classes || []),
      ...(els.ids || []),
    ];
  },
  // https://purgecss.com/safelisting.html
  safelist: []
});
@y
```js
const autoprefixer = require('autoprefixer');
const purgecss = require('@fullhuman/postcss-purgecss')({
  content: ['./hugo_stats.json'],
  defaultExtractor: content => {
    const els = JSON.parse(content).htmlElements;
    return [
      ...(els.tags || []),
      ...(els.classes || []),
      ...(els.ids || []),
    ];
  },
  // https://purgecss.com/safelisting.html
  safelist: []
});
@z

@x
module.exports = {
  plugins: [
    autoprefixer,
    process.env.HUGO_ENVIRONMENT !== 'development' ? purgecss : null
  ]
};
```
@y
module.exports = {
  plugins: [
    autoprefixer,
    process.env.HUGO_ENVIRONMENT !== 'development' ? purgecss : null
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
: Enable creation of the `hugo_stats.json` file when building the site. If you are only using this for the production build, consider placing it below [config/production].
@y
Step 4
: Enable creation of the `hugo_stats.json` file when building the site. If you are only using this for the production build, consider placing it below [config/production].
@z

@x
{{< code-toggle file=hugo >}}
[build.buildStats]
enable = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[build.buildStats]
enable = true
{{< /code-toggle >}}
@z

@x
See the [configure build] documentation for details and options.
@y
See the [configure build] documentation for details and options.
@z

@x
Step 5
: Place your CSS file within the `assets/css` directory.
@y
Step 5
: Place your CSS file within the `assets/css` directory.
@z

@x
Step 6
: If the current environment is not `development`, process the resource with PostCSS:
@y
Step 6
: If the current environment is not `development`, process the resource with PostCSS:
@z

@x
```go-html-template
{{ with resources.Get "css/main.css" }}
  {{ if hugo.IsDevelopment }}
    <link rel="stylesheet" href="{{ .RelPermalink }}">
  {{ else }}
    {{ with . | postCSS | minify | fingerprint | resources.PostProcess }}
      <link rel="stylesheet" href="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous">
    {{ end }}
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "css/main.css" }}
  {{ if hugo.IsDevelopment }}
    <link rel="stylesheet" href="{{ .RelPermalink }}">
  {{ else }}
    {{ with . | postCSS | minify | fingerprint | resources.PostProcess }}
      <link rel="stylesheet" href="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous">
    {{ end }}
  {{ end }}
{{ end }}
```
@z

@x
## Environment variables
@y
## Environment variables
@z

@x
Hugo passes these environment variables to PostCSS, which allows you to do something like:
@y
Hugo passes these environment variables to PostCSS, which allows you to do something like:
@z

@x
```js
process.env.HUGO_ENVIRONMENT === 'production' ? [autoprefixer] : []
```
@y
```js
process.env.HUGO_ENVIRONMENT === 'production' ? [autoprefixer] : []
```
@z

@x
PWD
: The absolute path to the project working directory.
@y
PWD
: The absolute path to the project working directory.
@z

@x
HUGO_ENVIRONMENT
: The current Hugo environment, set with the `--environment` command line flag.
Default is `production` for `hugo` and `development` for `hugo server`.
@y
HUGO_ENVIRONMENT
: The current Hugo environment, set with the `--environment` command line flag.
Default is `production` for `hugo` and `development` for `hugo server`.
@z

@x
HUGO_PUBLISHDIR
: The absolute path to the publish directory (the `public` directory). Note that the value will always point to a directory on disk even when running `hugo server` in memory mode. If you write to this folder from PostCSS when running the server, you could run the server with one of these flags:
@y
HUGO_PUBLISHDIR
: The absolute path to the publish directory (the `public` directory). Note that the value will always point to a directory on disk even when running `hugo server` in memory mode. If you write to this folder from PostCSS when running the server, you could run the server with one of these flags:
@z

@x
```sh
hugo server --renderToDisk
hugo server --renderStaticToDisk
```
@y
```sh
hugo server --renderToDisk
hugo server --renderStaticToDisk
```
@z

@x
Also, Hugo will add environment variables for all files mounted below `assets/_jsconfig`. A default mount will be set up with files in the project root matching this regexp: `(babel|postcss|tailwind)\.config\.js`.
@y
Also, Hugo will add environment variables for all files mounted below `assets/_jsconfig`. A default mount will be set up with files in the project root matching this regexp: `(babel|postcss|tailwind)\.config\.js`.
@z

@x
These will get environment variables named on the form `HUGO_FILE_:filename:` where `:filename:` is all upper case with periods replaced with underscore. This allows you to do something like:
@y
These will get environment variables named on the form `HUGO_FILE_:filename:` where `:filename:` is all upper case with periods replaced with underscore. This allows you to do something like:
@z

@x
```js
let tailwindConfig = process.env.HUGO_FILE_TAILWIND_CONFIG_JS || './tailwind.config.js';
```
@y
```js
let tailwindConfig = process.env.HUGO_FILE_TAILWIND_CONFIG_JS || './tailwind.config.js';
```
@z

@x
## Limitations
@y
## Limitations
@z

@x
Do not use `resources.PostProcess` when running Hugo's built-in development server. The examples above specifically prevent this by verifying that the current environment is not "development".
@y
Do not use `resources.PostProcess` when running Hugo's built-in development server. The examples above specifically prevent this by verifying that the current environment is not "development".
@z

@x
The `resources.PostProcess` function only works within templates that produce HTML files.
@y
The `resources.PostProcess` function only works within templates that produce HTML files.
@z

@x
You cannot manipulate the values returned from the resource’s methods. For example, the `strings.ToUpper` function in this example will not work as expected:
@y
You cannot manipulate the values returned from the resource’s methods. For example, the `strings.ToUpper` function in this example will not work as expected:
@z

@x
```go-html-template
{{ $css := resources.Get "css/main.css" }}
{{ $css = $css | resources.PostCSS | minify | fingerprint | resources.PostProcess }}
{{ $css.RelPermalink | strings.ToUpper }}
```
@y
```go-html-template
{{ $css := resources.Get "css/main.css" }}
{{ $css = $css | resources.PostCSS | minify | fingerprint | resources.PostProcess }}
{{ $css.RelPermalink | strings.ToUpper }}
```
@z

@x
[node.js]: https://nodejs.org/en/download
[supported file name]: https://github.com/postcss/postcss-load-config#usage
[config/production]: /getting-started/configuration/#configuration-directory
[configure build]: /getting-started/configuration/#configure-build
[purgecss]: https://github.com/FullHuman/purgecss#readme
@y
[node.js]: https://nodejs.org/en/download
[supported file name]: https://github.com/postcss/postcss-load-config#usage
[config/production]: /getting-started/configuration/#configuration-directory
[configure build]: /getting-started/configuration/#configure-build
[purgecss]: https://github.com/FullHuman/purgecss#readme
@z
