%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: resources.Babel
description: Compiles the given JavaScript resource with Babel.
categories: []
keywords: []
action:
  aliases: [babel]
  related:
    - functions/js/Build
    - functions/resources/Fingerprint
    - functions/resources/Minify
  returnType: resource.Resource
  signatures: ['resources.Babel [OPTIONS] RESOURCE']
toc: true
---
@y
---
title: resources.Babel
description: Compiles the given JavaScript resource with Babel.
categories: []
keywords: []
action:
  aliases: [babel]
  related:
    - functions/js/Build
    - functions/resources/Fingerprint
    - functions/resources/Minify
  returnType: resource.Resource
  signatures: ['resources.Babel [OPTIONS] RESOURCE']
toc: true
---
@z

@x
```go-html-template
{{ with resources.Get "js/main.js" }}
  {{ if hugo.IsDevelopment }}
    {{ with . | babel }}
      <script src="{{ .RelPermalink }}"></script>
    {{ end }}
  {{ else }}
    {{ $opts := dict "minified" true }}
    {{ with . | babel $opts | fingerprint }}
      <script src="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous"></script>
    {{ end }}
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "js/main.js" }}
  {{ if hugo.IsDevelopment }}
    {{ with . | babel }}
      <script src="{{ .RelPermalink }}"></script>
    {{ end }}
  {{ else }}
    {{ $opts := dict "minified" true }}
    {{ with . | babel $opts | fingerprint }}
      <script src="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous"></script>
    {{ end }}
  {{ end }}
{{ end }}
```
@z

@x
## Setup
@y
## Setup
@z

@x
Step 1
: Install [Node.js](https://nodejs.org/en/download)
@y
Step 1
: Install [Node.js](https://nodejs.org/en/download)
@z

@x
Step 2
: Install the required Node.js packages in the root of your project.
@y
Step 2
: Install the required Node.js packages in the root of your project.
@z

@x
```sh
npm install --save-dev @babel/core @babel/cli
```
@y
```sh
npm install --save-dev @babel/core @babel/cli
```
@z

@x
Step 3
: Add the babel executable to Hugo's `security.exec.allow` list in your site configuration:
@y
Step 3
: Add the babel executable to Hugo's `security.exec.allow` list in your site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[security.exec]
  allow = ['^(dart-)?sass(-embedded)?$', '^go$', '^npx$', '^postcss$', '^babel$']
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[security.exec]
  allow = ['^(dart-)?sass(-embedded)?$', '^go$', '^npx$', '^postcss$', '^babel$']
{{< /code-toggle >}}
@z

@x
## Configuration
@y
## Configuration
@z

@x
We add the main project's `node_modules` to `NODE_PATH` when running Babel and similar tools. There are some known [issues](https://github.com/babel/babel/issues/5618) with Babel in this area, so if you have a `babel.config.js` living in a Hugo Module (and not in the project itself), we recommend using `require` to load the presets/plugins, e.g.:
@y
We add the main project's `node_modules` to `NODE_PATH` when running Babel and similar tools. There are some known [issues](https://github.com/babel/babel/issues/5618) with Babel in this area, so if you have a `babel.config.js` living in a Hugo Module (and not in the project itself), we recommend using `require` to load the presets/plugins, e.g.:
@z

@x
```js
module.exports = {
  presets: [
    [
      require("@babel/preset-env"),
      {
        useBuiltIns: "entry",
        corejs: 3,
      },
    ],
  ],
};
```
@y
```js
module.exports = {
  presets: [
    [
      require("@babel/preset-env"),
      {
        useBuiltIns: "entry",
        corejs: 3,
      },
    ],
  ],
};
```
@z

@x
## Options
@y
## Options
@z

@x
config
: (`string`) Path to the Babel configuration file. Hugo will, by default, look for a `babel.config.js` in your project. More information on these configuration files can be found here: [babel configuration](https://babeljs.io/docs/en/configuration).
@y
config
: (`string`) Path to the Babel configuration file. Hugo will, by default, look for a `babel.config.js` in your project. More information on these configuration files can be found here: [babel configuration](https://babeljs.io/docs/en/configuration).
@z

@x
minified
: (`bool`) Save as many bytes as possible when printing
@y
minified
: (`bool`) Save as many bytes as possible when printing
@z

@x
noComments
: (`bool`) Write comments to generated output (true by default)
@y
noComments
: (`bool`) Write comments to generated output (true by default)
@z

@x
compact
: (`bool`) Do not include superfluous whitespace characters and line terminators. Defaults to `auto` if not set.
@y
compact
: (`bool`) Do not include superfluous whitespace characters and line terminators. Defaults to `auto` if not set.
@z

@x
verbose
: (`bool`) Log everything
@y
verbose
: (`bool`) Log everything
@z

@x
sourceMap
: (`string`) Output `inline` or `external` sourcemap from the babel compile. External sourcemaps will be written to the target with the output file name + ".map". Input sourcemaps can be read from js.Build and node modules and combined into the output sourcemaps.
@y
sourceMap
: (`string`) Output `inline` or `external` sourcemap from the babel compile. External sourcemaps will be written to the target with the output file name + ".map". Input sourcemaps can be read from js.Build and node modules and combined into the output sourcemaps.
@z
