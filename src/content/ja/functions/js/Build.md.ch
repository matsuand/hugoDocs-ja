%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: js.Build
description: Bundles, transpiles, tree shakes, and minifies JavaScript resources.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/resources/Babel
    - functions/resources/Fingerprint
    - functions/resources/Minify
  returnType: resource.Resource
  signatures: ['js.Build [OPTIONS] RESOURCE']
toc: true
---
@y
---
title: js.Build
description: Bundles, transpiles, tree shakes, and minifies JavaScript resources.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/resources/Babel
    - functions/resources/Fingerprint
    - functions/resources/Minify
  returnType: resource.Resource
  signatures: ['js.Build [OPTIONS] RESOURCE']
toc: true
---
@z

@x
The `js.Build` function uses the [evanw/esbuild] package to:
@y
The `js.Build` function uses the [evanw/esbuild] package to:
@z

@x
- Bundle
- Transpile (TypeScript and JSX)
- Tree shake
- Minify
- Create source maps
@y
- Bundle
- Transpile (TypeScript and JSX)
- Tree shake
- Minify
- Create source maps
@z

@x
[evanw/esbuild]: https://github.com/evanw/esbuild
@y
[evanw/esbuild]: https://github.com/evanw/esbuild
@z

@x
```go-html-template
{{ with resources.Get "js/main.js" }}
  {{ if hugo.IsDevelopment }}
    {{ with . | js.Build }}
      <script src="{{ .RelPermalink }}"></script>
    {{ end }}
  {{ else }}
    {{ $opts := dict "minify" true }}
    {{ with . | js.Build $opts | fingerprint }}
      <script src="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous"></script>
    {{ end }}
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "js/main.js" }}
  {{ if hugo.IsDevelopment }}
    {{ with . | js.Build }}
      <script src="{{ .RelPermalink }}"></script>
    {{ end }}
  {{ else }}
    {{ $opts := dict "minify" true }}
    {{ with . | js.Build $opts | fingerprint }}
      <script src="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous"></script>
    {{ end }}
  {{ end }}
{{ end }}
```
@z

@x
## Options
@y
## Options
@z

@x
targetPath
: (`string`) If not set, the source path will be used as the base target path.
Note that the target path's extension may change if the target MIME type is different, e.g. when the source is TypeScript.
@y
targetPath
: (`string`) If not set, the source path will be used as the base target path.
Note that the target path's extension may change if the target MIME type is different, e.g. when the source is TypeScript.
@z

@x
params
: (`map` or `slice`) Params that can be imported as JSON in your JS files, e.g.
@y
params
: (`map` or `slice`) Params that can be imported as JSON in your JS files, e.g.
@z

@x
```go-html-template
{{ $js := resources.Get "js/main.js" | js.Build (dict "params" (dict "api" "https://example.org/api")) }}
```
And then in your JS file:
@y
```go-html-template
{{ $js := resources.Get "js/main.js" | js.Build (dict "params" (dict "api" "https://example.org/api")) }}
```
And then in your JS file:
@z

@x
```js
import * as params from '@params';
```
@y
```js
import * as params from '@params';
```
@z

@x
Note that this is meant for small data sets, e.g. configuration settings. For larger data, please put/mount the files into `/assets` and import them directly.
@y
Note that this is meant for small data sets, e.g. configuration settings. For larger data, please put/mount the files into `/assets` and import them directly.
@z

@x
minify
: (`bool`)Let `js.Build` handle the minification.
@y
minify
: (`bool`)Let `js.Build` handle the minification.
@z

@x
inject
: (`slice`) This option allows you to automatically replace a global variable with an import from another file. The path names must be relative to `assets`. See https://esbuild.github.io/api/#inject
@y
inject
: (`slice`) This option allows you to automatically replace a global variable with an import from another file. The path names must be relative to `assets`. See https://esbuild.github.io/api/#inject
@z

@x
shims
: (`map`) This option allows swapping out a component with another. A common use case is to load dependencies like React from a CDN  (with _shims_) when in production, but running with the full bundled `node_modules` dependency during development:
@y
shims
: (`map`) This option allows swapping out a component with another. A common use case is to load dependencies like React from a CDN  (with _shims_) when in production, but running with the full bundled `node_modules` dependency during development:
@z

@x
```go-html-template
{{ $shims := dict "react" "js/shims/react.js"  "react-dom" "js/shims/react-dom.js" }}
{{ $js = $js | js.Build dict "shims" $shims }}
```
@y
```go-html-template
{{ $shims := dict "react" "js/shims/react.js"  "react-dom" "js/shims/react-dom.js" }}
{{ $js = $js | js.Build dict "shims" $shims }}
```
@z

