%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: transform.HighlightCodeBlock
description: Highlights code received in context within a code block render hook.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/transform/CanHighlight
    - functions/transform/Highlight
  returnType: highlight.HighlightResult 
  signatures: ['transform.HighlightCodeBlock CONTEXT [OPTIONS]']
---
@y
---
title: transform.HighlightCodeBlock
description: Highlights code received in context within a code block render hook.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/transform/CanHighlight
    - functions/transform/Highlight
  returnType: highlight.HighlightResult 
  signatures: ['transform.HighlightCodeBlock CONTEXT [OPTIONS]']
---
@z

@x
This function is only useful within a code block render hook.
@y
This function is only useful within a code block render hook.
@z

@x
Given the context passed into a code block render hook, `transform.HighlightCodeBlock` returns a `HighlightResult` object with two methods.
@y
Given the context passed into a code block render hook, `transform.HighlightCodeBlock` returns a `HighlightResult` object with two methods.
@z

@x
.Wrapped
: (`template.HTML`) Returns highlighted code wrapped in `<div>`, `<pre>`, and `<code>` elements. This is identical to the value returned by the transform.Highlight function.
@y
.Wrapped
: (`template.HTML`) Returns highlighted code wrapped in `<div>`, `<pre>`, and `<code>` elements. This is identical to the value returned by the transform.Highlight function.
@z

@x
.Inner
: (`template.HTML`) Returns highlighted code without any wrapping elements, allowing you to create your own wrapper.
@y
.Inner
: (`template.HTML`) Returns highlighted code without any wrapping elements, allowing you to create your own wrapper.
@z

@x
```go-html-template
{{ $result := transform.HighlightCodeBlock . }}
{{ $result.Wrapped }}
```
@y
```go-html-template
{{ $result := transform.HighlightCodeBlock . }}
{{ $result.Wrapped }}
```
@z

@x
To override the default [highlighting options]:
@y
To override the default [highlighting options]:
@z

@x
```go-html-template
{{ $opts := merge .Options (dict "linenos" true) }}
{{ $result := transform.HighlightCodeBlock . $opts }}
{{ $result.Wrapped }}
```
@y
```go-html-template
{{ $opts := merge .Options (dict "linenos" true) }}
{{ $result := transform.HighlightCodeBlock . $opts }}
{{ $result.Wrapped }}
```
@z

@x
[highlighting options]: /functions/transform/highlight/#options
@y
[highlighting options]: /functions/transform/highlight/#options
@z
