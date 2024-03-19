%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% __IMPORT__ 対応

@x
title: ToCSS
linkTitle: Transpile Sass to CSS
description: Transpile Sass to CSS.
categories: [asset management]
keywords: []
@y
title: ToCSS
linkTitle: Transpile Sass to CSS
description: Transpile Sass to CSS.
categories: [asset management]
keywords: []
@z

@x
## Usage
@y
## Usage
@z

@x
Transpile Sass to CSS using the LibSass transpiler included in Hugo's extended edition, or [install Dart Sass](#dart-sass) to use the latest features of the Sass language.
@y
Transpile Sass to CSS using the LibSass transpiler included in Hugo's extended edition, or [install Dart Sass](#dart-sass) to use the latest features of the Sass language.
@z

@x
```go-html-template
{{ $opts := dict "transpiler" "libsass" "targetPath" "css/style.css" }}
{{ with resources.Get "sass/main.scss" | toCSS $opts | minify | fingerprint }}
  <link rel="stylesheet" href="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous">
{{ end }}
```
@y
```go-html-template
{{ $opts := dict "transpiler" "libsass" "targetPath" "css/style.css" }}
{{ with resources.Get "sass/main.scss" | toCSS $opts | minify | fingerprint }}
  <link rel="stylesheet" href="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous">
{{ end }}
```
@z

@x
Sass has two forms of syntax: [SCSS] and [indented]. Hugo supports both.
@y
Sass has two forms of syntax: [SCSS] and [indented]. Hugo supports both.
@z

