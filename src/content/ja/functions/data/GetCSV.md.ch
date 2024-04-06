%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: data.GetCSV
description: Returns an array of arrays from a local or remote CSV file, or an error if the file does not exist.
categories: []
keywords: []
action:
  aliases: [getCSV]
  related:
    - functions/data/GetJSON
    - functions/resources/Get
    - functions/resources/GetRemote
    - methods/page/Resources
  returnType: '[][]string'
  signatures: ['data.GetCSV SEPARATOR INPUT... [OPTIONS]']
toc: true
---
@y
---
title: data.GetCSV
description: Returns an array of arrays from a local or remote CSV file, or an error if the file does not exist.
categories: []
keywords: []
action:
  aliases: [getCSV]
  related:
    - functions/data/GetJSON
    - functions/resources/Get
    - functions/resources/GetRemote
    - methods/page/Resources
  returnType: '[][]string'
  signatures: ['data.GetCSV SEPARATOR INPUT... [OPTIONS]']
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
    └── pets.csv
```
@y
```text
my-project/
└── other-files/
    └── pets.csv
```
@z

@x
Access the data with either of the following:
@y
Access the data with either of the following:
@z

@x
```go-html-template
{{ $data := getCSV "," "other-files/pets.csv" }}
{{ $data := getCSV "," "other-files/" "pets.csv" }}
```
@y
```go-html-template
{{ $data := getCSV "," "other-files/pets.csv" }}
{{ $data := getCSV "," "other-files/" "pets.csv" }}
```
@z

@x
{{% note %}}
When working with local data, the file path is relative to the working directory.
@y
{{% note %}}
When working with local data, the file path is relative to the working directory.
@z

@x
You must not place CSV files in the project's data directory.
{{% /note %}}
@y
You must not place CSV files in the project's data directory.
{{% /note %}}
@z

@x
Access remote data with either of the following:
@y
Access remote data with either of the following:
@z

@x
```go-html-template
{{ $data := getCSV "," "https://example.org/pets.csv" }}
{{ $data := getCSV "," "https://example.org/" "pets.csv" }}
```
@y
```go-html-template
{{ $data := getCSV "," "https://example.org/pets.csv" }}
{{ $data := getCSV "," "https://example.org/" "pets.csv" }}
```
@z

@x
The resulting data structure is an array of arrays:
@y
The resulting data structure is an array of arrays:
@z

@x
```json
[
  ["name","type","breed","age"],
  ["Spot","dog","Collie","3"],
  ["Felix","cat","Malicious","7"]
]
```
@y
```json
[
  ["name","type","breed","age"],
  ["Spot","dog","Collie","3"],
  ["Felix","cat","Malicious","7"]
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
{{ $data := getCSV "," "https://example.org/pets.csv" $opts }}
```
@y
```go-html-template
{{ $opts := dict "Authorization" "Bearer abcd" }}
{{ $data := getCSV "," "https://example.org/pets.csv" $opts }}
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
{{ $data := getCSV "," "https://example.org/pets.csv" $opts }}
```
@y
```go-html-template
{{ $opts := dict "X-List" (slice "a" "b" "c") }}
{{ $data := getCSV "," "https://example.org/pets.csv" $opts }}
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
        └── pets.csv
```
@y
```text
my-project/
└── assets/
    └── data/
        └── pets.csv
```
@z

@x
```go-html-template
{{ $data := dict }}
{{ $p := "data/pets.csv" }}
{{ with resources.Get $p }}
  {{ $opts := dict "delimiter" "," }}
  {{ $data = .Content | transform.Unmarshal $opts }}
{{ else }}
  {{ errorf "Unable to get resource %q" $p }}
{{ end }}
```
@y
```go-html-template
{{ $data := dict }}
{{ $p := "data/pets.csv" }}
{{ with resources.Get $p }}
  {{ $opts := dict "delimiter" "," }}
  {{ $data = .Content | transform.Unmarshal $opts }}
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
        └── my-pets/
            ├── index.md
            └── pets.csv
```
@y
```text
my-project/
└── content/
    └── posts/
        └── my-pets/
            ├── index.md
            └── pets.csv
```
@z

@x
```go-html-template
{{ $data := dict }}
{{ $p := "pets.csv" }}
{{ with .Resources.Get $p }}
  {{ $opts := dict "delimiter" "," }}
  {{ $data = .Content | transform.Unmarshal $opts }}
{{ else }}
  {{ errorf "Unable to get resource %q" $p }}
{{ end }}
```
@y
```go-html-template
{{ $data := dict }}
{{ $p := "pets.csv" }}
{{ with .Resources.Get $p }}
  {{ $opts := dict "delimiter" "," }}
  {{ $data = .Content | transform.Unmarshal $opts }}
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
{{ $u := "https://example.org/pets.csv" }}
{{ with resources.GetRemote $u }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    {{ $opts := dict "delimiter" "," }}
    {{ $data = .Content | transform.Unmarshal $opts }}
  {{ end }}
{{ else }}
  {{ errorf "Unable to get remote resource %q" $u }}
{{ end }}
```
@y
```go-html-template
{{ $data := dict }}
{{ $u := "https://example.org/pets.csv" }}
{{ with resources.GetRemote $u }}
  {{ with .Err }}
    {{ errorf "%s" . }}
  {{ else }}
    {{ $opts := dict "delimiter" "," }}
    {{ $data = .Content | transform.Unmarshal $opts }}
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
