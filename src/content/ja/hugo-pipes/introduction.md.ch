%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Hugo Pipes
linkTitle: Introduction
description: Hugo Pipes is Hugo's asset processing set of functions.
categories: [asset management]
keywords: []
menu:
  docs:
    parent: hugo-pipes
    weight: 20
weight: 20
toc: true
aliases: [/assets/]
---
@y
---
title: Hugo Pipes
linkTitle: Introduction
description: Hugo Pipes is Hugo's asset processing set of functions.
categories: [asset management]
keywords: []
menu:
  docs:
    parent: hugo-pipes
    weight: 20
weight: 20
toc: true
aliases: [/assets/]
---
@z

@x
## Find resources in assets
@y
## Find resources in assets
@z

@x
This is about global and remote resources.
@y
This is about global and remote resources.
@z

@x
global resource
: A file within the assets directory, or within any directory [mounted] to the assets directory.
@y
global resource
: A file within the assets directory, or within any directory [mounted] to the assets directory.
@z

@x
remote resource
: A file on a remote server, accessible via HTTP or HTTPS.
@y
remote resource
: A file on a remote server, accessible via HTTP or HTTPS.
@z

@x
For `.Page` scoped resources, see the [page resources] section.
@y
For `.Page` scoped resources, see the [page resources] section.
@z

@x
[mounted]: /hugo-modules/configuration/#module-configuration-mounts
[page resources]: /content-management/page-resources/
@y
[mounted]: /hugo-modules/configuration/#module-configuration-mounts
[page resources]: /content-management/page-resources/
@z

@x
## Get a resource
@y
## Get a resource
@z

@x
In order to process an asset with Hugo Pipes, it must be retrieved as a resource.
@y
In order to process an asset with Hugo Pipes, it must be retrieved as a resource.
@z

@x
For global resources, use:
@y
For global resources, use:
@z

@x
- [`resources.ByType`](/functions/resources/bytype/)
- [`resources.Get`](/functions/resources/get/)
- [`resources.GetMatch`](/functions/resources/getmatch/)
- [`resources.Match`](/functions/resources/match/)
@y
- [`resources.ByType`](/functions/resources/bytype/)
- [`resources.Get`](/functions/resources/get/)
- [`resources.GetMatch`](/functions/resources/getmatch/)
- [`resources.Match`](/functions/resources/match/)
@z

@x
For remote resources, use:
@y
For remote resources, use:
@z

@x
- [`resources.GetRemote`](/functions/resources/getremote/)
@y
- [`resources.GetRemote`](/functions/resources/getremote/)
@z

@x
See the [GoDoc Page](https://pkg.go.dev/github.com/gohugoio/hugo/tpl/resources) for the `resources` package for an up to date overview of all template functions in this namespace.
@y
See the [GoDoc Page](https://pkg.go.dev/github.com/gohugoio/hugo/tpl/resources) for the `resources` package for an up to date overview of all template functions in this namespace.
@z

@x
## Copy a resource
@y
## Copy a resource
@z

@x
See the [`resources.Copy`](/functions/resources/copy/) function.
@y
See the [`resources.Copy`](/functions/resources/copy/) function.
@z

@x
## Asset directory
@y
## Asset directory
@z

@x
Asset files must be stored in the asset directory. This is `/assets` by default, but can be configured via the configuration file's `assetDir` key.
@y
Asset files must be stored in the asset directory. This is `/assets` by default, but can be configured via the configuration file's `assetDir` key.
@z

@x
## Asset publishing
@y
## Asset publishing
@z

@x
Hugo publishes assets to the `publishDir` (typically `public`) when you invoke `.Permalink`, `.RelPermalink`, or `.Publish`. You can use `.Content` to inline the asset.
@y
Hugo publishes assets to the `publishDir` (typically `public`) when you invoke `.Permalink`, `.RelPermalink`, or `.Publish`. You can use `.Content` to inline the asset.
@z

@x
## Go Pipes
@y
## Go Pipes
@z

@x
For improved readability, the Hugo Pipes examples of this documentation will be written using [Go Pipes](/templates/introduction/#pipes):
@y
For improved readability, the Hugo Pipes examples of this documentation will be written using [Go Pipes](/templates/introduction/#pipes):
@z

@x
```go-html-template
{{ $style := resources.Get "sass/main.scss" | resources.ToCSS | resources.Minify | resources.Fingerprint }}
<link rel="stylesheet" href="{{ $style.Permalink }}">
```
@y
```go-html-template
{{ $style := resources.Get "sass/main.scss" | resources.ToCSS | resources.Minify | resources.Fingerprint }}
<link rel="stylesheet" href="{{ $style.Permalink }}">
```
@z

@x
## Caching
@y
## Caching
@z

@x
Hugo Pipes invocations are cached based on the entire *pipe chain*.
@y
Hugo Pipes invocations are cached based on the entire *pipe chain*.
@z

@x
An example of a pipe chain is:
@y
An example of a pipe chain is:
@z

@x
```go-html-template
{{ $mainJs := resources.Get "js/main.js" | js.Build "main.js" | minify | fingerprint }}
```
@y
```go-html-template
{{ $mainJs := resources.Get "js/main.js" | js.Build "main.js" | minify | fingerprint }}
```
@z

@x
The pipe chain is only invoked the first time it is encountered in a site build, and results are otherwise loaded from cache. As such, Hugo Pipes can be used in templates which are executed thousands or millions of times without negatively impacting the build performance.
@y
The pipe chain is only invoked the first time it is encountered in a site build, and results are otherwise loaded from cache. As such, Hugo Pipes can be used in templates which are executed thousands or millions of times without negatively impacting the build performance.
@z
