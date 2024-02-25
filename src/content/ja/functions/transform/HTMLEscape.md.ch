%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: transform.HTMLEscape
description: Returns the given string, escaping special characters by replacing them with HTML entities.
categories: []
keywords: []
action:
  aliases: [htmlEscape]
  related:
    - functions/transform/HTMLUnescape
  returnType: string
  signatures: [transform.HTMLEscape INPUT]
aliases: [/functions/htmlescape]
---
@y
---
title: transform.HTMLEscape
description: Returns the given string, escaping special characters by replacing them with HTML entities.
categories: []
keywords: []
action:
  aliases: [htmlEscape]
  related:
    - functions/transform/HTMLUnescape
  returnType: string
  signatures: [transform.HTMLEscape INPUT]
aliases: [/functions/htmlescape]
---
@z

@x
The `transform.HTMLEscape` function escapes five special characters by replacing them with [HTML entities]:
@y
The `transform.HTMLEscape` function escapes five special characters by replacing them with [HTML entities]:
@z

@x
- `&` → `&amp;`
- `<` → `&lt;`
- `>` → `&gt;`
- `'` → `&#39;`
- `"` → `&#34;`
@y
- `&` → `&amp;`
- `<` → `&lt;`
- `>` → `&gt;`
- `'` → `&#39;`
- `"` → `&#34;`
@z

@x
For example:
@y
For example:
@z

@x
```go-html-template
{{ htmlEscape "Lilo & Stitch" }} → Lilo &amp; Stitch
{{ htmlEscape "7 > 6" }} → 7 &gt; 6
```
@y
```go-html-template
{{ htmlEscape "Lilo & Stitch" }} → Lilo &amp; Stitch
{{ htmlEscape "7 > 6" }} → 7 &gt; 6
```
@z

@x
[html entities]: https://developer.mozilla.org/en-US/docs/Glossary/Entity
@y
[html entities]: https://developer.mozilla.org/en-US/docs/Glossary/Entity
@z
