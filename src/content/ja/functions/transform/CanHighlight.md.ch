%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: transform.CanHighlight
description: Reports whether the given code language is supported by the Chroma highlighter.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/transform/Highlight
    - functions/transform/HighlightCodeBlock
  returnType: bool
  signatures: [transform.CanHighlight LANGUAGE]
---
@y
---
title: transform.CanHighlight
description: Reports whether the given code language is supported by the Chroma highlighter.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/transform/Highlight
    - functions/transform/HighlightCodeBlock
  returnType: bool
  signatures: [transform.CanHighlight LANGUAGE]
---
@z

@x
```go-html-template
{{ transform.CanHighlight "go" }} → true
{{ transform.CanHighlight "klingon" }} → false
```
@y
```go-html-template
{{ transform.CanHighlight "go" }} → true
{{ transform.CanHighlight "klingon" }} → false
```
@z
