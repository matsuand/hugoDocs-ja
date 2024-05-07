%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: data.GetJSON
description: Returns a JSON object from a local or remote JSON file, or an error if the file does not exist.
categories: []
keywords: []
action:
  aliases: [getJSON]
  related:
    - functions/data/GetCSV
    - functions/resources/Get
    - functions/resources/GetRemote
    - methods/page/Resources
  returnType: any
  signatures: ['data.GetJSON INPUT... [OPTIONS]']
toc: true
---
@y
---
title: data.GetJSON
description: Returns a JSON object from a local or remote JSON file, or an error if the file does not exist.
categories: []
keywords: []
action:
  aliases: [getJSON]
  related:
    - functions/data/GetCSV
    - functions/resources/Get
    - functions/resources/GetRemote
    - methods/page/Resources
  returnType: any
  signatures: ['data.GetJSON INPUT... [OPTIONS]']
toc: true
---
@z

@x
{{% deprecated-in 0.123.0 %}}
Instead, use [`transform.Unmarshal`] with a [global], [page], or [remote] resource.
@y
{{% deprecated-in 0.123.0 %}}
Instead, use [`transform.Unmarshal`] with a [global], [page], or [remote] resource.
@z

@x
See the [remote data example].
@y
See the [remote data example].
@z

@x
[`transform.Unmarshal`]: /functions/transform/unmarshal/
[global]: /getting-started/glossary/#global-resource
[page]: /getting-started/glossary/#page-resource
[remote data example]: /functions/resources/getremote/#remote-data
[remote]: /getting-started/glossary/#remote-resource
{{% /deprecated-in %}}
@y
[`transform.Unmarshal`]: /functions/transform/unmarshal/
[global]: /getting-started/glossary/#global-resource
[page]: /getting-started/glossary/#page-resource
[remote data example]: /functions/resources/getremote/#remote-data
[remote]: /getting-started/glossary/#remote-resource
{{% /deprecated-in %}}
@z

@x
Given the following directory structure:
@y
Given the following directory structure:
@z

@x
```text
my-project/
└── other-files/
    └── books.json
```
@y
```text
my-project/
└── other-files/
    └── books.json
```
@z

@x
Access the data with either of the following:
@y
Access the data with either of the following:
@z

@x
```go-html-template
{{ $data := getJSON "other-files/books.json" }}
{{ $data := getJSON "other-files/" "books.json" }}
```
@y
```go-html-template
{{ $data := getJSON "other-files/books.json" }}
{{ $data := getJSON "other-files/" "books.json" }}
```
@z

@x
{{% note %}}
When working with local data, the file path is relative to the working directory.
{{% /note %}}
@y
{{% note %}}
When working with local data, the file path is relative to the working directory.
{{% /note %}}
@z

@x
Access remote data with either of the following:
@y
Access remote data with either of the following:
@z

@x
```go-html-template
{{ $data := getJSON "https://example.org/books.json" }}
{{ $data := getJSON "https://example.org/" "books.json" }}
```
@y
```go-html-template
{{ $data := getJSON "https://example.org/books.json" }}
{{ $data := getJSON "https://example.org/" "books.json" }}
```
@z

@x
The resulting data structure is a JSON object:
@y
The resulting data structure is a JSON object:
@z

@x
```json
[
  {
    "author": "Victor Hugo",
    "rating": 5,
    "title": "Les Misérables"
  },
  {
    "author": "Victor Hugo",
    "rating": 4,
    "title": "The Hunchback of Notre Dame"
  }
]
```
@y
```json
[
  {
    "author": "Victor Hugo",
    "rating": 5,
    "title": "Les Misérables"
  },
  {
    "author": "Victor Hugo",
    "rating": 4,
    "title": "The Hunchback of Notre Dame"
  }
]
```
@z

@x
## Options
@y
## Options
@z

@x
Add headers to the request by providing an options map:
@y
Add headers to the request by providing an options map:
@z

