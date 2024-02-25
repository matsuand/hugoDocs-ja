%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: urls.Parse
description: Parses a URL into a URL structure.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: url.URL
  signatures: [urls.Parse URL]
aliases: [/functions/urls.parse]
---
@y
---
title: urls.Parse
description: Parses a URL into a URL structure.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: url.URL
  signatures: [urls.Parse URL]
aliases: [/functions/urls.parse]
---
@z

@x
The `urls.Parse` function parses a URL into a [URL structure](https://godoc.org/net/url#URL). The URL may be relative (a path, without a host) or absolute (starting with a [scheme]). Hugo throws an error when parsing an invalid URL.
@y
The `urls.Parse` function parses a URL into a [URL structure](https://godoc.org/net/url#URL). The URL may be relative (a path, without a host) or absolute (starting with a [scheme]). Hugo throws an error when parsing an invalid URL.
@z

@x
[scheme]: https://www.iana.org/assignments/uri-schemes/uri-schemes.xhtml#uri-schemes-1
@y
[scheme]: https://www.iana.org/assignments/uri-schemes/uri-schemes.xhtml#uri-schemes-1
@z

@x
```go-html-template
{{ $url := "https://example.org:123/foo?a=6&b=7#bar" }}
{{ $u := urls.Parse $url }}
@y
```go-html-template
{{ $url := "https://example.org:123/foo?a=6&b=7#bar" }}
{{ $u := urls.Parse $url }}
@z

@x
{{ $u.IsAbs }} → true
{{ $u.Scheme }} → https
{{ $u.Host }} → example.org:123
{{ $u.Hostname }} → example.org
{{ $u.RequestURI }} → /foo?a=6&b=7
{{ $u.Path }} → /foo
{{ $u.Query }} → map[a:[6] b:[7]]
{{ $u.Query.a }} → [6]
{{ $u.Query.Get "a" }} → 6
{{ $u.Query.Has "b" }} → true
{{ $u.Fragment }} → bar
```
@y
{{ $u.IsAbs }} → true
{{ $u.Scheme }} → https
{{ $u.Host }} → example.org:123
{{ $u.Hostname }} → example.org
{{ $u.RequestURI }} → /foo?a=6&b=7
{{ $u.Path }} → /foo
{{ $u.Query }} → map[a:[6] b:[7]]
{{ $u.Query.a }} → [6]
{{ $u.Query.Get "a" }} → 6
{{ $u.Query.Has "b" }} → true
{{ $u.Fragment }} → bar
```
@z
