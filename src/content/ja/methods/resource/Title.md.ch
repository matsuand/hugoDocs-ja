%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Title
description: Returns the title of the given resource as optionally defined in front matter, falling back to a relative path or hashed file name depending on resource type.
categories: []
keywords: []
action:
  related:
    - methods/resource/Name
  returnType: string
  signatures: [RESOURCE.Title]
toc: true
---
@y
---
title: Title
description: Returns the title of the given resource as optionally defined in front matter, falling back to a relative path or hashed file name depending on resource type.
categories: []
keywords: []
action:
  related:
    - methods/resource/Name
  returnType: string
  signatures: [RESOURCE.Title]
toc: true
---
@z

@x
The value returned by the `Title` method on a `Resource` object depends on the resource type.
@y
The value returned by the `Title` method on a `Resource` object depends on the resource type.
@z

@x
## Global resource
@y
## Global resource
@z

@x
With a [global resource], the `Title` method returns the path to the resource, relative to the assets directory.
@y
With a [global resource], the `Title` method returns the path to the resource, relative to the assets directory.
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
  {{ .Title }} → images/a.jpg
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "images/a.jpg" }}
  {{ .Title }} → images/a.jpg
{{ end }}
```
@z

@x
## Page resource
@y
## Page resource
@z

@x
With a [page resource], the `Title` method returns the path to the resource, relative to the page bundle.
@y
With a [page resource], the `Title` method returns the path to the resource, relative to the page bundle.
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
  {{ .Title }} → images/a.jpg
{{ end }}
```
@y
```go-html-template
{{ with .Resources.Get "images/a.jpg" }}
  {{ .Title }} → images/a.jpg
{{ end }}
```
@z

@x
If you create an element in the `resources` array in front matter, the `Title` method returns the value of the `title` parameter:
@y
If you create an element in the `resources` array in front matter, the `Title` method returns the value of the `title` parameter:
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
  {{ .Title }} →  Felix the cat
{{ end }}
```
@y
```go-html-template
{{ with .Resources.Get "cat" }}
  {{ .Title }} →  Felix the cat
{{ end }}
```
@z

@x
If the page resource is a content file, the `Title` methods return the `title` field as defined in front matter.
@y
If the page resource is a content file, the `Title` methods return the `title` field as defined in front matter.
@z

@x
```text
content/
├── lessons/
│   ├── lesson-1/
│   │   ├── _objectives.md  <-- resource type = page
│   │   └── index.md
│   └── _index.md
└── _index.md
```
@y
```text
content/
├── lessons/
│   ├── lesson-1/
│   │   ├── _objectives.md  <-- resource type = page
│   │   └── index.md
│   └── _index.md
└── _index.md
```
@z

@x
## Remote resource
@y
## Remote resource
@z

@x
With a [remote resource], the `Title` method returns a hashed file name.
@y
With a [remote resource], the `Title` method returns a hashed file name.
@z

@x
```go-html-template
{{ with resources.GetRemote "https://example.org/images/a.jpg" }}
  {{ .Title }} → a_18432433023265451104.jpg
{{ end }}
```
@y
```go-html-template
{{ with resources.GetRemote "https://example.org/images/a.jpg" }}
  {{ .Title }} → a_18432433023265451104.jpg
{{ end }}
```
@z

@x
[global resource]: /getting-started/glossary/#global-resource
[page resource]: /getting-started/glossary/#page-resource
[remote resource]: /getting-started/glossary/#remote-resource
@y
[global resource]: /getting-started/glossary/#global-resource
[page resource]: /getting-started/glossary/#page-resource
[remote resource]: /getting-started/glossary/#remote-resource
@z
