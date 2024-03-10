%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% import 対応
% snip 対応

@x
title: resources.ToCSS
description: Transpiles Sass to CSS.
categories: []
keywords: []
@y
title: resources.ToCSS
description: Transpiles Sass to CSS.
categories: []
keywords: []
@z

% snip code...

@x
Transpile Sass to CSS using the LibSass transpiler included in Hugo's extended edition, or [install Dart Sass](#dart-sass) to use the latest features of the Sass language.
@y
Transpile Sass to CSS using the LibSass transpiler included in Hugo's extended edition, or [install Dart Sass](#dart-sass) to use the latest features of the Sass language.
@z

@x
Sass has two forms of syntax: [SCSS] and [indented]. Hugo supports both.
@y
Sass has two forms of syntax: [SCSS] and [indented]. Hugo supports both.
@z

% snip links...

@x
## Options
@y
## Options
@z

@x
transpiler
: (`string`) The transpiler to use, either `libsass` (default) or `dartsass`. Hugo's extended edition includes the LibSass transpiler. To use the Dart Sass transpiler, see the [installation instructions](#dart-sass) below.
@y
transpiler
: (`string`) The transpiler to use, either `libsass` (default) or `dartsass`. Hugo's extended edition includes the LibSass transpiler. To use the Dart Sass transpiler, see the [installation instructions](#dart-sass) below.
@z

@x
targetPath
: (`string`) If not set, the transformed resource's target path will be the original path of the asset file with its extension replaced by `.css`.
@y
targetPath
: (`string`) If not set, the transformed resource's target path will be the original path of the asset file with its extension replaced by `.css`.
@z

