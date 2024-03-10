%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: hugo.IsMultihost
description: Reports whether each configured language has a unique base URL.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: bool
  signatures: [hugo.IsMultihost]
---
@y
---
title: hugo.IsMultihost
description: Reports whether each configured language has a unique base URL.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: bool
  signatures: [hugo.IsMultihost]
---
@z

@x
{{< new-in v0.123.8 >}}
@y
{{< new-in v0.123.8 >}}
@z

@x
The `hugo.IsMultihost` function reports whether each configured language has a unique `baseURL`.
@y
The `hugo.IsMultihost` function reports whether each configured language has a unique `baseURL`.
@z

@x
{{< code-toggle file=hugo >}}
[languages]
  [languages.en]
    baseURL = 'https://en.example.org/'
    languageName = 'English'
    title = 'In English'
    weight = 2
  [languages.fr]
    baseURL = 'https://fr.example.org'
    languageName = 'Français'
    title = 'En Français'
    weight = 1
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[languages]
  [languages.en]
    baseURL = 'https://en.example.org/'
    languageName = 'English'
    title = 'In English'
    weight = 2
  [languages.fr]
    baseURL = 'https://fr.example.org'
    languageName = 'Français'
    title = 'En Français'
    weight = 1
{{< /code-toggle >}}
@z

@x
```go-html-template
{{ hugo.IsMultihost }} → true
```
@y
```go-html-template
{{ hugo.IsMultihost }} → true
```
@z