@x
The _shim_ files may look like these:
@y
The _shim_ files may look like these:
@z

@x
```js
// js/shims/react.js
module.exports = window.React;
```
@y
```js
// js/shims/react.js
module.exports = window.React;
```
@z

@x
```js
// js/shims/react-dom.js
module.exports = window.ReactDOM;
```
@y
```js
// js/shims/react-dom.js
module.exports = window.ReactDOM;
```
@z

@x
With the above, these imports should work in both scenarios:
@y
With the above, these imports should work in both scenarios:
@z

@x
```js
import * as React from 'react'
import * as ReactDOM from 'react-dom';
```
@y
```js
import * as React from 'react'
import * as ReactDOM from 'react-dom';
```
@z

@x
target
: (`string`) The language target. One of: `es5`, `es2015`, `es2016`, `es2017`, `es2018`, `es2019`, `es2020` or `esnext`. Default is `esnext`.
@y
target
: (`string`) The language target. One of: `es5`, `es2015`, `es2016`, `es2017`, `es2018`, `es2019`, `es2020` or `esnext`. Default is `esnext`.
@z

@x
externals
: (`slice`) External dependencies. Use this to trim dependencies you know will never be executed. See https://esbuild.github.io/api/#external
@y
externals
: (`slice`) External dependencies. Use this to trim dependencies you know will never be executed. See https://esbuild.github.io/api/#external
@z

@x
defines
: (`map`) Allow to define a set of string replacement to be performed when building. Should be a map where each key is to be replaced by its value.
@y
defines
: (`map`) Allow to define a set of string replacement to be performed when building. Should be a map where each key is to be replaced by its value.
@z

@x
```go-html-template
{{ $defines := dict "process.env.NODE_ENV" `"development"` }}
```
@y
```go-html-template
{{ $defines := dict "process.env.NODE_ENV" `"development"` }}
```
@z

@x
format
: (`string`) The output format. One of: `iife`, `cjs`, `esm`. Default is `iife`, a self-executing function, suitable for inclusion as a `<script>` tag.
@y
format
: (`string`) The output format. One of: `iife`, `cjs`, `esm`. Default is `iife`, a self-executing function, suitable for inclusion as a `<script>` tag.
@z

@x
sourceMap
: (`string`) Whether to generate `inline` or `external` source maps from esbuild. External source maps will be written to the target with the output file name + ".map". Input source maps can be read from js.Build and node modules and combined into the output source maps. By default, source maps are not created.
@y
sourceMap
: (`string`) Whether to generate `inline` or `external` source maps from esbuild. External source maps will be written to the target with the output file name + ".map". Input source maps can be read from js.Build and node modules and combined into the output source maps. By default, source maps are not created.
@z

@x
### Import JS code from /assets
@y
### Import JS code from /assets
@z