@x
vars
: (`map`) A map of key/value pairs that will be available in the `hugo:vars` namespace. Useful for [initializing Sass variables from Hugo templates](https://discourse.gohugo.io/t/42053/).
@y
vars
: (`map`) A map of key/value pairs that will be available in the `hugo:vars` namespace. Useful for [initializing Sass variables from Hugo templates](https://discourse.gohugo.io/t/42053/).
@z

@x import 対応
```scss
// LibSass
__IMPORT__ "hugo:vars";
@y
```scss
// LibSass
__IMPORT__ "hugo:vars";
@z

@x
// Dart Sass
@use "hugo:vars" as v;
```
@y
// Dart Sass
@use "hugo:vars" as v;
```
@z

@x
outputStyle
: (`string`) Output styles available to LibSass include `nested` (default), `expanded`, `compact`, and `compressed`. Output styles available to Dart Sass include `expanded` (default) and `compressed`.
@y
outputStyle
: (`string`) Output styles available to LibSass include `nested` (default), `expanded`, `compact`, and `compressed`. Output styles available to Dart Sass include `expanded` (default) and `compressed`.
@z

@x
precision
: (`int`) Precision of floating point math. Not applicable to Dart Sass.
@y
precision
: (`int`) Precision of floating point math. Not applicable to Dart Sass.
@z

@x
enableSourceMap
: (`bool`) If `true`, generates a source map.
@y
enableSourceMap
: (`bool`) If `true`, generates a source map.
@z

@x
sourceMapIncludeSources
: (`bool`) If `true`, embeds sources in the generated source map. Not applicable to LibSass.
@y
sourceMapIncludeSources
: (`bool`) If `true`, embeds sources in the generated source map. Not applicable to LibSass.
@z

@x
includePaths
: (`slice`) A slice of paths, relative to the project root, that the transpiler will use when resolving `@use` and `@import` statements.
@y
includePaths
: (`slice`) A slice of paths, relative to the project root, that the transpiler will use when resolving `@use` and `@import` statements.
@z

% snip code...

@x
## Dart Sass
@y
## Dart Sass
@z

@x
The extended version of Hugo includes [LibSass] to transpile Sass to CSS. In 2020, the Sass team deprecated LibSass in favor of [Dart Sass].
@y
The extended version of Hugo includes [LibSass] to transpile Sass to CSS. In 2020, the Sass team deprecated LibSass in favor of [Dart Sass].
@z

@x
Use the latest features of the Sass language by installing Dart Sass in your development and production environments.
@y
Use the latest features of the Sass language by installing Dart Sass in your development and production environments.
@z

@x
### Installation overview
@y
### Installation overview
@z

@x
Dart Sass is compatible with Hugo v0.114.0 and later.
@y
Dart Sass is compatible with Hugo v0.114.0 and later.
@z

@x
If you have been using Embedded Dart Sass[^1] with Hugo v0.113.0 and earlier, uninstall Embedded Dart Sass, then install Dart Sass. If you have installed both, Hugo will use Dart Sass.
@y
If you have been using Embedded Dart Sass[^1] with Hugo v0.113.0 and earlier, uninstall Embedded Dart Sass, then install Dart Sass. If you have installed both, Hugo will use Dart Sass.
@z

@x
If you install Hugo as a [Snap package] there is no need to install Dart Sass. The Hugo Snap package includes Dart Sass.
@y
If you install Hugo as a [Snap package] there is no need to install Dart Sass. The Hugo Snap package includes Dart Sass.
@z

@x
[^1]: In 2023, the Sass team deprecated Embedded Dart Sass in favor of Dart Sass.
@y
[^1]: In 2023, the Sass team deprecated Embedded Dart Sass in favor of Dart Sass.
@z

@x
### Installing in a development environment
@y
### Installing in a development environment
@z

@x
When you install Dart Sass somewhere in your PATH, Hugo will find it.
@y
When you install Dart Sass somewhere in your PATH, Hugo will find it.
@z

@x
OS|Package manager|Site|Installation
:--|:--|:--|:--
Linux|Homebrew|[brew.sh]|`brew install sass/sass/sass`
Linux|Snap|[snapcraft.io]|`sudo snap install dart-sass`
macOS|Homebrew|[brew.sh]|`brew install sass/sass/sass`
Windows|Chocolatey|[chocolatey.org]|`choco install sass`
Windows|Scoop|[scoop.sh]|`scoop install sass`
@y
OS|Package manager|Site|Installation
:--|:--|:--|:--
Linux|Homebrew|[brew.sh]|`brew install sass/sass/sass`
Linux|Snap|[snapcraft.io]|`sudo snap install dart-sass`
macOS|Homebrew|[brew.sh]|`brew install sass/sass/sass`
Windows|Chocolatey|[chocolatey.org]|`choco install sass`
Windows|Scoop|[scoop.sh]|`scoop install sass`
@z

@x
You may also install [prebuilt binaries] for Linux, macOS, and Windows.
@y
You may also install [prebuilt binaries] for Linux, macOS, and Windows.
@z

@x
Run `hugo env` to list the active transpilers.
@y
Run `hugo env` to list the active transpilers.
@z

@x
### Installing in a production environment
@y
### Installing in a production environment
@z

@x
For [CI/CD] deployments (e.g., GitHub Pages, GitLab Pages, Netlify, etc.) you must edit the workflow to install Dart Sass before Hugo builds the site[^2]. Some providers allow you to use one of the package managers above, or you can download and extract one of the prebuilt binaries.
@y
For [CI/CD] deployments (e.g., GitHub Pages, GitLab Pages, Netlify, etc.) you must edit the workflow to install Dart Sass before Hugo builds the site[^2]. Some providers allow you to use one of the package managers above, or you can download and extract one of the prebuilt binaries.
@z

@x
[^2]: You do not have to do this if (a) you have not modified the assets cache location, and (b) you have not set `useResourceCacheWhen` to `never` in your [site configuration], and (c) you add and commit your resources directory to your repository.
@y
[^2]: You do not have to do this if (a) you have not modified the assets cache location, and (b) you have not set `useResourceCacheWhen` to `never` in your [site configuration], and (c) you add and commit your resources directory to your repository.
@z

@x
#### GitHub Pages
@y
#### GitHub Pages
@z

@x
To install Dart Sass for your builds on GitHub Pages, add this step to the GitHub Pages workflow file:
@y
To install Dart Sass for your builds on GitHub Pages, add this step to the GitHub Pages workflow file:
@z

% snip code...

@x
If you are using GitHub Pages for the first time with your repository, GitHub provides a [starter workflow] for Hugo that includes Dart Sass. This is the simplest way to get started.
@y
If you are using GitHub Pages for the first time with your repository, GitHub provides a [starter workflow] for Hugo that includes Dart Sass. This is the simplest way to get started.
@z

@x
#### GitLab Pages
@y
#### GitLab Pages
@z

@x
To install Dart Sass for your builds on GitLab Pages, the `.gitlab-ci.yml` file should look something like this:
@y
To install Dart Sass for your builds on GitLab Pages, the `.gitlab-ci.yml` file should look something like this:
@z

% snip code...

@x
#### Netlify
@y
#### Netlify
@z

@x
To install Dart Sass for your builds on Netlify, the `netlify.toml` file should look something like this:
@y
To install Dart Sass for your builds on Netlify, the `netlify.toml` file should look something like this:
@z

% snip code...

@x
### Example
@y
### Example
@z

@x
To transpile with Dart Sass, set `transpiler` to `dartsass` in the options map passed to `resources.ToCSS`. For example:
@y
To transpile with Dart Sass, set `transpiler` to `dartsass` in the options map passed to `resources.ToCSS`. For example:
@z

% snip code...

@x
### Miscellaneous
@y
### Miscellaneous
@z

@x
If you build Hugo from source and run `mage test -v`, the test will fail if you install Dart Sass as a Snap package. This is due to the Snap package's strict confinement model.
@y
If you build Hugo from source and run `mage test -v`, the test will fail if you install Dart Sass as a Snap package. This is due to the Snap package's strict confinement model.
@z

% snip links...
