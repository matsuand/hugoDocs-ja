%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Inner
description: Returns the content between opening and closing shortcode tags, applicable when the shortcode call includes a closing tag.
categories: []
keywords: []
action:
  related:
    - functions/strings/Trim
    - methods/page/RenderString
    - functions/transform/Markdownify
    - methods/shortcode/InnerDeindent
  returnType: template.HTML
  signatures: [SHORTCODE.Inner]
---
@y
---
title: Inner
description: Returns the content between opening and closing shortcode tags, applicable when the shortcode call includes a closing tag.
categories: []
keywords: []
action:
  related:
    - functions/strings/Trim
    - methods/page/RenderString
    - functions/transform/Markdownify
    - methods/shortcode/InnerDeindent
  returnType: template.HTML
  signatures: [SHORTCODE.Inner]
---
@z

@x
This content:
@y
This content:
@z

@x
{{< code file=content/services.md lang=md >}}
{{</* card title="Product Design" */>}}
We design the **best** widgets in the world.
{{</* /card */>}}
{{< /code >}}
@y
{{< code file=content/services.md lang=md >}}
{{</* card title="Product Design" */>}}
We design the **best** widgets in the world.
{{</* /card */>}}
{{< /code >}}
@z

@x
With this shortcode:
@y
With this shortcode:
@z

@x
{{< code file=layouts/shortcodes/card.html  >}}
<div class="card">
  {{ with .Get "title" }}
    <div class="card-title">{{ . }}</div>
  {{ end }}
  <div class="card-content">
    {{ trim .Inner "\r\n" }}
  </div>
</div>
{{< /code >}}
@y
{{< code file=layouts/shortcodes/card.html  >}}
<div class="card">
  {{ with .Get "title" }}
    <div class="card-title">{{ . }}</div>
  {{ end }}
  <div class="card-content">
    {{ trim .Inner "\r\n" }}
  </div>
</div>
{{< /code >}}
@z

@x
Is rendered to:
@y
Is rendered to:
@z

@x
```html
<div class="card">
  <div class="card-title">Product Design</div>
  <div class="card-content">
    We design the **best** widgets in the world.
  </div>
</div>
```
@y
```html
<div class="card">
  <div class="card-title">Product Design</div>
  <div class="card-content">
    We design the **best** widgets in the world.
  </div>
</div>
```
@z

@x
{{% note %}}
Content between opening and closing shortcode tags may include leading and/or trailing newlines, depending on placement within the Markdown. Use the [`trim`] function as shown above to remove both carriage returns and newlines.
@y
{{% note %}}
Content between opening and closing shortcode tags may include leading and/or trailing newlines, depending on placement within the Markdown. Use the [`trim`] function as shown above to remove both carriage returns and newlines.
@z

@x
[`trim`]: /functions/strings/trim/
{{% /note %}}
@y
[`trim`]: /functions/strings/trim/
{{% /note %}}
@z

@x
{{% note %}}
In the example above, the value returned by `Inner` is Markdown, but it was rendered as plain text. Use either of the following approaches to render Markdown to HTML.
{{% /note %}}
@y
{{% note %}}
In the example above, the value returned by `Inner` is Markdown, but it was rendered as plain text. Use either of the following approaches to render Markdown to HTML.
{{% /note %}}
@z

@x
## Use the RenderString method
@y
## Use the RenderString method
@z

@x
Let's modify the example above to pass the value returned by `Inner` through the [`RenderString`] method on the `Page` object:
@y
Let's modify the example above to pass the value returned by `Inner` through the [`RenderString`] method on the `Page` object:
@z

@x
[`RenderString`]: /methods/page/renderstring/
@y
[`RenderString`]: /methods/page/renderstring/
@z

@x
{{< code file=layouts/shortcodes/card.html  >}}
<div class="card">
  {{ with .Get "title" }}
    <div class="card-title">{{ . }}</div>
  {{ end }}
  <div class="card-content">
    {{ trim .Inner "\r\n" | .Page.RenderString }}
  </div>
</div>
{{< /code >}}
@y
{{< code file=layouts/shortcodes/card.html  >}}
<div class="card">
  {{ with .Get "title" }}
    <div class="card-title">{{ . }}</div>
  {{ end }}
  <div class="card-content">
    {{ trim .Inner "\r\n" | .Page.RenderString }}
  </div>
</div>
{{< /code >}}
@z

@x
Hugo renders this to:
@y
Hugo renders this to:
@z

@x
```html
<div class="card">
  <div class="card-title">Product design</div>
  <div class="card-content">
    We produce the <strong>best</strong> widgets in the world.
  </div>
</div>
```
@y
```html
<div class="card">
  <div class="card-title">Product design</div>
  <div class="card-content">
    We produce the <strong>best</strong> widgets in the world.
  </div>
</div>
```
@z

@x
You can use the [`markdownify`] function instead of the `RenderString` method, but the latter is more flexible. See&nbsp;[details].
@y
You can use the [`markdownify`] function instead of the `RenderString` method, but the latter is more flexible. See&nbsp;[details].
@z

