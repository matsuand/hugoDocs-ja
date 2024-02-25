%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: transform.XMLEscape
description: Returns the given string, removing disallowed characters then escaping the result to its XML equivalent.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: string
  signatures: [transform.XMLEscape INPUT]
---
@y
---
title: transform.XMLEscape
description: Returns the given string, removing disallowed characters then escaping the result to its XML equivalent.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: string
  signatures: [transform.XMLEscape INPUT]
---
@z

@x
{{< new-in 0.121.0 >}}
@y
{{< new-in 0.121.0 >}}
@z

@x
The `transform.XMLEscape` function removes [disallowed characters] as defined in the XML specification, then escapes the result by replacing the following characters with [HTML entities]:
@y
The `transform.XMLEscape` function removes [disallowed characters] as defined in the XML specification, then escapes the result by replacing the following characters with [HTML entities]:
@z

@x
- `"` → `&#34;`
- `'` → `&#39;`
- `&` → `&amp;`
- `<` → `&lt;`
- `>` → `&gt;`
- `\t` → `&#x9;`
- `\n` → `&#xA;`
- `\r` → `&#xD;`
@y
- `"` → `&#34;`
- `'` → `&#39;`
- `&` → `&amp;`
- `<` → `&lt;`
- `>` → `&gt;`
- `\t` → `&#x9;`
- `\n` → `&#xA;`
- `\r` → `&#xD;`
@z

@x
For example:
@y
For example:
@z

@x
```go-html-template
{{ transform.XMLEscape "<p>abc</p>" }} → &lt;p&gt;abc&lt;/p&gt;
```
@y
```go-html-template
{{ transform.XMLEscape "<p>abc</p>" }} → &lt;p&gt;abc&lt;/p&gt;
```
@z

@x
When using `transform.XMLEscape` in a template rendered by Go's [html/template] package, declare the string to be safe HTML to avoid double escaping. For example, in an RSS template:
@y
When using `transform.XMLEscape` in a template rendered by Go's [html/template] package, declare the string to be safe HTML to avoid double escaping. For example, in an RSS template:
@z

@x
{{< code file="layouts/_default/rss.xml" >}}
<description>{{ .Summary | transform.XMLEscape | safeHTML }}</description>
{{< /code >}}
@y
{{< code file="layouts/_default/rss.xml" >}}
<description>{{ .Summary | transform.XMLEscape | safeHTML }}</description>
{{< /code >}}
@z

@x
[disallowed characters]: https://www.w3.org/TR/xml/#charsets
[html entities]: https://developer.mozilla.org/en-us/docs/glossary/entity
[html/template]: https://pkg.go.dev/html/template
@y
[disallowed characters]: https://www.w3.org/TR/xml/#charsets
[html entities]: https://developer.mozilla.org/en-us/docs/glossary/entity
[html/template]: https://pkg.go.dev/html/template
@z
