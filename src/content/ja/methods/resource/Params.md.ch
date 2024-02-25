%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Params
description: Returns a map of resource parameters as defined in front matter.
categories: []
keywords: []
action:
  related: []
  returnType: map
  signatures: [RESOURCE.Params]
---
@y
---
title: Params
description: Returns a map of resource parameters as defined in front matter.
categories: []
keywords: []
action:
  related: []
  returnType: map
  signatures: [RESOURCE.Params]
---
@z

@x
Use the `Params` method with [page resources]. It is not applicable to either [global] or [remote] resources.
@y
Use the `Params` method with [page resources]. It is not applicable to either [global] or [remote] resources.
@z

@x
[global]: /getting-started/glossary/#global-resource
[page resources]: /getting-started/glossary/#page-resource
[remote]: /getting-started/glossary/#remote-resource
@y
[global]: /getting-started/glossary/#global-resource
[page resources]: /getting-started/glossary/#page-resource
[remote]: /getting-started/glossary/#remote-resource
@z

@x
With this content structure:
@y
With this content structure:
@z

@x
```text
content/
├── posts/
│   ├── cats/
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
│   ├── cats/
│   │   ├── images/
│   │   │   └── a.jpg
│   │   └── index.md
│   └── _index.md
└── _index.md
```
@z

@x
And this front matter:
@y
And this front matter:
@z

@x
{{< code-toggle file=content/posts/cats.md fm=true >}}
title = 'Cats'
[[resources]]
  src = 'images/a.jpg'
  title = 'Felix the cat'
  [resources.params]
    alt = 'Photograph of black cat'
    temperament = 'vicious'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/posts/cats.md fm=true >}}
title = 'Cats'
[[resources]]
  src = 'images/a.jpg'
  title = 'Felix the cat'
  [resources.params]
    alt = 'Photograph of black cat'
    temperament = 'vicious'
{{< /code-toggle >}}
@z

@x
And this template:
@y
And this template:
@z

@x
```go-html-template
{{ with .Resources.Get "images/a.jpg" }}
  <figure>
    <img alt="{{ .Params.alt }}" src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}">
    <figcaption>{{ .Title }} is {{ .Params.temperament }}</figcaption>
  </figure>
{{ end }}
```
@y
```go-html-template
{{ with .Resources.Get "images/a.jpg" }}
  <figure>
    <img alt="{{ .Params.alt }}" src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}">
    <figcaption>{{ .Title }} is {{ .Params.temperament }}</figcaption>
  </figure>
{{ end }}
```
@z

@x
Hugo renders:
@y
Hugo renders:
@z

@x
```html
<figure>
  <img alt="Photograph of black cat" src="/posts/post-1/images/a.jpg" width="600" height="400">
  <figcaption>Felix the cat is vicious</figcaption>
</figure>
```
@y
```html
<figure>
  <img alt="Photograph of black cat" src="/posts/post-1/images/a.jpg" width="600" height="400">
  <figcaption>Felix the cat is vicious</figcaption>
</figure>
```
@z

@x
See the [page resources] section for more information.
@y
See the [page resources] section for more information.
@z

@x
[page resources]: /content-management/page-resources/
@y
[page resources]: /content-management/page-resources/
@z
