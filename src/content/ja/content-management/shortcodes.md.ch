%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% snip 対応

@x
title: Shortcodes
description: Shortcodes are simple snippets inside your content files calling built-in or custom templates.
categories: [content management]
keywords: [markdown,content,shortcodes]
@y
title: ショートコード
description: Shortcodes are simple snippets inside your content files calling built-in or custom templates.
categories: [content management]
keywords: [markdown,content,shortcodes]
@z

@x
## What a shortcode is
@y
## ショートコードとは何か {#what-a-shortcode-is}
@z

@x
Hugo loves Markdown because of its simple content format, but there are times when Markdown falls short. Often, content authors are forced to add raw HTML (e.g., video `<iframe>`'s) to Markdown content. We think this contradicts the beautiful simplicity of Markdown's syntax.
@y
Hugo loves Markdown because of its simple content format, but there are times when Markdown falls short. Often, content authors are forced to add raw HTML (e.g., video `<iframe>`'s) to Markdown content. We think this contradicts the beautiful simplicity of Markdown's syntax.
@z

@x
Hugo created **shortcodes** to circumvent these limitations.
@y
Hugo はそこで **ショートコード** (shortcodes) を作り出して、この制限を回避しました。
@z

@x
A shortcode is a simple snippet inside a content file that Hugo will render using a predefined template. Note that shortcodes will not work in template files. If you need the type of drop-in functionality that shortcodes provide but in a template, you most likely want a [partial template][partials] instead.
@y
ショートコードはコンテントファイル内に記述するスニペット (snippet; 小さなコード) です。
Hugo はあかかじめ用意されたテンプレートを使ってそれをレンダリングします。
Note that shortcodes will not work in template files. If you need the type of drop-in functionality that shortcodes provide but in a template, you most likely want a [partial template][partials] instead.
@z

@x
In addition to cleaner Markdown, shortcodes can be updated any time to reflect new classes, techniques, or standards. At the point of site generation, Hugo shortcodes will easily merge in your changes. You avoid a possibly complicated search and replace operation.
@y
In addition to cleaner Markdown, shortcodes can be updated any time to reflect new classes, techniques, or standards. At the point of site generation, Hugo shortcodes will easily merge in your changes. You avoid a possibly complicated search and replace operation.
@z

@x
## Use shortcodes
@y
## Use shortcodes
@z

@x
{{< youtube 2xkNJL4gJ9E >}}
@y
{{< youtube 2xkNJL4gJ9E >}}
@z

@x
In your content files, a shortcode can be called by calling `{{%/* shortcodename arguments */%}}`. Shortcode arguments are space delimited, and arguments with internal spaces must be quoted.
@y
In your content files, a shortcode can be called by calling `{{%/* shortcodename arguments */%}}`. Shortcode arguments are space delimited, and arguments with internal spaces must be quoted.
@z

@x
The first word in the shortcode declaration is always the name of the shortcode. Arguments follow the name. Depending upon how the shortcode is defined, the arguments may be named, positional, or both, although you can't mix argument types in a single call. The format for named arguments models that of HTML with the format `name="value"`.
@y
The first word in the shortcode declaration is always the name of the shortcode. Arguments follow the name. Depending upon how the shortcode is defined, the arguments may be named, positional, or both, although you can't mix argument types in a single call. The format for named arguments models that of HTML with the format `name="value"`.
@z

@x
Some shortcodes use or require closing shortcodes. Again like HTML, the opening and closing shortcodes match (name only) with the closing declaration, which is prepended with a slash.
@y
Some shortcodes use or require closing shortcodes. Again like HTML, the opening and closing shortcodes match (name only) with the closing declaration, which is prepended with a slash.
@z

@x
Here are two examples of paired shortcodes:
@y
Here are two examples of paired shortcodes:
@z

@x
```go-html-template
{{%/* mdshortcode */%}}Stuff to `process` in the *center*.{{%/* /mdshortcode */%}}
```
@y
```go-html-template
{{%/* mdshortcode */%}}Stuff to `process` in the *center*.{{%/* /mdshortcode */%}}
```
@z

@x
```go-html-template
{{</* highlight go */>}} A bunch of code here {{</* /highlight */>}}
```
@y
```go-html-template
{{</* highlight go */>}} A bunch of code here {{</* /highlight */>}}
```
@z

@x
The examples above use two different delimiters, the difference being the `%` character in the first and the `<>` characters in the second.
@y
The examples above use two different delimiters, the difference being the `%` character in the first and the `<>` characters in the second.
@z

@x
### Shortcodes with raw string arguments
@y
### Shortcodes with raw string arguments
@z

@x
You can pass multiple lines as arguments to a shortcode by using raw string literals:
@y
You can pass multiple lines as arguments to a shortcode by using raw string literals:
@z

@x
```go-html-template
{{</*  myshortcode `This is some <b>HTML</b>,
and a new line with a "quoted string".` */>}}
```
@y
```go-html-template
{{</*  myshortcode `This is some <b>HTML</b>,
and a new line with a "quoted string".` */>}}
```
@z

@x
### Shortcodes with Markdown
@y
### Shortcodes with Markdown
@z

@x
Shortcodes using the `%` as the outer-most delimiter will be fully rendered when sent to the content renderer. This means that the rendered output from a shortcode can be part of the page's table of contents, footnotes, etc.
@y
Shortcodes using the `%` as the outer-most delimiter will be fully rendered when sent to the content renderer. This means that the rendered output from a shortcode can be part of the page's table of contents, footnotes, etc.
@z

@x
### Shortcodes without Markdown
@y
### Shortcodes without Markdown
@z

@x
The `<` character indicates that the shortcode's inner content does *not* need further rendering. Often shortcodes without Markdown include internal HTML:
@y
The `<` character indicates that the shortcode's inner content does *not* need further rendering. Often shortcodes without Markdown include internal HTML:
@z

@x
```go-html-template
{{</* myshortcode */>}}<p>Hello <strong>World!</strong></p>{{</* /myshortcode */>}}
```
@y
```go-html-template
{{</* myshortcode */>}}<p>Hello <strong>World!</strong></p>{{</* /myshortcode */>}}
```
@z

@x
### Nested shortcodes
@y
### Nested shortcodes
@z

@x
You can call shortcodes within other shortcodes by creating your own templates that leverage the `.Parent` method. `.Parent` allows you to check the context in which the shortcode is being called. See [Shortcode templates][sctemps].
@y
You can call shortcodes within other shortcodes by creating your own templates that leverage the `.Parent` method. `.Parent` allows you to check the context in which the shortcode is being called. See [Shortcode templates][sctemps].
@z

@x
## Embedded shortcodes
@y
## Embedded shortcodes
@z

@x
Use these embedded shortcodes as needed.
@y
Use these embedded shortcodes as needed.
@z

@x
### figure
@y
### figure
@z

@x
{{% note %}}
To override Hugo's embedded `figure` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@y
{{% note %}}
To override Hugo's embedded `figure` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@z

@x
[source code]: {{% eturl figure %}}
{{% /note %}}
@y
[source code]: {{% eturl figure %}}
{{% /note %}}
@z

@x
The `figure` shortcode can use the following named arguments:
@y
The `figure` shortcode can use the following named arguments:
@z

@x
src
: URL of the image to be displayed.
@y
src
: URL of the image to be displayed.
@z

@x
link
: If the image needs to be hyperlinked, URL of the destination.
@y
link
: If the image needs to be hyperlinked, URL of the destination.
@z

@x
target
: Optional `target` attribute for the URL if `link` argument is set.
@y
target
: Optional `target` attribute for the URL if `link` argument is set.
@z

@x
rel
: Optional `rel` attribute for the URL if `link` argument is set.
@y
rel
: Optional `rel` attribute for the URL if `link` argument is set.
@z

@x
alt
: Alternate text for the image if the image cannot be displayed.
@y
alt
: Alternate text for the image if the image cannot be displayed.
@z

@x
title
: Image title.
@y
title
: Image title.
@z

@x
caption
: Image caption. Markdown within the value of `caption` will be rendered.
@y
caption
: Image caption. Markdown within the value of `caption` will be rendered.
@z

@x
class
: `class` attribute of the HTML `figure` tag.
@y
class
: `class` attribute of the HTML `figure` tag.
@z

@x
height
: `height` attribute of the image.
@y
height
: `height` attribute of the image.
@z

@x
width
: `width` attribute of the image.
@y
width
: `width` attribute of the image.
@z

@x
loading
: `loading` attribute of the image.
@y
loading
: `loading` attribute of the image.
@z

@x
attr
: Image attribution text. Markdown within the value of `attr` will be rendered.
@y
attr
: Image attribution text. Markdown within the value of `attr` will be rendered.
@z

@x
attrlink
: If the attribution text needs to be hyperlinked, URL of the destination.
@y
attrlink
: If the attribution text needs to be hyperlinked, URL of the destination.
@z

@x
Example usage:
@y
Example usage:
@z

% snip text...

@x
Rendered:
@y
Rendered:
@z

@x
```html
<figure>
  <img src="elephant.jpg">
  <figcaption><h4>An elephant at sunset</h4></figcaption>
</figure>
```
@y
```html
<figure>
  <img src="elephant.jpg">
  <figcaption><h4>An elephant at sunset</h4></figcaption>
</figure>
```
@z

@x
### gist
@y
### gist
@z

@x
{{% note %}}
To override Hugo's embedded `gist` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@y
{{% note %}}
To override Hugo's embedded `gist` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@z

@x
[source code]: {{% eturl gist %}}
{{% /note %}}
@y
[source code]: {{% eturl gist %}}
{{% /note %}}
@z

@x
To display a GitHub [gist] with this URL:
@y
To display a GitHub [gist] with this URL:
@z

@x
[gist]: https://docs.github.com/en/get-started/writing-on-github/editing-and-sharing-content-with-gists
@y
[gist]: https://docs.github.com/en/get-started/writing-on-github/editing-and-sharing-content-with-gists
@z

% snip text...

@x
Include this in your Markdown:
@y
Include this in your Markdown:
@z

% snip text...

@x
This will display all files in the gist alphabetically by file name.
@y
This will display all files in the gist alphabetically by file name.
@z

@x
{{< gist jmooring 23932424365401ffa5e9d9810102a477 >}}
@y
{{< gist jmooring 23932424365401ffa5e9d9810102a477 >}}
@z

@x
To display a specific file within the gist:
@y
To display a specific file within the gist:
@z

% snip text...

@x
Rendered:
@y
Rendered:
@z

@x
{{< gist jmooring 23932424365401ffa5e9d9810102a477 list.html >}}
@y
{{< gist jmooring 23932424365401ffa5e9d9810102a477 list.html >}}
@z

@x
### highlight
@y
### highlight
@z

@x
{{% note %}}
To override Hugo's embedded `highlight` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@y
{{% note %}}
To override Hugo's embedded `highlight` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@z

@x
[source code]: {{% eturl highlight %}}
{{% /note %}}
@y
[source code]: {{% eturl highlight %}}
{{% /note %}}
@z

@x
To display a highlighted code sample:
@y
To display a highlighted code sample:
@z

@x
```text
{{</* highlight go-html-template */>}}
{{ range .Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
{{</* /highlight */>}}
```
@y
```text
{{</* highlight go-html-template */>}}
{{ range .Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
{{</* /highlight */>}}
```
@z

@x
Rendered:
@y
Rendered:
@z

% snip code...

@x
To specify one or more [highlighting options], include a quotation-encapsulated, comma-separated list:
@y
To specify one or more [highlighting options], include a quotation-encapsulated, comma-separated list:
@z

@x
[highlighting options]: /functions/transform/highlight/
@y
[highlighting options]: /functions/transform/highlight/
@z

@x
```text
{{</* highlight go-html-template "lineNos=inline, lineNoStart=42" */>}}
{{ range .Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
{{</* /highlight */>}}
```
@y
```text
{{</* highlight go-html-template "lineNos=inline, lineNoStart=42" */>}}
{{ range .Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
{{</* /highlight */>}}
```
@z

@x
Rendered:
@y
Rendered:
@z

@x
{{< highlight go-html-template "lineNos=inline, lineNoStart=42" >}}
{{ range .Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
{{< /highlight >}}
@y
{{< highlight go-html-template "lineNos=inline, lineNoStart=42" >}}
{{ range .Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
{{< /highlight >}}
@z

@x
### instagram
@y
### instagram
@z

@x
{{% note %}}
To override Hugo's embedded `instagram` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@y
{{% note %}}
To override Hugo's embedded `instagram` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@z

@x
[source code]: {{% eturl instagram %}}
{{% /note %}}
@y
[source code]: {{% eturl instagram %}}
{{% /note %}}
@z

@x
To display an Instagram post with this URL:
@y
To display an Instagram post with this URL:
@z

@x
```text
https://www.instagram.com/p/CxOWiQNP2MO/
```
@y
```text
https://www.instagram.com/p/CxOWiQNP2MO/
```
@z

@x
Include this in your Markdown:
@y
Include this in your Markdown:
@z

@x
```text
{{</* instagram CxOWiQNP2MO */>}}
```
@y
```text
{{</* instagram CxOWiQNP2MO */>}}
```
@z

@x
Rendered:
@y
Rendered:
@z

@x
{{< instagram CxOWiQNP2MO >}}
@y
{{< instagram CxOWiQNP2MO >}}
@z

@x
### param
@y
### param
@z

@x
{{% note %}}
To override Hugo's embedded `param` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@y
{{% note %}}
To override Hugo's embedded `param` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@z

@x
[source code]: {{% eturl param %}}
{{% /note %}}
@y
[source code]: {{% eturl param %}}
{{% /note %}}
@z

@x
The `param` shortcode renders a parameter from the page's front matter, falling back to a site parameter of the same name. The shortcode throws an error if the parameter does not exist.
@y
The `param` shortcode renders a parameter from the page's front matter, falling back to a site parameter of the same name. The shortcode throws an error if the parameter does not exist.
@z

@x
Example usage:
@y
Example usage:
@z

@x
```text
{{</* param testparam */>}}
```
@y
```text
{{</* param testparam */>}}
```
@z

@x
Access nested values by [chaining] the [identifiers]:
@y
Access nested values by [chaining] the [identifiers]:
@z

@x
[chaining]: /getting-started/glossary/#chain
[identifiers]: /getting-started/glossary/#identifier
@y
[chaining]: /getting-started/glossary/#chain
[identifiers]: /getting-started/glossary/#identifier
@z

@x
```text
{{</* param my.nested.param */>}}
```
@y
```text
{{</* param my.nested.param */>}}
```
@z

@x
### ref
@y
### ref
@z

@x
{{% note %}}
To override Hugo's embedded `ref` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@y
{{% note %}}
To override Hugo's embedded `ref` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@z

@x
Always use the `{{%/* */%}}` notation when calling this shortcode.
@y
Always use the `{{%/* */%}}` notation when calling this shortcode.
@z

@x
[source code]: {{% eturl ref %}}
{{% /note %}}
@y
[source code]: {{% eturl ref %}}
{{% /note %}}
@z

@x
The `ref` shortcode returns the permalink of the given page reference.
@y
The `ref` shortcode returns the permalink of the given page reference.
@z

@x
Example usage:
@y
Example usage:
@z

@x
```text
[Post 1]({{%/* ref "/posts/post-1" */%}})
[Post 1]({{%/* ref "/posts/post-1.md" */%}})
[Post 1]({{%/* ref "/posts/post-1#foo" */%}})
[Post 1]({{%/* ref "/posts/post-1.md#foo" */%}})
```
@y
```text
[Post 1]({{%/* ref "/posts/post-1" */%}})
[Post 1]({{%/* ref "/posts/post-1.md" */%}})
[Post 1]({{%/* ref "/posts/post-1#foo" */%}})
[Post 1]({{%/* ref "/posts/post-1.md#foo" */%}})
```
@z

@x
Rendered:
@y
Rendered:
@z

@x
```html
<a href="http://example.org/posts/post-1/">Post 1</a>
<a href="http://example.org/posts/post-1/">Post 1</a>
<a href="http://example.org/posts/post-1/#foo">Post 1</a>
<a href="http://example.org/posts/post-1/#foo">Post 1</a>
```
@y
```html
<a href="http://example.org/posts/post-1/">Post 1</a>
<a href="http://example.org/posts/post-1/">Post 1</a>
<a href="http://example.org/posts/post-1/#foo">Post 1</a>
<a href="http://example.org/posts/post-1/#foo">Post 1</a>
```
@z

@x
### relref
@y
### relref
@z

@x
{{% note %}}
To override Hugo's embedded `relref` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@y
{{% note %}}
To override Hugo's embedded `relref` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@z

@x
Always use the `{{%/* */%}}` notation when calling this shortcode.
@y
Always use the `{{%/* */%}}` notation when calling this shortcode.
@z

@x
[source code]: {{% eturl relref %}}
{{% /note %}}
@y
[source code]: {{% eturl relref %}}
{{% /note %}}
@z

@x
The `relref` shortcode returns the permalink of the given page reference.
@y
The `relref` shortcode returns the permalink of the given page reference.
@z

@x
Example usage:
@y
Example usage:
@z

@x
```text
[Post 1]({{%/* relref "/posts/post-1" */%}})
[Post 1]({{%/* relref "/posts/post-1.md" */%}})
[Post 1]({{%/* relref "/posts/post-1#foo" */%}})
[Post 1]({{%/* relref "/posts/post-1.md#foo" */%}})
```
@y
```text
[Post 1]({{%/* relref "/posts/post-1" */%}})
[Post 1]({{%/* relref "/posts/post-1.md" */%}})
[Post 1]({{%/* relref "/posts/post-1#foo" */%}})
[Post 1]({{%/* relref "/posts/post-1.md#foo" */%}})
```
@z

@x
Rendered:
@y
Rendered:
@z

@x
```html
<a href="/posts/post-1/">Post 1</a>
<a href="/posts/post-1/">Post 1</a>
<a href="/posts/post-1/#foo">Post 1</a>
<a href="/posts/post-1/#foo">Post 1</a>
```
@y
```html
<a href="/posts/post-1/">Post 1</a>
<a href="/posts/post-1/">Post 1</a>
<a href="/posts/post-1/#foo">Post 1</a>
<a href="/posts/post-1/#foo">Post 1</a>
```
@z

@x
### twitter
@y
### twitter
@z

@x
{{% note %}}
To override Hugo's embedded `twitter` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@y
{{% note %}}
To override Hugo's embedded `twitter` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@z

@x
You may call the `twitter` shortcode by using its `tweet` alias.
@y
You may call the `twitter` shortcode by using its `tweet` alias.
@z

@x
[source code]: {{% eturl twitter %}}
{{% /note %}}
@y
[source code]: {{% eturl twitter %}}
{{% /note %}}
@z

@x
To display a Twitter post with this URL:
@y
To display a Twitter post with this URL:
@z

% snip text...

@x
Include this in your Markdown:
@y
Include this in your Markdown:
@z

% snip text...

@x
Rendered:
@y
Rendered:
@z

@x
{{< twitter user="SanDiegoZoo" id="1453110110599868418" >}}
@y
{{< twitter user="SanDiegoZoo" id="1453110110599868418" >}}
@z

@x
### vimeo
@y
### vimeo
@z

@x
{{% note %}}
To override Hugo's embedded `vimeo` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@y
{{% note %}}
To override Hugo's embedded `vimeo` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@z

@x
[source code]: {{% eturl vimeo %}}
{{% /note %}}
@y
[source code]: {{% eturl vimeo %}}
{{% /note %}}
@z

@x
To display a Vimeo video with this URL:
@y
To display a Vimeo video with this URL:
@z

@x
```text
https://vimeo.com/channels/staffpicks/55073825
```
@y
```text
https://vimeo.com/channels/staffpicks/55073825
```
@z

@x
Include this in your Markdown:
@y
Include this in your Markdown:
@z

@x
```text
{{</* vimeo 55073825 */>}}
```
@y
```text
{{</* vimeo 55073825 */>}}
```
@z

@x
Rendered:
@y
Rendered:
@z

@x
{{< vimeo 55073825 >}}
@y
{{< vimeo 55073825 >}}
@z

@x
{{% note %}}
If you want to further customize the visual styling, add a `class` argument when calling the shortcode. The new `class` will be added to the `<div>` that wraps the `<iframe>` *and* will remove the inline styles. Note that you will need to call the `id` as a named argument as well. You can also give the vimeo video a descriptive title with `title`.
@y
{{% note %}}
If you want to further customize the visual styling, add a `class` argument when calling the shortcode. The new `class` will be added to the `<div>` that wraps the `<iframe>` *and* will remove the inline styles. Note that you will need to call the `id` as a named argument as well. You can also give the vimeo video a descriptive title with `title`.
@z

@x
```go
{{</* vimeo id="146022717" class="my-vimeo-wrapper-class" title="My vimeo video" */>}}
```
{{% /note %}}
@y
```go
{{</* vimeo id="146022717" class="my-vimeo-wrapper-class" title="My vimeo video" */>}}
```
{{% /note %}}
@z

@x
### youtube
@y
### youtube
@z

@x
{{% note %}}
To override Hugo's embedded `youtube` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@y
{{% note %}}
To override Hugo's embedded `youtube` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@z

@x
[source code]: {{% eturl youtube %}}
{{% /note %}}
@y
[source code]: {{% eturl youtube %}}
{{% /note %}}
@z

@x
To display a YouTube video with this URL:
@y
To display a YouTube video with this URL:
@z

@x
```text
https://www.youtube.com/watch?v=0RKpf3rK57I
```
@y
```text
https://www.youtube.com/watch?v=0RKpf3rK57I
```
@z

@x
Include this in your Markdown:
@y
Include this in your Markdown:
@z

@x
```text
{{</* youtube 0RKpf3rK57I */>}}
```
@y
```text
{{</* youtube 0RKpf3rK57I */>}}
```
@z

@x
Rendered:
@y
Rendered:
@z

@x
{{< youtube 0RKpf3rK57I >}}
@y
{{< youtube 0RKpf3rK57I >}}
@z

@x
The youtube shortcode accepts these named arguments:
@y
The youtube shortcode accepts these named arguments:
@z

@x
id
: (`string`) The video `id`. Optional if the `id` is provided as a positional argument as shown in the example above.
@y
id
: (`string`) The video `id`. Optional if the `id` is provided as a positional argument as shown in the example above.
@z

@x
allowFullScreen
{{< new-in 0.125.0 >}}
: (`bool`) Whether the `iframe` element can activate full screen mode. Default is `true`.
@y
allowFullScreen
{{< new-in 0.125.0 >}}
: (`bool`) Whether the `iframe` element can activate full screen mode. Default is `true`.
@z

@x
autoplay
 {{< new-in 0.125.0 >}}
: (`bool`) Whether to automatically play the video. Forces `mute` to `true`. Default is `false`.
@y
autoplay
 {{< new-in 0.125.0 >}}
: (`bool`) Whether to automatically play the video. Forces `mute` to `true`. Default is `false`.
@z

@x
class
: (`string`) The `class` attribute of the wrapping `div` element. When specified, removes the `style` attributes from the `iframe` element and its wrapping `div` element.
@y
class
: (`string`) The `class` attribute of the wrapping `div` element. When specified, removes the `style` attributes from the `iframe` element and its wrapping `div` element.
@z

@x
controls
{{< new-in 0.125.0 >}}
: (`bool`) Whether to display the video controls. Default is `true`.
@y
controls
{{< new-in 0.125.0 >}}
: (`bool`) Whether to display the video controls. Default is `true`.
@z

@x
end
{{< new-in 0.125.0 >}}
: (`int`) The time, measured in seconds from the start of the video, when the player should stop playing the video.
@y
end
{{< new-in 0.125.0 >}}
: (`int`) The time, measured in seconds from the start of the video, when the player should stop playing the video.
@z

@x
loading
{{< new-in 0.125.0 >}}
: (`string`) The loading attribute of the `iframe` element, either `eager` or `lazy`. Default is `eager`.
@y
loading
{{< new-in 0.125.0 >}}
: (`string`) The loading attribute of the `iframe` element, either `eager` or `lazy`. Default is `eager`.
@z

@x
loop
{{< new-in 0.125.0 >}}
: (`bool`) Whether to indefinitely repeat the video. Ignores the `start` and `end` arguments after the first play.  Default is `false`.
@y
loop
{{< new-in 0.125.0 >}}
: (`bool`) Whether to indefinitely repeat the video. Ignores the `start` and `end` arguments after the first play.  Default is `false`.
@z

@x
mute
{{< new-in 0.125.0 >}}
: (`bool`) Whether to mute the video. Always `true` when `autoplay` is `true`. Default is `false`.
@y
mute
{{< new-in 0.125.0 >}}
: (`bool`) Whether to mute the video. Always `true` when `autoplay` is `true`. Default is `false`.
@z

@x
start
{{< new-in 0.125.0 >}}
: (`int`) The time, measured in seconds from the start of the video, when the player should start playing the video.
@y
start
{{< new-in 0.125.0 >}}
: (`int`) The time, measured in seconds from the start of the video, when the player should start playing the video.
@z

@x
title
: (`string`) The `title` attribute of the `iframe` element. Defaults to "YouTube video".
@y
title
: (`string`) The `title` attribute of the `iframe` element. Defaults to "YouTube video".
@z

@x
Example using some of the above:
@y
Example using some of the above:
@z

@x
```text
{{</* youtube id=0RKpf3rK57I start=30 end=60 loading=lazy */>}}
```
@y
```text
{{</* youtube id=0RKpf3rK57I start=30 end=60 loading=lazy */>}}
```
@z

@x
## Privacy configuration
@y
## Privacy configuration
@z

@x
To learn how to configure your Hugo site to meet the new EU privacy regulation, see [privacy protections].
@y
To learn how to configure your Hugo site to meet the new EU privacy regulation, see [privacy protections].
@z

@x
## Create custom shortcodes
@y
## Create custom shortcodes
@z

@x
To learn more about creating custom shortcodes, see the [shortcode template documentation].
@y
To learn more about creating custom shortcodes, see the [shortcode template documentation].
@z

@x
[privacy protections]: /about/privacy/
[partials]: /templates/partials/
[quickstart]: /getting-started/quick-start/
[sctemps]: /templates/shortcode-templates/
[shortcode template documentation]: /templates/shortcode-templates/
[Vimeo]: https://vimeo.com/
[YouTube Videos]: https://www.youtube.com/
@y
[privacy protections]: /about/privacy/
[partials]: /templates/partials/
[quickstart]: /getting-started/quick-start/
[sctemps]: /templates/shortcode-templates/
[shortcode template documentation]: /templates/shortcode-templates/
[Vimeo]: https://vimeo.com/
[YouTube Videos]: https://www.youtube.com/
@z
