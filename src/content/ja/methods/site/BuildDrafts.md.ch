%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: BuildDrafts
description: Reports whether the current build includes draft pages.
categories: []
keywords: []
action:
  related: []
  returnType: bool
  signatures: [SITE.BuildDrafts]
---
@y
---
title: BuildDrafts
description: Reports whether the current build includes draft pages.
categories: []
keywords: []
action:
  related: []
  returnType: bool
  signatures: [SITE.BuildDrafts]
---
@z

@x
By default, draft pages are not published when building a site. You can change this behavior with a command line flag:
@y
By default, draft pages are not published when building a site. You can change this behavior with a command line flag:
@z

@x
```sh
hugo --buildDrafts
```
@y
```sh
hugo --buildDrafts
```
@z

@x
Or by setting `buildDrafts` to `true` in your site configuration:
@y
Or by setting `buildDrafts` to `true` in your site configuration:
@z

@x
{{< code-toggle file=hugo >}}
buildDrafts = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
buildDrafts = true
{{< /code-toggle >}}
@z

@x
Use the `BuildDrafts` method on a `Site` object to determine the current configuration:
@y
Use the `BuildDrafts` method on a `Site` object to determine the current configuration:
@z

@x
```go-html-template
{{ .Site.BuildDrafts }} → true
```
@y
```go-html-template
{{ .Site.BuildDrafts }} → true
```
@z
