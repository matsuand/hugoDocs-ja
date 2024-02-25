%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.Complement
description: Returns the elements of the last collection that are not in any of the others.
categories: []
keywords: []
action:
  aliases: [complement]
  related:
    - functions/collections/Intersect
    - functions/collections/SymDiff
    - functions/collections/Union
  returnType: any
  signatures: ['collections.Complement COLLECTION [COLLECTION...]']
aliases: [/functions/complement]
---
@y
---
title: collections.Complement
description: Returns the elements of the last collection that are not in any of the others.
categories: []
keywords: []
action:
  aliases: [complement]
  related:
    - functions/collections/Intersect
    - functions/collections/SymDiff
    - functions/collections/Union
  returnType: any
  signatures: ['collections.Complement COLLECTION [COLLECTION...]']
aliases: [/functions/complement]
---
@z

@x
To find the elements within `$c3` that do not exist in `$c1` or `$c2`:
@y
To find the elements within `$c3` that do not exist in `$c1` or `$c2`:
@z

@x
```go-html-template
{{ $c1 := slice 3 }}
{{ $c2 := slice 4 5 }}
{{ $c3 := slice 1 2 3 4 5 }}
@y
```go-html-template
{{ $c1 := slice 3 }}
{{ $c2 := slice 4 5 }}
{{ $c3 := slice 1 2 3 4 5 }}
@z

@x
{{ complement $c1 $c2 $c3 }} → [1 2]
```
@y
{{ complement $c1 $c2 $c3 }} → [1 2]
```
@z

@x
{{% note %}}
Make your code simpler to understand by using a [chained pipeline]:
@y
{{% note %}}
Make your code simpler to understand by using a [chained pipeline]:
@z

@x
[chained pipeline]: https://pkg.go.dev/text/template#hdr-Pipelines
{{% /note %}}
@y
[chained pipeline]: https://pkg.go.dev/text/template#hdr-Pipelines
{{% /note %}}
@z

@x
```go-html-template
{{ $c3 | complement $c1 $c2 }} → [1 2]
```
@y
```go-html-template
{{ $c3 | complement $c1 $c2 }} → [1 2]
```
@z

@x
You can also use the `complement` function with page collections. Let's say your site has five content types:
@y
You can also use the `complement` function with page collections. Let's say your site has five content types:
@z

@x
```text
content/
├── blog/
├── books/
├── faqs/
├── films/
└── songs/
```
@y
```text
content/
├── blog/
├── books/
├── faqs/
├── films/
└── songs/
```
@z

@x
To list everything except blog articles (`blog`) and frequently asked questions (`faqs`):
@y
To list everything except blog articles (`blog`) and frequently asked questions (`faqs`):
@z

@x
```go-html-template
{{ $blog := where site.RegularPages "Type" "blog" }}
{{ $faqs := where site.RegularPages "Type" "faqs" }}
{{ range site.RegularPages | complement $blog $faqs }}
  <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
{{ end }}
```
@y
```go-html-template
{{ $blog := where site.RegularPages "Type" "blog" }}
{{ $faqs := where site.RegularPages "Type" "faqs" }}
{{ range site.RegularPages | complement $blog $faqs }}
  <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
{{ end }}
```
@z

@x
{{% note %}}
Although the example above demonstrates the `complement` function, you could use the [`where`] function as well:
@y
{{% note %}}
Although the example above demonstrates the `complement` function, you could use the [`where`] function as well:
@z

@x
[`where`]: /functions/collections/where/
{{% /note %}}
@y
[`where`]: /functions/collections/where/
{{% /note %}}
@z

@x
```go-html-template
{{ range where site.RegularPages "Type" "not in" (slice "blog" "faqs") }}
  <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
{{ end }}
```
@y
```go-html-template
{{ range where site.RegularPages "Type" "not in" (slice "blog" "faqs") }}
  <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
{{ end }}
```
@z

@x
In this example we use the `complement` function to remove [stop words] from a sentence:
@y
In this example we use the `complement` function to remove [stop words] from a sentence:
@z

@x
```go-html-template
{{ $text := "The quick brown fox jumps over the lazy dog" }}
{{ $stopWords := slice "a" "an" "in" "over" "the" "under" }}
{{ $filtered := split $text " " | complement $stopWords }}
@y
```go-html-template
{{ $text := "The quick brown fox jumps over the lazy dog" }}
{{ $stopWords := slice "a" "an" "in" "over" "the" "under" }}
{{ $filtered := split $text " " | complement $stopWords }}
@z

@x
{{ delimit $filtered " " }} → The quick brown fox jumps lazy dog
```
@y
{{ delimit $filtered " " }} → The quick brown fox jumps lazy dog
```
@z

@x
[stop words]: https://en.wikipedia.org/wiki/Stop_word
@y
[stop words]: https://en.wikipedia.org/wiki/Stop_word
@z
