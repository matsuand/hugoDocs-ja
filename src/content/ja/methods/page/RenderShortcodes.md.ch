%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: RenderShortcodes
description: Renders all shortcodes in the content of the given page, preserving the surrounding markup.
categories: []
keywords: []
action:
  related:
    - methods/page/RenderString
    - methods/page/Content
    - methods/page/RawContent
    - methods/page/Plain
    - methods/page/PlainWords
  returnType: template.HTML
  signatures: [PAGE.RenderShortcodes]
toc: true
---
@y
---
title: RenderShortcodes
description: Renders all shortcodes in the content of the given page, preserving the surrounding markup.
categories: []
keywords: []
action:
  related:
    - methods/page/RenderString
    - methods/page/Content
    - methods/page/RawContent
    - methods/page/Plain
    - methods/page/PlainWords
  returnType: template.HTML
  signatures: [PAGE.RenderShortcodes]
toc: true
---
@z

@x
{{< new-in 0.117.0 >}}
@y
{{< new-in 0.117.0 >}}
@z

@x
Use this method in shortcode templates to compose a page from multiple content files, while preserving a global context for footnotes and the table of contents.
@y
Use this method in shortcode templates to compose a page from multiple content files, while preserving a global context for footnotes and the table of contents.
@z

@x
For example:
@y
For example:
@z

@x
{{< code file=layouts/shortcodes/include.html >}}
{{ with site.GetPage (.Get 0) }}
  {{ .RenderShortcodes }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/shortcodes/include.html >}}
{{ with site.GetPage (.Get 0) }}
  {{ .RenderShortcodes }}
{{ end }}
{{< /code >}}
@z

@x
Then call the shortcode in your Markdown:
@y
Then call the shortcode in your Markdown:
@z

@x
{{< code file=content/about.md lang=md >}}
{{%/* include "/snippets/services.md" */%}}
{{%/* include "/snippets/values.md" */%}}
{{%/* include "/snippets/leadership.md" */%}}
{{< /code >}}
@y
{{< code file=content/about.md lang=md >}}
{{%/* include "/snippets/services.md" */%}}
{{%/* include "/snippets/values.md" */%}}
{{%/* include "/snippets/leadership.md" */%}}
{{< /code >}}
@z

@x
Each of the included Markdown files can contain calls to other shortcodes.
@y
Each of the included Markdown files can contain calls to other shortcodes.
@z

@x
## Shortcode notation
@y
## Shortcode notation
@z

@x
In the example above it's important to understand the difference between the two delimiters used when calling a shortcode:
@y
In the example above it's important to understand the difference between the two delimiters used when calling a shortcode:
@z

@x
- `{{</* myshortcode */>}}` tells Hugo that the rendered shortcode does not need further processing. For example, the shortcode content is HTML.
- `{{%/* myshortcode */%}}` tells Hugo that the rendered shortcode needs further processing. For example, the shortcode content is Markdown.
@y
- `{{</* myshortcode */>}}` tells Hugo that the rendered shortcode does not need further processing. For example, the shortcode content is HTML.
- `{{%/* myshortcode */%}}` tells Hugo that the rendered shortcode needs further processing. For example, the shortcode content is Markdown.
@z

@x
Use the latter for the "include" shortcode described above.
@y
Use the latter for the "include" shortcode described above.
@z

@x
## Further explanation
@y
## Further explanation
@z

@x
To understand what is returned by the `RenderShortcodes` method, consider this content file
@y
To understand what is returned by the `RenderShortcodes` method, consider this content file
@z

@x
{{< code file=content/about.md lang=text >}}
+++
title = 'About'
date = 2023-10-07T12:28:33-07:00
+++
@y
{{< code file=content/about.md lang=text >}}
+++
title = 'About'
date = 2023-10-07T12:28:33-07:00
+++
@z

@x
{{</* ref "privacy" */>}}
@y
{{</* ref "privacy" */>}}
@z

@x
An *emphasized* word.
{{< /code >}}
@y
An *emphasized* word.
{{< /code >}}
@z

@x
With this template code:
@y
With this template code:
@z

@x
```go-html-template
{{ $p := site.GetPage "/about" }}
{{ $p.RenderShortcodes }}
```
@y
```go-html-template
{{ $p := site.GetPage "/about" }}
{{ $p.RenderShortcodes }}
```
@z

@x
Hugo renders this:;
@y
Hugo renders this:;
@z

@x
```html
https://example.org/privacy/
@y
```html
https://example.org/privacy/
@z

@x
An *emphasized* word.
```
@y
An *emphasized* word.
```
@z

@x
Note that the shortcode within the content file was rendered, but the surrounding Markdown was preserved.
@y
Note that the shortcode within the content file was rendered, but the surrounding Markdown was preserved.
@z
