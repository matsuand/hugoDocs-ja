%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: resources.FromString
description: Returns a resource created from a string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/resources/ExecuteAsTemplate
  returnType: resource.Resource
  signatures: [resources.FromString TARGETPATH STRING]
---
@y
---
title: resources.FromString
description: Returns a resource created from a string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/resources/ExecuteAsTemplate
  returnType: resource.Resource
  signatures: [resources.FromString TARGETPATH STRING]
---
@z

@x
The `resources.FromString` function returns a resource created from a string, caching the result using the target path as its cache key.
@y
The `resources.FromString` function returns a resource created from a string, caching the result using the target path as its cache key.
@z

@x
Hugo publishes the resource to the target path when you call its [`Publish`], [`Permalink`], or [`RelPermalink`] methods.
@y
Hugo publishes the resource to the target path when you call its [`Publish`], [`Permalink`], or [`RelPermalink`] methods.
@z

@x
[`publish`]: /methods/resource/publish/
[`permalink`]: /methods/resource/permalink/
[`relpermalink`]: /methods/resource/relpermalink/
@y
[`publish`]: /methods/resource/publish/
[`permalink`]: /methods/resource/permalink/
[`relpermalink`]: /methods/resource/relpermalink/
@z

@x
Let's say you need to publish a file named "site.json" in the root of your public directory, containing the build date, the Hugo version used to build the site, and the date that the content was last modified. For example:
@y
Let's say you need to publish a file named "site.json" in the root of your public directory, containing the build date, the Hugo version used to build the site, and the date that the content was last modified. For example:
@z

@x
```json
{
  "build_date": "2024-02-19T12:27:05-08:00",
  "hugo_version": "0.125.4",
  "last_modified": "2024-02-19T12:01:42-08:00"
}
```
@y
```json
{
  "build_date": "2024-02-19T12:27:05-08:00",
  "hugo_version": "0.125.4",
  "last_modified": "2024-02-19T12:01:42-08:00"
}
```
@z

@x
Place this in your baseof.html template:
@y
Place this in your baseof.html template:
@z

@x
```go-html-template
{{ if .IsHome }}
  {{ $rfc3339 := "2006-01-02T15:04:05Z07:00" }}
  {{ $m := dict
    "hugo_version" hugo.Version
    "build_date" (now.Format $rfc3339)
    "last_modified" (site.Lastmod.Format $rfc3339)
  }}
  {{ $json := jsonify $m }}
  {{ $r := resources.FromString "site.json" $json }}
  {{ $r.Publish }}
{{ end }}
```
@y
```go-html-template
{{ if .IsHome }}
  {{ $rfc3339 := "2006-01-02T15:04:05Z07:00" }}
  {{ $m := dict
    "hugo_version" hugo.Version
    "build_date" (now.Format $rfc3339)
    "last_modified" (site.Lastmod.Format $rfc3339)
  }}
  {{ $json := jsonify $m }}
  {{ $r := resources.FromString "site.json" $json }}
  {{ $r.Publish }}
{{ end }}
```
@z

@x
The example above:
@y
The example above:
@z

@x
1. Creates a map with the relevant key/value pairs using the [`dict`] function
2. Encodes the map as a JSON string using the [`jsonify`] function
3. Creates a resource from the JSON string using the `resources.FromString` function
4. Publishes the file to the root of the public directory using the resource's `.Publish` method
@y
1. Creates a map with the relevant key/value pairs using the [`dict`] function
2. Encodes the map as a JSON string using the [`jsonify`] function
3. Creates a resource from the JSON string using the `resources.FromString` function
4. Publishes the file to the root of the public directory using the resource's `.Publish` method
@z

@x
Combine `resources.FromString` with [`resources.ExecuteAsTemplate`] if your string contains template actions. Rewriting the example above:
@y
Combine `resources.FromString` with [`resources.ExecuteAsTemplate`] if your string contains template actions. Rewriting the example above:
@z

@x
```go-html-template
{{ if .IsHome }}
  {{ $string := `
    {{ $rfc3339 := "2006-01-02T15:04:05Z07:00" }}
    {{ $m := dict
      "hugo_version" hugo.Version
      "build_date" (now.Format $rfc3339)
      "last_modified" (site.Lastmod.Format $rfc3339)
    }}
    {{ $json := jsonify $m }}
    `
  }}
  {{ $r := resources.FromString "" $string }}
  {{ $r = $r | resources.ExecuteAsTemplate "site.json" . }}
  {{ $r.Publish }}
{{ end }}
```
@y
```go-html-template
{{ if .IsHome }}
  {{ $string := `
    {{ $rfc3339 := "2006-01-02T15:04:05Z07:00" }}
    {{ $m := dict
      "hugo_version" hugo.Version
      "build_date" (now.Format $rfc3339)
      "last_modified" (site.Lastmod.Format $rfc3339)
    }}
    {{ $json := jsonify $m }}
    `
  }}
  {{ $r := resources.FromString "" $string }}
  {{ $r = $r | resources.ExecuteAsTemplate "site.json" . }}
  {{ $r.Publish }}
{{ end }}
```
@z

@x
[`dict`]: /functions/collections/dictionary/
[`jsonify`]: /functions/encoding/jsonify/
[`resources.ExecuteAsTemplate`]: /functions/resources/executeastemplate/
@y
[`dict`]: /functions/collections/dictionary/
[`jsonify`]: /functions/encoding/jsonify/
[`resources.ExecuteAsTemplate`]: /functions/resources/executeastemplate/
@z
