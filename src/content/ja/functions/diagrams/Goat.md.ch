%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: diagrams.Goat
description: Converts ASCII art to an SVG diagram, returning a GoAT diagram object.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: diagrams.goatDiagram
  signatures: ['diagrams.Goat INPUT']
toc: true
---
@y
---
title: diagrams.Goat
description: Converts ASCII art to an SVG diagram, returning a GoAT diagram object.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: diagrams.goatDiagram
  signatures: ['diagrams.Goat INPUT']
toc: true
---
@z

@x
Useful in a [code block render hook], the `diagram.Goat` function converts ASCII art to an SVG diagram, returning a [GoAT] diagram object with the following methods:
@y
Useful in a [code block render hook], the `diagram.Goat` function converts ASCII art to an SVG diagram, returning a [GoAT] diagram object with the following methods:
@z

@x
[GoAT]: https://github.com/blampe/goat#readme
[code block render hook]: /render-hooks/code-blocks/
@y
[GoAT]: https://github.com/blampe/goat#readme
[code block render hook]: /render-hooks/code-blocks/
@z

@x
Inner
: (`template.HTML`) Returns the SVG child elements without a wrapping `svg` element, allowing you to create your own wrapper.
@y
Inner
: (`template.HTML`) Returns the SVG child elements without a wrapping `svg` element, allowing you to create your own wrapper.
@z

@x
Wrapped
: (`template.HTML`) Returns the SVG child elements wrapped in an `svg` element.
@y
Wrapped
: (`template.HTML`) Returns the SVG child elements wrapped in an `svg` element.
@z

@x
Width
: (`int`) Returns the width of the rendered diagram, in pixels.
@y
Width
: (`int`) Returns the width of the rendered diagram, in pixels.
@z

@x
Height
: (`int`) Returns the height of the rendered diagram, in pixels.
@y
Height
: (`int`) Returns the height of the rendered diagram, in pixels.
@z

@x
## GoAT Diagrams
@y
## GoAT Diagrams
@z

@x
Hugo natively supports [GoAT](https://github.com/bep/goat) diagrams with an [embedded code block render hook].
@y
Hugo natively supports [GoAT](https://github.com/bep/goat) diagrams with an [embedded code block render hook].
@z

@x
[embedded code block render hook]: {{% eturl render-codeblock-goat %}}
@y
[embedded code block render hook]: {{% eturl render-codeblock-goat %}}
@z

@x
This Markdown:
@y
This Markdown:
@z

@x
````
```goat
.---.     .-.       .-.       .-.     .---.
| A +--->| 1 |<--->| 2 |<--->| 3 |<---+ B |
'---'     '-'       '+'       '+'     '---'
```
````
@y
````
```goat
.---.     .-.       .-.       .-.     .---.
| A +--->| 1 |<--->| 2 |<--->| 3 |<---+ B |
'---'     '-'       '+'       '+'     '---'
```
````
@z

@x
Is rendered to:
@y
Is rendered to:
@z

@x
```html
<div class="goat svg-container">
  <svg xmlns="http://www.w3.org/2000/svg" font-family="Menlo,Lucida Console,monospace" viewBox="0 0 352 57">
    ...
  </svg>
</div>
```
@y
```html
<div class="goat svg-container">
  <svg xmlns="http://www.w3.org/2000/svg" font-family="Menlo,Lucida Console,monospace" viewBox="0 0 352 57">
    ...
  </svg>
</div>
```
@z

@x
Which appears in your browser as:
@y
Which appears in your browser as:
@z

@x
```goat {class="mw6-ns"}
.---.     .-.       .-.       .-.     .---.
| A +--->| 1 |<--->| 2 |<--->| 3 |<---+ B |
'---'     '-'       '+'       '+'     '---'
```
@y
```goat {class="mw6-ns"}
.---.     .-.       .-.       .-.     .---.
| A +--->| 1 |<--->| 2 |<--->| 3 |<---+ B |
'---'     '-'       '+'       '+'     '---'
```
@z

@x
To customize rendering, override Hugo's [embedded code block render hook] for GoAT diagrams.
@y
To customize rendering, override Hugo's [embedded code block render hook] for GoAT diagrams.
@z

@x
## Code block render hook
@y
## Code block render hook
@z

@x
By way of example, let's create a code block render hook to render GoAT diagrams as `figure` elements with an optional caption.
@y
By way of example, let's create a code block render hook to render GoAT diagrams as `figure` elements with an optional caption.
@z

@x
{{< code file=layouts/_default/_markup/render-codeblock-goat.html >}}
{{ $caption := or .Attributes.caption "" }}
{{ $class := or .Attributes.class "diagram" }}
{{ $id := or .Attributes.id (printf "diagram-%d" (add 1 .Ordinal)) }}
@y
{{< code file=layouts/_default/_markup/render-codeblock-goat.html >}}
{{ $caption := or .Attributes.caption "" }}
{{ $class := or .Attributes.class "diagram" }}
{{ $id := or .Attributes.id (printf "diagram-%d" (add 1 .Ordinal)) }}
@z

@x
<figure id="{{ $id }}">
  {{ with diagrams.Goat (trim .Inner "\n\r") }}
    <svg class="{{ $class }}" width="{{ .Width }}" height="{{ .Height }}"  xmlns="http://www.w3.org/2000/svg" version="1.1">
      {{ .Inner }}
    </svg>
  {{ end }}
  <figcaption>{{ $caption }}</figcaption>
</figure>
{{< /code >}}
@y
<figure id="{{ $id }}">
  {{ with diagrams.Goat (trim .Inner "\n\r") }}
    <svg class="{{ $class }}" width="{{ .Width }}" height="{{ .Height }}"  xmlns="http://www.w3.org/2000/svg" version="1.1">
      {{ .Inner }}
    </svg>
  {{ end }}
  <figcaption>{{ $caption }}</figcaption>
</figure>
{{< /code >}}
@z

@x
This Markdown:
@y
This Markdown:
@z

@x
{{< code file=content/example.md lang=text >}}
```goat {class="foo" caption="Diagram 1: Example"}
.---.     .-.       .-.       .-.     .---.
| A +--->| 1 |<--->| 2 |<--->| 3 |<---+ B |
'---'     '-'       '+'       '+'     '---'
```
{{< /code >}}
@y
{{< code file=content/example.md lang=text >}}
```goat {class="foo" caption="Diagram 1: Example"}
.---.     .-.       .-.       .-.     .---.
| A +--->| 1 |<--->| 2 |<--->| 3 |<---+ B |
'---'     '-'       '+'       '+'     '---'
```
{{< /code >}}
@z

@x
Is rendered to:
@y
Is rendered to:
@z

@x
```html
<figure id="diagram-1">
  <svg class="foo" width="272" height="57" xmlns="http://www.w3.org/2000/svg" version="1.1">
    ...
  </svg>
  <figcaption>Diagram 1: Example</figcaption>
</figure>
```
@y
```html
<figure id="diagram-1">
  <svg class="foo" width="272" height="57" xmlns="http://www.w3.org/2000/svg" version="1.1">
    ...
  </svg>
  <figcaption>Diagram 1: Example</figcaption>
</figure>
```
@z

@x
Use CSS to style the SVG as needed:
@y
Use CSS to style the SVG as needed:
@z

@x
```css
svg.foo {
  font-family: "Segoe UI","Noto Sans",Helvetica,Arial,sans-serif
}
```
@y
```css
svg.foo {
  font-family: "Segoe UI","Noto Sans",Helvetica,Arial,sans-serif
}
```
@z