@x
```go-html-template
{{ $opts := dict "Authorization" "Bearer abcd" }}
{{ $data := getJSON "https://example.org/books.json" $opts }}
```
@y
```go-html-template
{{ $opts := dict "Authorization" "Bearer abcd" }}
{{ $data := getJSON "https://example.org/books.json" $opts }}
```
@z

@x
Add multiple headers using a slice:
@y
Add multiple headers using a slice:
@z

@x
```go-html-template
{{ $opts := dict "X-List" (slice "a" "b" "c") }}
{{ $data := getJSON "https://example.org/books.json" $opts }}
```
@y
```go-html-template
{{ $opts := dict "X-List" (slice "a" "b" "c") }}
{{ $data := getJSON "https://example.org/books.json" $opts }}
```
@z

@x
## Global resource alternative
@y
## Global resource alternative
@z

@x
Consider using the [`resources.Get`] function with [`transform.Unmarshal`] when accessing a global resource.
@y
Consider using the [`resources.Get`] function with [`transform.Unmarshal`] when accessing a global resource.
@z

@x
```text
my-project/
└── assets/
    └── data/
        └── books.json
```
@y
```text
my-project/
└── assets/
    └── data/
        └── books.json
```
@z

@x
```go-html-template
{{ $data := dict }}
{{ $p := "data/books.json" }}
{{ with resources.Get $p }}
  {{ $data = . | transform.Unmarshal }}
{{ else }}
  {{ errorf "Unable to get resource %q" $p }}
{{ end }}
```
@y
```go-html-template
{{ $data := dict }}
{{ $p := "data/books.json" }}
{{ with resources.Get $p }}
  {{ $data = . | transform.Unmarshal }}
{{ else }}
  {{ errorf "Unable to get resource %q" $p }}
{{ end }}
```
@z

@x
## Page resource alternative
@y
## Page resource alternative
@z

@x
Consider using the [`Resources.Get`] method with [`transform.Unmarshal`] when accessing a page resource.
@y
Consider using the [`Resources.Get`] method with [`transform.Unmarshal`] when accessing a page resource.
@z

@x
```text
my-project/
└── content/
    └── posts/
        └── reading-list/
            ├── books.json
            └── index.md
```
@y
```text
my-project/
└── content/
    └── posts/
        └── reading-list/
            ├── books.json
            └── index.md
```
@z

@x
```go-html-template
{{ $data := dict }}
{{ $p := "books.json" }}
{{ with .Resources.Get $p }}
  {{ $data = . | transform.Unmarshal }}
{{ else }}
  {{ errorf "Unable to get resource %q" $p }}
{{ end }}
```
@y
```go-html-template
{{ $data := dict }}
{{ $p := "books.json" }}
{{ with .Resources.Get $p }}
  {{ $data = . | transform.Unmarshal }}
{{ else }}
  {{ errorf "Unable to get resource %q" $p }}
{{ end }}
```
@z

@x
## Remote resource alternative
@y
## Remote resource alternative
@z

@x
Consider using the [`resources.GetRemote`] function with [`transform.Unmarshal`] when accessing a remote resource to improve error handling and cache control.
@y
Consider using the [`resources.GetRemote`] function with [`transform.Unmarshal`] when accessing a remote resource to improve error handling and cache control.
@z

@x
```go-html-template
{{ $data := dict }}
{{ $u := "https://example.org/books.json" }}
{{ with resources.GetRemote $u }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    {{ $data = . | transform.Unmarshal }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $u }}
{{ end }}
```
@y
```go-html-template
{{ $data := dict }}
{{ $u := "https://example.org/books.json" }}
{{ with resources.GetRemote $u }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    {{ $data = . | transform.Unmarshal }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $u }}
{{ end }}
```
@z

@x
[`Resources.Get`]: /methods/page/resources/
[`resources.GetRemote`]: /functions/resources/getremote/
[`resources.Get`]: /functions/resources/get/
[`transform.Unmarshal`]: /functions/transform/unmarshal/
@y
[`Resources.Get`]: /methods/page/resources/
[`resources.GetRemote`]: /functions/resources/getremote/
[`resources.Get`]: /functions/resources/get/
[`transform.Unmarshal`]: /functions/transform/unmarshal/
@z
