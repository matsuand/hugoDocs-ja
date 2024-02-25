%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: GetPage
description: Returns a Page object from the given path.
categories: []
keywords: []
action:
  related:
    - methods/page/GetPage
  returnType: page.Page
  signatures: [SITE.GetPage PATH]
toc: true
---
@y
---
title: GetPage
description: Returns a Page object from the given path.
categories: []
keywords: []
action:
  related:
    - methods/page/GetPage
  returnType: page.Page
  signatures: [SITE.GetPage PATH]
toc: true
---
@z

@x
The `GetPage` method is also available on `Page` objects, allowing you to specify a path relative to the current page. See&nbsp;[details].
@y
The `GetPage` method is also available on `Page` objects, allowing you to specify a path relative to the current page. See&nbsp;[details].
@z

@x
[details]: /methods/page/getpage/
@y
[details]: /methods/page/getpage/
@z

@x
When using the `GetPage` method on a `Site` object, specify a path relative to the content directory.
@y
When using the `GetPage` method on a `Site` object, specify a path relative to the content directory.
@z

@x
If Hugo cannot resolve the path to a page, the method returns nil.
@y
If Hugo cannot resolve the path to a page, the method returns nil.
@z

@x
Consider this content structure:
@y
Consider this content structure:
@z

@x
```text
content/
├── works/
│   ├── paintings/
│   │   ├── _index.md
│   │   ├── starry-night.md
│   │   └── the-mona-lisa.md
│   ├── sculptures/
│   │   ├── _index.md
│   │   ├── david.md
│   │   └── the-thinker.md
│   └── _index.md
└── _index.md
```
@y
```text
content/
├── works/
│   ├── paintings/
│   │   ├── _index.md
│   │   ├── starry-night.md
│   │   └── the-mona-lisa.md
│   ├── sculptures/
│   │   ├── _index.md
│   │   ├── david.md
│   │   └── the-thinker.md
│   └── _index.md
└── _index.md
```
@z

@x
This home page template:
@y
This home page template:
@z

@x
```go-html-template
{{ with .Site.GetPage "/works/paintings" }}
  <ul>
    {{ range .Pages }}
      <li>{{ .Title }} by {{ .Params.artist }}</li>
    {{ end }}
  </ul>
{{ end }}
```
@y
```go-html-template
{{ with .Site.GetPage "/works/paintings" }}
  <ul>
    {{ range .Pages }}
      <li>{{ .Title }} by {{ .Params.artist }}</li>
    {{ end }}
  </ul>
{{ end }}
```
@z

@x
Is rendered to:
@y
Is rendered to:
@z

@x
```html
<ul>
  <li>Starry Night by Vincent van Gogh</li>
  <li>The Mona Lisa by Leonardo da Vinci</li>
</ul>
```
@y
```html
<ul>
  <li>Starry Night by Vincent van Gogh</li>
  <li>The Mona Lisa by Leonardo da Vinci</li>
</ul>
```
@z

@x
To get a regular page instead of a section page:
@y
To get a regular page instead of a section page:
@z

@x
```go-html-template
{{ with .Site.GetPage "/works/paintings/starry-night" }}
  {{ .Title }} → Starry Night
  {{ .Params.artist }} → Vincent van Gogh
{{ end }}
```
@y
```go-html-template
{{ with .Site.GetPage "/works/paintings/starry-night" }}
  {{ .Title }} → Starry Night
  {{ .Params.artist }} → Vincent van Gogh
{{ end }}
```
@z

@x
## Multilingual projects
@y
## Multilingual projects
@z

@x
With multilingual projects, the `GetPage` method on a `Site` object resolves the given path to a page in the current language.
@y
With multilingual projects, the `GetPage` method on a `Site` object resolves the given path to a page in the current language.
@z

@x
To get a page from a different language, query the `Sites` object:
@y
To get a page from a different language, query the `Sites` object:
@z

@x
```go-html-template
{{ with where .Site.Sites "Language.Lang" "eq" "de" }}
  {{ with index . 0 }}
    {{ with .GetPage "/works/paintings/starry-night" }}
      {{ .Title }} → Sternenklare Nacht
    {{ end }}
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with where .Site.Sites "Language.Lang" "eq" "de" }}
  {{ with index . 0 }}
    {{ with .GetPage "/works/paintings/starry-night" }}
      {{ .Title }} → Sternenklare Nacht
    {{ end }}
  {{ end }}
{{ end }}
```
@z

@x
## Page bundles
@y
## Page bundles
@z

@x
Consider this content structure:
@y
Consider this content structure:
@z

@x
```text
content/
├── headless/    
│   ├── a.jpg
│   ├── b.jpg
│   ├── c.jpg
│   └── index.md  <-- front matter: headless = true
└── _index.md
```
@y
```text
content/
├── headless/    
│   ├── a.jpg
│   ├── b.jpg
│   ├── c.jpg
│   └── index.md  <-- front matter: headless = true
└── _index.md
```
@z

@x
In the home page template, use the `GetPage` method on a `Site` object to render all the images in the headless [page bundle]:
@y
In the home page template, use the `GetPage` method on a `Site` object to render all the images in the headless [page bundle]:
@z

@x
```go-html-template
{{ with .Site.GetPage "/headless" }}
  {{ range .Resources.ByType "image" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with .Site.GetPage "/headless" }}
  {{ range .Resources.ByType "image" }}
    <img src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ end }}
{{ end }}
```
@z

@x
[page bundle]: /getting-started/glossary/#page-bundle
@y
[page bundle]: /getting-started/glossary/#page-bundle
@z
