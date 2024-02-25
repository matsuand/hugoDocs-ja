%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: RelRef
description: Returns the relative URL of the page with the given path, language, and output format.
categories: []
keywords: []
action:
  related:
    - methods/page/Ref
    - functions/urls/Ref
    - functions/urls/RelRef
  returnType: string
  signatures: [PAGE.RelRef OPTIONS]
---
@y
---
title: RelRef
description: Returns the relative URL of the page with the given path, language, and output format.
categories: []
keywords: []
action:
  related:
    - methods/page/Ref
    - functions/urls/Ref
    - functions/urls/RelRef
  returnType: string
  signatures: [PAGE.RelRef OPTIONS]
---
@z

@x
The map of option contains:
@y
The map of option contains:
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
The examples below show the rendered output when visiting a page on the English language version of the site:
@y
The examples below show the rendered output when visiting a page on the English language version of the site:
@z

@x
```go-html-template
{{ $opts := dict "path" "/books/book-1" }}
{{ .RelRef $opts }} → /en/books/book-1/
@y
```go-html-template
{{ $opts := dict "path" "/books/book-1" }}
{{ .RelRef $opts }} → /en/books/book-1/
@z

@x
{{ $opts := dict "path" "/books/book-1" "lang" "de" }}
{{ .RelRef $opts }} → /de/books/book-1/
@y
{{ $opts := dict "path" "/books/book-1" "lang" "de" }}
{{ .RelRef $opts }} → /de/books/book-1/
@z

@x
{{ $opts := dict "path" "/books/book-1" "lang" "de" "outputFormat" "json" }}
{{ .RelRef $opts }} → /de/books/book-1/index.json
```
@y
{{ $opts := dict "path" "/books/book-1" "lang" "de" "outputFormat" "json" }}
{{ .RelRef $opts }} → /de/books/book-1/index.json
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