@x
`js.Build` has full support for the virtual union file system in [Hugo Modules](/hugo-modules/). You can see some simple examples in this [test project](https://github.com/gohugoio/hugoTestProjectJSModImports), but in short this means that you can do this:
@y
`js.Build` has full support for the virtual union file system in [Hugo Modules](/hugo-modules/). You can see some simple examples in this [test project](https://github.com/gohugoio/hugoTestProjectJSModImports), but in short this means that you can do this:
@z

@x
```js
import { hello } from 'my/module';
```
@y
```js
import { hello } from 'my/module';
```
@z

@x
And it will resolve to the top-most `index.{js,ts,tsx,jsx}` inside `assets/my/module` in the layered file system.
@y
And it will resolve to the top-most `index.{js,ts,tsx,jsx}` inside `assets/my/module` in the layered file system.
@z

@x
```js
import { hello3 } from 'my/module/hello3';
```
@y
```js
import { hello3 } from 'my/module/hello3';
```
@z

@x
Will resolve to `hello3.{js,ts,tsx,jsx}` inside `assets/my/module`.
@y
Will resolve to `hello3.{js,ts,tsx,jsx}` inside `assets/my/module`.
@z

@x
Any imports starting with `.` is resolved relative to the current file:
@y
Any imports starting with `.` is resolved relative to the current file:
@z

@x
```js
import { hello4 } from './lib';
```
@y
```js
import { hello4 } from './lib';
```
@z

@x
For other files (e.g. `JSON`, `CSS`) you need to use the relative path including any extension, e.g:
@y
For other files (e.g. `JSON`, `CSS`) you need to use the relative path including any extension, e.g:
@z

@x
```js
import * as data from 'my/module/data.json';
```
@y
```js
import * as data from 'my/module/data.json';
```
@z

@x
Any imports in a file outside `/assets` or that does not resolve to a component inside `/assets` will be resolved by [ESBuild](https://esbuild.github.io/) with the **project directory** as the resolve directory (used as the starting point when looking for `node_modules` etc.). Also see [hugo mod npm pack](/commands/hugo_mod_npm_pack/). If you have any imported npm dependencies in your project, you need to make sure to run `npm install` before you run `hugo`.
@y
Any imports in a file outside `/assets` or that does not resolve to a component inside `/assets` will be resolved by [ESBuild](https://esbuild.github.io/) with the **project directory** as the resolve directory (used as the starting point when looking for `node_modules` etc.). Also see [hugo mod npm pack](/commands/hugo_mod_npm_pack/). If you have any imported npm dependencies in your project, you need to make sure to run `npm install` before you run `hugo`.
@z

@x
Also note the new `params` option that can be passed from template to your JS files, e.g.:
@y
Also note the new `params` option that can be passed from template to your JS files, e.g.:
@z

@x
```go-html-template
{{ $js := resources.Get "js/main.js" | js.Build (dict "params" (dict "api" "https://example.org/api")) }}
```
And then in your JS file:
@y
```go-html-template
{{ $js := resources.Get "js/main.js" | js.Build (dict "params" (dict "api" "https://example.org/api")) }}
```
And then in your JS file:
@z

@x
```js
import * as params from '@params';
```
@y
```js
import * as params from '@params';
```
@z

@x
Hugo will, by default, generate a `assets/jsconfig.json` file that maps the imports. This is useful for navigation/intellisense help inside code editors, but if you don't need/want it, you can [turn it off](/getting-started/configuration/#configure-build).
@y
Hugo will, by default, generate a `assets/jsconfig.json` file that maps the imports. This is useful for navigation/intellisense help inside code editors, but if you don't need/want it, you can [turn it off](/getting-started/configuration/#configure-build).
@z

@x
## Node.js dependencies
@y
## Node.js dependencies
@z

@x
Use the `js.Build` function to include Node.js dependencies.
@y
Use the `js.Build` function to include Node.js dependencies.
@z

@x
Any imports in a file outside `/assets` or that does not resolve to a component inside `/assets` will be resolved by [esbuild](https://esbuild.github.io/) with the **project directory** as the resolve directory (used as the starting point when looking for `node_modules` etc.). Also see [hugo mod npm pack](/commands/hugo_mod_npm_pack/). If you have any imported npm dependencies in your project, you need to make sure to run `npm install` before you run `hugo`.
@y
Any imports in a file outside `/assets` or that does not resolve to a component inside `/assets` will be resolved by [esbuild](https://esbuild.github.io/) with the **project directory** as the resolve directory (used as the starting point when looking for `node_modules` etc.). Also see [hugo mod npm pack](/commands/hugo_mod_npm_pack/). If you have any imported npm dependencies in your project, you need to make sure to run `npm install` before you run `hugo`.
@z

@x
The start directory for resolving npm packages (aka. packages that live inside a `node_modules` folder) is always the main project folder.
@y
The start directory for resolving npm packages (aka. packages that live inside a `node_modules` folder) is always the main project folder.
@z

@x
{{% note %}}
If you're developing a theme/component that is supposed to be imported and depends on dependencies inside `package.json`, we recommend reading about [hugo mod npm pack](/commands/hugo_mod_npm_pack/), a tool to consolidate all the npm dependencies in a project.
{{% /note %}}
@y
{{% note %}}
If you're developing a theme/component that is supposed to be imported and depends on dependencies inside `package.json`, we recommend reading about [hugo mod npm pack](/commands/hugo_mod_npm_pack/), a tool to consolidate all the npm dependencies in a project.
{{% /note %}}
@z

@x
## Examples
@y
## Examples
@z

@x
```go-html-template
{{ $built := resources.Get "js/index.js" | js.Build "main.js" }}
```
@y
```go-html-template
{{ $built := resources.Get "js/index.js" | js.Build "main.js" }}
```
@z

@x
Or with options:
@y
Or with options:
@z

@x
```go-html-template
{{ $externals := slice "react" "react-dom" }}
{{ $defines := dict "process.env.NODE_ENV" `"development"` }}
@y
```go-html-template
{{ $externals := slice "react" "react-dom" }}
{{ $defines := dict "process.env.NODE_ENV" `"development"` }}
@z

@x
{{ $opts := dict "targetPath" "main.js" "externals" $externals "defines" $defines }}
{{ $built := resources.Get "scripts/main.js" | js.Build $opts }}
<script src="{{ $built.RelPermalink }}" defer></script>
```
@y
{{ $opts := dict "targetPath" "main.js" "externals" $externals "defines" $defines }}
{{ $built := resources.Get "scripts/main.js" | js.Build $opts }}
<script src="{{ $built.RelPermalink }}" defer></script>
```
@z
