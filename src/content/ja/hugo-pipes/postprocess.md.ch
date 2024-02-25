%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: PostProcess
description: Allows delaying of resource transformations to after the build.
categories: [asset management]
keywords: []
menu:
  docs:
    parent: hugo-pipes
    weight: 50
weight: 50
action:
  aliases: []
  returnType: postpub.PostPublishedResource
  signatures: [resources.PostProcess RESOURCE]
---
@y
---
title: PostProcess
description: Allows delaying of resource transformations to after the build.
categories: [asset management]
keywords: []
menu:
  docs:
    parent: hugo-pipes
    weight: 50
weight: 50
action:
  aliases: []
  returnType: postpub.PostPublishedResource
  signatures: [resources.PostProcess RESOURCE]
---
@z

@x
## Usage
@y
## Usage
@z

@x
Marking a resource with `resources.PostProcess` delays any transformations to after the build, typically because one or more of the steps in the transformation chain depends on the result of the build (e.g. files in `public`).
@y
Marking a resource with `resources.PostProcess` delays any transformations to after the build, typically because one or more of the steps in the transformation chain depends on the result of the build (e.g. files in `public`).
@z

@x
A prime use case for this is [CSS purging with PostCSS](#css-purging-with-postcss).
@y
A prime use case for this is [CSS purging with PostCSS](#css-purging-with-postcss).
@z

@x
There are currently two limitations to this:
@y
There are currently two limitations to this:
@z

@x
1. This only works in `*.html` templates (i.e. templates that produces HTML files).
2. You cannot manipulate the values returned from the resource's methods. E.g. the `upper` in this example will not work as expected:
@y
1. This only works in `*.html` templates (i.e. templates that produces HTML files).
2. You cannot manipulate the values returned from the resource's methods. E.g. the `upper` in this example will not work as expected:
@z

@x
    ```go-html-template
    {{ $css := resources.Get "css/main.css" }}
    {{ $css = $css | resources.PostCSS | minify | fingerprint | resources.PostProcess }}
    {{ $css.RelPermalink | upper }}
    ```
@y
    ```go-html-template
    {{ $css := resources.Get "css/main.css" }}
    {{ $css = $css | resources.PostCSS | minify | fingerprint | resources.PostProcess }}
    {{ $css.RelPermalink | upper }}
    ```
@z

@x
## CSS purging with PostCSS
@y
## CSS purging with PostCSS
@z

@x
{{% note %}}
There are several ways to set up CSS purging with PostCSS in Hugo. If you have a simple project, you should consider going the simpler route and drop the use of `resources.PostProcess` and just extract keywords from the templates. See the [Tailwind documentation](https://tailwindcss.com/docs/controlling-file-size/#app) for some examples.
{{% /note %}}
@y
{{% note %}}
There are several ways to set up CSS purging with PostCSS in Hugo. If you have a simple project, you should consider going the simpler route and drop the use of `resources.PostProcess` and just extract keywords from the templates. See the [Tailwind documentation](https://tailwindcss.com/docs/controlling-file-size/#app) for some examples.
{{% /note %}}
@z

@x
The below configuration will write a `hugo_stats.json` file to the project root as part of the build. If you're only using this for the production build, you should consider placing it below [config/production](/getting-started/configuration/#configuration-directory).
@y
The below configuration will write a `hugo_stats.json` file to the project root as part of the build. If you're only using this for the production build, you should consider placing it below [config/production](/getting-started/configuration/#configuration-directory).
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
[configure build]: /getting-started/configuration/#configure-build
@y
[configure build]: /getting-started/configuration/#configure-build
@z

@x
`postcss.config.js`
@y
`postcss.config.js`
@z

@x
```js
const purgecss = require('@fullhuman/postcss-purgecss')({
    content: [ './hugo_stats.json' ],
    defaultExtractor: (content) => {
        let els = JSON.parse(content).htmlElements;
        return els.tags.concat(els.classes, els.ids);
    }
});
@y
```js
const purgecss = require('@fullhuman/postcss-purgecss')({
    content: [ './hugo_stats.json' ],
    defaultExtractor: (content) => {
        let els = JSON.parse(content).htmlElements;
        return els.tags.concat(els.classes, els.ids);
    }
});
@z

@x
module.exports = {
     plugins: [
         ...(process.env.HUGO_ENVIRONMENT === 'production' ? [ purgecss ] : [])
     ]
 };
```
@y
module.exports = {
     plugins: [
         ...(process.env.HUGO_ENVIRONMENT === 'production' ? [ purgecss ] : [])
     ]
 };
```
@z

@x
Note that in the example above, the "CSS purge step" will only be applied to the production build. This means that you need to do something like this in your head template to build and include your CSS:
@y
Note that in the example above, the "CSS purge step" will only be applied to the production build. This means that you need to do something like this in your head template to build and include your CSS:
@z

@x
```go-html-template
{{ $css := resources.Get "css/main.css" }}
{{ $css = $css | resources.PostCSS }}
{{ if hugo.IsProduction }}
{{ $css = $css | minify | fingerprint | resources.PostProcess }}
{{ end }}
<link href="{{ $css.RelPermalink }}" rel="stylesheet" />
```
@y
```go-html-template
{{ $css := resources.Get "css/main.css" }}
{{ $css = $css | resources.PostCSS }}
{{ if hugo.IsProduction }}
{{ $css = $css | minify | fingerprint | resources.PostProcess }}
{{ end }}
<link href="{{ $css.RelPermalink }}" rel="stylesheet" />
```
@z

@x
## Hugo environment variables available in PostCSS
@y
## Hugo environment variables available in PostCSS
@z

@x
These are the environment variables Hugo passes down to PostCSS (and Babel), which allows you do do `process.env.HUGO_ENVIRONMENT === 'production' ? [autoprefixer] : []` and similar:
@y
These are the environment variables Hugo passes down to PostCSS (and Babel), which allows you do do `process.env.HUGO_ENVIRONMENT === 'production' ? [autoprefixer] : []` and similar:
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
: The value e.g. set with `hugo -e production` (defaults to `production` for `hugo` and `development` for `hugo server`).
@y
HUGO_ENVIRONMENT
: The value e.g. set with `hugo -e production` (defaults to `production` for `hugo` and `development` for `hugo server`).
@z

@x
HUGO_PUBLISHDIR
: {{< new-in 0.109.0 >}} The absolute path to the publish directory (the `public` directory). Note that the value will always point to a directory on disk even when running `hugo server` in memory mode. If you write to this folder from PostCSS when running the server, you could run the server with one of these flags:
@y
HUGO_PUBLISHDIR
: {{< new-in 0.109.0 >}} The absolute path to the publish directory (the `public` directory). Note that the value will always point to a directory on disk even when running `hugo server` in memory mode. If you write to this folder from PostCSS when running the server, you could run the server with one of these flags:
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
These will get environment variables named on the form `HUGO_FILE_:filename:` where `:filename:` is all upper case with periods replaced with underscore. This allows you to do this and similar:
@y
These will get environment variables named on the form `HUGO_FILE_:filename:` where `:filename:` is all upper case with periods replaced with underscore. This allows you to do this and similar:
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
