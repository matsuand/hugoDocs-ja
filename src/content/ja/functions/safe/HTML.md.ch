%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: safe.HTML
description: Declares the given string as a safeHTML string.
categories: []
keywords: []
action:
  aliases: [safeHTML]
  related:
    - functions/safe/CSS
    - functions/safe/HTMLAttr
    - functions/safe/JS
    - functions/safe/JSStr
    - functions/safe/URL
  returnType: template.HTML
  signatures: [safe.HTML INPUT]
aliases: [/functions/safehtml]
---
@y
---
title: safe.HTML
description: Declares the given string as a safeHTML string.
categories: []
keywords: []
action:
  aliases: [safeHTML]
  related:
    - functions/safe/CSS
    - functions/safe/HTMLAttr
    - functions/safe/JS
    - functions/safe/JSStr
    - functions/safe/URL
  returnType: template.HTML
  signatures: [safe.HTML INPUT]
aliases: [/functions/safehtml]
---
@z

@x
It should not be used for HTML from a third-party, or HTML with unclosed tags or comments.
@y
It should not be used for HTML from a third-party, or HTML with unclosed tags or comments.
@z

@x
Given a site-wide [`hugo.toml`][config] with the following `copyright` value:
@y
Given a site-wide [`hugo.toml`][config] with the following `copyright` value:
@z

@x
{{< code-toggle file=hugo >}}
copyright = "© 2015 Jane Doe.  <a href=\"https://creativecommons.org/licenses/by/4.0/\">Some rights reserved</a>."
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
copyright = "© 2015 Jane Doe.  <a href=\"https://creativecommons.org/licenses/by/4.0/\">Some rights reserved</a>."
{{< /code-toggle >}}
@z

@x
`{{ .Site.Copyright | safeHTML }}` in a template would then output:
@y
`{{ .Site.Copyright | safeHTML }}` in a template would then output:
@z

@x
```html
© 2015 Jane Doe.  <a href="https://creativecommons.org/licenses/by/4.0/">Some rights reserved</a>.
```
@y
```html
© 2015 Jane Doe.  <a href="https://creativecommons.org/licenses/by/4.0/">Some rights reserved</a>.
```
@z

@x
However, without the `safeHTML` function, html/template assumes `.Site.Copyright` to be unsafe and therefore escapes all HTML tags and renders the whole string as plain text:
@y
However, without the `safeHTML` function, html/template assumes `.Site.Copyright` to be unsafe and therefore escapes all HTML tags and renders the whole string as plain text:
@z

@x
```html
<p>© 2015 Jane Doe.  &lt;a href=&#34;https://creativecommons.org/licenses by/4.0/&#34;&gt;Some rights reserved&lt;/a&gt;.</p>
```
@y
```html
<p>© 2015 Jane Doe.  &lt;a href=&#34;https://creativecommons.org/licenses by/4.0/&#34;&gt;Some rights reserved&lt;/a&gt;.</p>
```
@z

@x
[config]: /getting-started/configuration/
@y
[config]: /getting-started/configuration/
@z