@x
[scss]: https://sass-lang.com/documentation/syntax#scss
[indented]: https://sass-lang.com/documentation/syntax#the-indented-syntax
@y
[scss]: https://sass-lang.com/documentation/syntax#scss
[indented]: https://sass-lang.com/documentation/syntax#the-indented-syntax
@z

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
vars {{< new-in 0.109.0 >}}
: (`map`) A map of key/value pairs that will be available in the `hugo:vars` namespace. Useful for [initializing Sass variables from Hugo templates](https://discourse.gohugo.io/t/42053/).
@y
vars {{< new-in 0.109.0 >}}
: (`map`) A map of key/value pairs that will be available in the `hugo:vars` namespace. Useful for [initializing Sass variables from Hugo templates](https://discourse.gohugo.io/t/42053/).
@z

@x
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
sourceMapIncludeSources {{< new-in 0.108.0 >}}
: (`bool`) If `true`, embeds sources in the generated source map. Not applicable to LibSass.
@y
sourceMapIncludeSources {{< new-in 0.108.0 >}}
: (`bool`) If `true`, embeds sources in the generated source map. Not applicable to LibSass.
@z

@x
includePaths
: (`slice`) A slice of paths, relative to the project root, that the transpiler will use when resolving `@use` and `@import` statements.
@y
includePaths
: (`slice`) A slice of paths, relative to the project root, that the transpiler will use when resolving `@use` and `@import` statements.
@z

@x
```go-html-template
{{ $opts := dict
  "transpiler" "dartsass"
  "targetPath" "css/style.css"
  "vars" site.Params.styles
  "enableSourceMap" (not hugo.IsProduction) 
  "includePaths" (slice "node_modules/bootstrap/scss")
}}
{{ with resources.Get "sass/main.scss" | toCSS $opts | minify | fingerprint }}
  <link rel="stylesheet" href="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous">
{{ end }}
```
@y
```go-html-template
{{ $opts := dict
  "transpiler" "dartsass"
  "targetPath" "css/style.css"
  "vars" site.Params.styles
  "enableSourceMap" (not hugo.IsProduction) 
  "includePaths" (slice "node_modules/bootstrap/scss")
}}
{{ with resources.Get "sass/main.scss" | toCSS $opts | minify | fingerprint }}
  <link rel="stylesheet" href="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous">
{{ end }}
```
@z

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

@x
```yaml
- name: Install Dart Sass
  run: sudo snap install dart-sass
```
@y
```yaml
- name: Install Dart Sass
  run: sudo snap install dart-sass
```
@z

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

@x
```yaml
variables:
  HUGO_VERSION: 0.124.0
  DART_SASS_VERSION: 1.72.0
  GIT_DEPTH: 0
  GIT_STRATEGY: clone
  GIT_SUBMODULE_STRATEGY: recursive
  TZ: America/Los_Angeles
image:
  name: golang:1.20-buster
pages:
  script:
    # Install Dart Sass
    - curl -LJO https://github.com/sass/dart-sass/releases/download/${DART_SASS_VERSION}/dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz
    - tar -xf dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz
    - cp -r dart-sass/* /usr/local/bin
    - rm -rf dart-sass*
    # Install Hugo
    - curl -LJO https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb
    - apt install -y ./hugo_extended_${HUGO_VERSION}_linux-amd64.deb
    - rm hugo_extended_${HUGO_VERSION}_linux-amd64.deb
    # Build
    - hugo --gc --minify
  artifacts:
    paths:
      - public
  rules:
    - if: $CI_COMMIT_BRANCH == $CI_DEFAULT_BRANCH
```
@y
```yaml
variables:
  HUGO_VERSION: 0.124.0
  DART_SASS_VERSION: 1.72.0
  GIT_DEPTH: 0
  GIT_STRATEGY: clone
  GIT_SUBMODULE_STRATEGY: recursive
  TZ: America/Los_Angeles
image:
  name: golang:1.20-buster
pages:
  script:
    # Install Dart Sass
    - curl -LJO https://github.com/sass/dart-sass/releases/download/${DART_SASS_VERSION}/dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz
    - tar -xf dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz
    - cp -r dart-sass/* /usr/local/bin
    - rm -rf dart-sass*
    # Install Hugo
    - curl -LJO https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb
    - apt install -y ./hugo_extended_${HUGO_VERSION}_linux-amd64.deb
    - rm hugo_extended_${HUGO_VERSION}_linux-amd64.deb
    # Build
    - hugo --gc --minify
  artifacts:
    paths:
      - public
  rules:
    - if: $CI_COMMIT_BRANCH == $CI_DEFAULT_BRANCH
```
@z

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

@x
```toml
[build.environment]
HUGO_VERSION = "0.122.2"
DART_SASS_VERSION = "1.72.0"
TZ = "America/Los_Angeles"
@y
```toml
[build.environment]
HUGO_VERSION = "0.122.2"
DART_SASS_VERSION = "1.72.0"
TZ = "America/Los_Angeles"
@z

@x
[build]
publish = "public"
command = """\
  curl -LJO https://github.com/sass/dart-sass/releases/download/${DART_SASS_VERSION}/dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz && \
  tar -xf dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz && \
  rm dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz && \
  export PATH=/opt/build/repo/dart-sass:$PATH && \
  hugo --gc --minify \
  """
```
@y
[build]
publish = "public"
command = """\
  curl -LJO https://github.com/sass/dart-sass/releases/download/${DART_SASS_VERSION}/dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz && \
  tar -xf dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz && \
  rm dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz && \
  export PATH=/opt/build/repo/dart-sass:$PATH && \
  hugo --gc --minify \
  """
```
@z

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

@x
```go-html-template
{{ $opts := dict "transpiler" "dartsass" "targetPath" "css/style.css" }}
{{ with resources.Get "sass/main.scss" | toCSS $opts | minify | fingerprint }}
  <link rel="stylesheet" href="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous">
{{ end }}
```
@y
```go-html-template
{{ $opts := dict "transpiler" "dartsass" "targetPath" "css/style.css" }}
{{ with resources.Get "sass/main.scss" | toCSS $opts | minify | fingerprint }}
  <link rel="stylesheet" href="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous">
{{ end }}
```
@z

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

@x
[brew.sh]: https://brew.sh/
[chocolatey.org]: https://community.chocolatey.org/packages/sass
[ci/cd]: https://en.wikipedia.org/wiki/CI/CD
[dart sass]: https://sass-lang.com/dart-sass
[libsass]: https://sass-lang.com/libsass
[prebuilt binaries]: https://github.com/sass/dart-sass/releases/latest
[scoop.sh]: https://scoop.sh/#/apps?q=sass
[site configuration]: /getting-started/configuration/#configure-build
[snap package]: /installation/linux/#snap
[snapcraft.io]: https://snapcraft.io/dart-sass
[starter workflow]: https://github.com/actions/starter-workflows/blob/main/pages/hugo.yml
@y
[brew.sh]: https://brew.sh/
[chocolatey.org]: https://community.chocolatey.org/packages/sass
[ci/cd]: https://en.wikipedia.org/wiki/CI/CD
[dart sass]: https://sass-lang.com/dart-sass
[libsass]: https://sass-lang.com/libsass
[prebuilt binaries]: https://github.com/sass/dart-sass/releases/latest
[scoop.sh]: https://scoop.sh/#/apps?q=sass
[site configuration]: /getting-started/configuration/#configure-build
[snap package]: /installation/linux/#snap
[snapcraft.io]: https://snapcraft.io/dart-sass
[starter workflow]: https://github.com/actions/starter-workflows/blob/main/pages/hugo.yml
@z
