%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: urls.Ref
description: Returns the absolute permalink to a page at the given path.
categories: []
keywords: []
action:
  aliases: [ref]
  related:
    - functions/urls/RelRef
    - methods/page/Ref
    - methods/page/RelRef
  returnType: string
  signatures:
    - urls.Ref PAGE PATH
    - urls.Ref PAGE OPTIONS
aliases: [/functions/ref]
---
@y
---
title: urls.Ref
description: Returns the absolute permalink to a page at the given path.
categories: []
keywords: []
action:
  aliases: [ref]
  related:
    - functions/urls/RelRef
    - methods/page/Ref
    - methods/page/RelRef
  returnType: string
  signatures:
    - urls.Ref PAGE PATH
    - urls.Ref PAGE OPTIONS
aliases: [/functions/ref]
---
@z

@x
The first argument is the context of the page from which to resolve relative paths, typically the current page.
@y
The first argument is the context of the page from which to resolve relative paths, typically the current page.
@z

@x
The second argument is a path to a page, with or without a file extension, with or without an anchor. A path without a leading `/` is first resolved relative to the given context, then to the remainder of the site. Alternatively, provide an [options map](#options) instead of a path.
@y
The second argument is a path to a page, with or without a file extension, with or without an anchor. A path without a leading `/` is first resolved relative to the given context, then to the remainder of the site. Alternatively, provide an [options map](#options) instead of a path.
@z

@x
```go-html-template
{{ ref . "about" }}
{{ ref . "about#anchor" }}
{{ ref . "about.md" }}
{{ ref . "about.md#anchor" }}
{{ ref . "#anchor" }}
{{ ref . "/blog/my-post" }}
{{ ref . "/blog/my-post.md" }}
```
@y
```go-html-template
{{ ref . "about" }}
{{ ref . "about#anchor" }}
{{ ref . "about.md" }}
{{ ref . "about.md#anchor" }}
{{ ref . "#anchor" }}
{{ ref . "/blog/my-post" }}
{{ ref . "/blog/my-post.md" }}
```
@z

@x
## Options
@y
## Options
@z

@x
Instead of specifying a path, you can also provide an options map:
@y
Instead of specifying a path, you can also provide an options map:
@z

@x
path
: (`string`) The path to the page, relative to the content directory. Required.
@y
path
: (`string`) The path to the page, relative to the content directory. Required.
@z

@x
lang
: (`string`) The language (site) to search for the page. Default is the current language. Optional.
@y
lang
: (`string`) The language (site) to search for the page. Default is the current language. Optional.
@z

@x
outputFormat
: (`string`) The output format to search for the page. Default is the current output format. Optional.
@y
outputFormat
: (`string`) The output format to search for the page. Default is the current output format. Optional.
@z

@x
To return the absolute permalink to another language version of a page:
@y
To return the absolute permalink to another language version of a page:
@z

@x
```go-html-template
{{ ref . (dict "path" "about.md" "lang" "fr") }}
```
@y
```go-html-template
{{ ref . (dict "path" "about.md" "lang" "fr") }}
```
@z

@x
To return the absolute permalink to another Output Format of a page:
@y
To return the absolute permalink to another Output Format of a page:
@z

@x
```go-html-template
{{ ref . (dict "path" "about.md" "outputFormat" "rss") }}
```
@y
```go-html-template
{{ ref . (dict "path" "about.md" "outputFormat" "rss") }}
```
@z

@x
By default, Hugo will throw an error and fail the build if it cannot resolve the path. You can change this to a warning in your site configuration, and specify a URL to return when the path cannot be resolved.
@y
By default, Hugo will throw an error and fail the build if it cannot resolve the path. You can change this to a warning in your site configuration, and specify a URL to return when the path cannot be resolved.
@z

@x
{{< code-toggle file=hugo >}}
refLinksErrorLevel = 'warning'
refLinksNotFoundURL = '/some/other/url'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
refLinksErrorLevel = 'warning'
refLinksNotFoundURL = '/some/other/url'
{{< /code-toggle >}}
@z