@x
[details]: /methods/page/renderstring/
[`markdownify`]: /functions/transform/markdownify/
@y
[details]: /methods/page/renderstring/
[`markdownify`]: /functions/transform/markdownify/
@z

@x
## Use alternate notation
@y
## Use alternate notation
@z

@x
Instead of calling the shortcode with the `{{</* */>}}` notation, use the `{{%/* */%}}` notation:
@y
Instead of calling the shortcode with the `{{</* */>}}` notation, use the `{{%/* */%}}` notation:
@z

@x
{{< code file=content/services.md lang=md >}}
{{%/* card title="Product Design" */%}}
We design the **best** widgets in the world.
{{%/* /card */%}}
{{< /code >}}
@y
{{< code file=content/services.md lang=md >}}
{{%/* card title="Product Design" */%}}
We design the **best** widgets in the world.
{{%/* /card */%}}
{{< /code >}}
@z

@x
When you use the `{{%/* */%}}` notation, Hugo renders the entire shortcode as Markdown, requiring the following changes.
@y
When you use the `{{%/* */%}}` notation, Hugo renders the entire shortcode as Markdown, requiring the following changes.
@z

@x
First, configure the renderer to allow raw HTML within Markdown:
@y
First, configure the renderer to allow raw HTML within Markdown:
@z

@x
{{< code-toggle file=hugo >}}
[markup.goldmark.renderer]
unsafe = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[markup.goldmark.renderer]
unsafe = true
{{< /code-toggle >}}
@z

@x
This configuration is not unsafe if _you_ control the content. Read more about Hugo's [security model].
@y
This configuration is not unsafe if _you_ control the content. Read more about Hugo's [security model].
@z

@x
Second, because we are rendering the entire shortcode as Markdown, we must adhere to the rules governing [indentation] and inclusion of [raw HTML blocks] as provided in the [CommonMark] specification.
@y
Second, because we are rendering the entire shortcode as Markdown, we must adhere to the rules governing [indentation] and inclusion of [raw HTML blocks] as provided in the [CommonMark] specification.
@z

@x
{{< code file=layouts/shortcodes/card.html  >}}
<div class="card">
  {{ with .Get "title" }}
  <div class="card-title">{{ . }}</div>
  {{ end }}
  <div class="card-content">
@y
{{< code file=layouts/shortcodes/card.html  >}}
<div class="card">
  {{ with .Get "title" }}
  <div class="card-title">{{ . }}</div>
  {{ end }}
  <div class="card-content">
@z

@x
  {{ trim .Inner "\r\n" }}
  </div>
</div>
{{< /code >}}
@y
  {{ trim .Inner "\r\n" }}
  </div>
</div>
{{< /code >}}
@z

@x
The difference between this and the previous example is subtle but required. Note the change in indentation, the addition of a blank line, and removal of the `RenderString` method.
@y
The difference between this and the previous example is subtle but required. Note the change in indentation, the addition of a blank line, and removal of the `RenderString` method.
@z

@x
```diff
--- layouts/shortcodes/a.html
+++ layouts/shortcodes/b.html
@@ -1,8 +1,9 @@
 <div class="card">
   {{ with .Get "title" }}
-    <div class="card-title">{{ . }}</div>
+  <div class="card-title">{{ . }}</div>
   {{ end }}
   <div class="card-content">
-    {{ trim .Inner "\r\n" | .Page.RenderString }}
+
+  {{ trim .Inner "\r\n" }}
   </div>
 </div>
```
@y
```diff
--- layouts/shortcodes/a.html
+++ layouts/shortcodes/b.html
@@ -1,8 +1,9 @@
 <div class="card">
   {{ with .Get "title" }}
-    <div class="card-title">{{ . }}</div>
+  <div class="card-title">{{ . }}</div>
   {{ end }}
   <div class="card-content">
-    {{ trim .Inner "\r\n" | .Page.RenderString }}
+
+  {{ trim .Inner "\r\n" }}
   </div>
 </div>
```
@z

@x
{{% note %}}
When using the `{{%/* */%}}` notation, do not pass the value returned by `Inner` through the `RenderString` method or  the `markdownify` function.
{{% /note %}}
@y
{{% note %}}
When using the `{{%/* */%}}` notation, do not pass the value returned by `Inner` through the `RenderString` method or  the `markdownify` function.
{{% /note %}}
@z

@x
[commonmark]: https://commonmark.org/
[indentation]: https://spec.commonmark.org/0.30/#indented-code-blocks
[raw html blocks]: https://spec.commonmark.org/0.30/#html-blocks
[security model]: /about/security/
@y
[commonmark]: https://commonmark.org/
[indentation]: https://spec.commonmark.org/0.30/#indented-code-blocks
[raw html blocks]: https://spec.commonmark.org/0.30/#html-blocks
[security model]: /about/security/
@z
