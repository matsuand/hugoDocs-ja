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
    - methods/site/GetPage
  returnType: page.Page
  signatures: [PAGE.GetPage PATH]
aliases: [/functions/getpage]
---
@y
---
title: GetPage
description: Returns a Page object from the given path. 
categories: []
keywords: []
action:
  related:
    - methods/site/GetPage
  returnType: page.Page
  signatures: [PAGE.GetPage PATH]
aliases: [/functions/getpage]
---
@z

@x
The `GetPage` method is also available on a `Site` object. See&nbsp;[details].
@y
The `GetPage` method is also available on a `Site` object. See&nbsp;[details].
@z

@x
[details]: /methods/site/getpage/
@y
[details]: /methods/site/getpage/
@z

@x
When using the `GetPage` method on the `Page` object, specify a path relative to the current directory or relative to the content directory.
@y
When using the `GetPage` method on the `Page` object, specify a path relative to the current directory or relative to the content directory.
@z

@x
If Hugo cannot resolve the path to a page, the method returns nil. If the path is ambiguous, Hugo throws an error and fails the build.
@y
If Hugo cannot resolve the path to a page, the method returns nil. If the path is ambiguous, Hugo throws an error and fails the build.
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
The examples below depict the result of rendering works/paintings/the-mona-lisa.md with a single page template:
@y
The examples below depict the result of rendering works/paintings/the-mona-lisa.md with a single page template:
@z

@x
```go-html-template
{{ with .GetPage "starry-night" }}
  {{ .Title }} → Starry Night
{{ end }}
@y
```go-html-template
{{ with .GetPage "starry-night" }}
  {{ .Title }} → Starry Night
{{ end }}
@z

@x
{{ with .GetPage "./starry-night" }}
  {{ .Title }} → Starry Night
{{ end }}
@y
{{ with .GetPage "./starry-night" }}
  {{ .Title }} → Starry Night
{{ end }}
@z

@x
{{ with .GetPage "../paintings/starry-night" }}
  {{ .Title }} → Starry Night
{{ end }}
@y
{{ with .GetPage "../paintings/starry-night" }}
  {{ .Title }} → Starry Night
{{ end }}
@z

@x
{{ with .GetPage "/works/paintings/starry-night" }}
  {{ .Title }} → Starry Night
{{ end }}
@y
{{ with .GetPage "/works/paintings/starry-night" }}
  {{ .Title }} → Starry Night
{{ end }}
@z

@x
{{ with .GetPage "../sculptures/david" }}
  {{ .Title }} → David
{{ end }}
@y
{{ with .GetPage "../sculptures/david" }}
  {{ .Title }} → David
{{ end }}
@z

@x
{{ with .GetPage "/works/sculptures/david" }}
  {{ .Title }} → David
{{ end }}
```
@y
{{ with .GetPage "/works/sculptures/david" }}
  {{ .Title }} → David
{{ end }}
```
@z
