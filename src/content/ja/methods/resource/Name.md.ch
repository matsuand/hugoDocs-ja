%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Name
description: Returns the name of the given resource as optionally defined in front matter, falling back to its path.
categories: []
keywords: []
action:
  related:
    - methods/resource/Title
  returnType: string
  signatures: [RESOURCE.Name]
toc: true
---
@y
---
title: Name
description: Returns the name of the given resource as optionally defined in front matter, falling back to its path.
categories: []
keywords: []
action:
  related:
    - methods/resource/Title
  returnType: string
  signatures: [RESOURCE.Name]
toc: true
---
@z

@x
The value returned by the `Name` method on a `Resource` object depends on the resource type.
@y
The value returned by the `Name` method on a `Resource` object depends on the resource type.
@z

@x
## Global resource
@y
## Global resource
@z

@x
With a [global resource], the `Name` method returns the path to the resource, relative to the assets directory.
@y
With a [global resource], the `Name` method returns the path to the resource, relative to the assets directory.
@z

@x
```text
assets/
└── images/
    └── a.jpg
```
@y
```text
assets/
└── images/
    └── a.jpg
```
@z

@x
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .Name }} → /images/a.jpg
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .Name }} → /images/a.jpg
{{ end }}
```
@z

@x
## Page resource
@y
## Page resource
@z

@x
With a [page resource], if you create an element in the `resources` array in front matter, the `Name` method returns the value of the `name` parameter:
@y
With a [page resource], if you create an element in the `resources` array in front matter, the `Name` method returns the value of the `name` parameter:
@z

@x
{{< code-toggle file=content/posts/post-1.md fm=true >}}
title = 'Post 1'
[[resources]]
src = 'images/a.jpg'
name = 'cat'
title = 'Felix the cat'
[resources.params]
temperament = 'malicious'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/posts/post-1.md fm=true >}}
title = 'Post 1'
[[resources]]
src = 'images/a.jpg'
name = 'cat'
title = 'Felix the cat'
[resources.params]
temperament = 'malicious'
{{< /code-toggle >}}
@z

@x
```go-html-template
{{ with .Resources.Get "cat" }}
  {{ .Name }} →  cat
{{ end }}
```
@y
```go-html-template
{{ with .Resources.Get "cat" }}
  {{ .Name }} →  cat
{{ end }}
```
@z

@x
If you do not create an element in the `resources` array in front matter, the `Name` method returns the [logical path] to the resource, relative to the page bundle.
@y
If you do not create an element in the `resources` array in front matter, the `Name` method returns the [logical path] to the resource, relative to the page bundle.
@z

@x
```text
content/
├── posts/
│   ├── post-1/
│   │   ├── images/
│   │   │   └── a.jpg
│   │   └── index.md
│   └── _index.md
└── _index.md
```
@y
```text
content/
├── posts/
│   ├── post-1/
│   │   ├── images/
│   │   │   └── a.jpg
│   │   └── index.md
│   └── _index.md
└── _index.md
```
@z

@x
```go-html-template
{{ with .Resources.Get "images/a.jpg" }}
  {{ .Name }} → images/a.jpg
{{ end }}
```
## Remote resource
@y
```go-html-template
{{ with .Resources.Get "images/a.jpg" }}
  {{ .Name }} → images/a.jpg
{{ end }}
```
## Remote resource
@z

@x
With a [remote resource], the `Name` method returns a hashed file name.
@y
With a [remote resource], the `Name` method returns a hashed file name.
@z

@x
```go-html-template
{{ with resources.GetRemote "https://example.org/images/a.jpg" }}
  {{ .Name }} → /a_18432433023265451104.jpg
{{ end }}
```
@y
```go-html-template
{{ with resources.GetRemote "https://example.org/images/a.jpg" }}
  {{ .Name }} → /a_18432433023265451104.jpg
{{ end }}
```
@z

@x
[global resource]: /getting-started/glossary/#global-resource
[logical path]: /getting-started/glossary/#logical-path
[page resource]: /getting-started/glossary/#page-resource
[remote resource]: /getting-started/glossary/#remote-resource
@y
[global resource]: /getting-started/glossary/#global-resource
[logical path]: /getting-started/glossary/#logical-path
[page resource]: /getting-started/glossary/#page-resource
[remote resource]: /getting-started/glossary/#remote-resource
@z
