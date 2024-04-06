%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

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

% snip youtube...

@x
In your content files, a shortcode can be called by calling `{{%/* shortcodename parameters */%}}`. Shortcode parameters are space delimited, and parameters with internal spaces can be quoted.
@y
In your content files, a shortcode can be called by calling `{{%/* shortcodename parameters */%}}`. Shortcode parameters are space delimited, and parameters with internal spaces can be quoted.
@z

@x
The first word in the shortcode declaration is always the name of the shortcode. Parameters follow the name. Depending upon how the shortcode is defined, the parameters may be named, positional, or both, although you can't mix parameter types in a single call. The format for named parameters models that of HTML with the format `name="value"`.
@y
The first word in the shortcode declaration is always the name of the shortcode. Parameters follow the name. Depending upon how the shortcode is defined, the parameters may be named, positional, or both, although you can't mix parameter types in a single call. The format for named parameters models that of HTML with the format `name="value"`.
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

% snip code...

@x
The examples above use two different delimiters, the difference being the `%` character in the first and the `<>` characters in the second.
@y
The examples above use two different delimiters, the difference being the `%` character in the first and the `<>` characters in the second.
@z

@x
### Shortcodes with raw string parameters
@y
### Shortcodes with raw string parameters
@z

@x
You can pass multiple lines as parameters to a shortcode by using raw string literals:
@y
You can pass multiple lines as parameters to a shortcode by using raw string literals:
@z

% snip code...

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

% snip code...

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

[source code]: {{% eturl figure %}}
{{% /note %}}
@y
{{% note %}}
To override Hugo's embedded `figure` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.

[source code]: {{% eturl figure %}}
{{% /note %}}
@z

@x
The `figure` shortcode can use the following named parameters:
@y
The `figure` shortcode can use the following named parameters:
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
: Optional `target` attribute for the URL if `link` parameter is set.
@y
target
: Optional `target` attribute for the URL if `link` parameter is set.
@z

@x
rel
: Optional `rel` attribute for the URL if `link` parameter is set.
@y
rel
: Optional `rel` attribute for the URL if `link` parameter is set.
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

% snip html...

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

% snip text...

@x
Rendered:
@y
Rendered:
@z

@x
{{< highlight go-html-template >}}
{{ range .Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
{{< /highlight >}}
@y
{{< highlight go-html-template >}}
{{ range .Pages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
{{< /highlight >}}
@z

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

% snip text...

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

% snip instagram...

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

% snip text...

@x
Access nested values by [chaining] the [identifiers]:
@y
Access nested values by [chaining] the [identifiers]:
@z

% snip links...
% snip text...

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

% snip text...

@x
Rendered:
@y
Rendered:
@z

% snip html...

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

% snip text...

@x
Rendered:
@y
Rendered:
@z

% snip html...

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
{{< vimeo 55073825 >}}
@y
{{< vimeo 55073825 >}}
@z

@x note
If you want to further customize the visual styling of the YouTube or Vimeo output, add a `class` parameter when calling the shortcode. The new `class` will be added to the `<div>` that wraps the `<iframe>` *and* will remove the inline styles. Note that you will need to call the `id` as a named parameter as well. You can also give the vimeo video a descriptive title with `title`.
@y
If you want to further customize the visual styling of the YouTube or Vimeo output, add a `class` parameter when calling the shortcode. The new `class` will be added to the `<div>` that wraps the `<iframe>` *and* will remove the inline styles. Note that you will need to call the `id` as a named parameter as well. You can also give the vimeo video a descriptive title with `title`.
@z

% snip code...

@x
### youtube
@y
### youtube
@z

@x
{{% note %}}
To override Hugo's embedded `vimeo` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@y
{{% note %}}
To override Hugo's embedded `vimeo` shortcode, copy the [source code] to a file with the same name in the layouts/shortcodes directory.
@z

@x
[source code]: {{% eturl youtube %}}
{{% /note %}}
@y
[source code]: {{% eturl youtube %}}
{{% /note %}}
@z

@x
The `youtube` shortcode embeds a responsive video player for [YouTube videos]. Only the ID of the video is required, e.g.:
@y
The `youtube` shortcode embeds a responsive video player for [YouTube videos]. Only the ID of the video is required, e.g.:
@z

@x
```txt
https://www.youtube.com/watch?v=w7Ft2ymGmfc
```
@y
```txt
https://www.youtube.com/watch?v=w7Ft2ymGmfc
```
@z

@x
#### Example `youtube` input
@y
#### Example `youtube` input
@z

@x
Copy the YouTube video ID that follows `v=` in the video's URL and pass it to the `youtube` shortcode:
@y
Copy the YouTube video ID that follows `v=` in the video's URL and pass it to the `youtube` shortcode:
@z

@x
{{< code file=example-youtube-input.md >}}
{{</* youtube w7Ft2ymGmfc */>}}
{{< /code >}}
@y
{{< code file=example-youtube-input.md >}}
{{</* youtube w7Ft2ymGmfc */>}}
{{< /code >}}
@z

@x
Furthermore, you can automatically start playback of the embedded video by setting the `autoplay` parameter to `true`. Remember that you can't mix named and unnamed parameters, so you'll need to assign the yet unnamed video ID to the parameter `id`:
@y
Furthermore, you can automatically start playback of the embedded video by setting the `autoplay` parameter to `true`. Remember that you can't mix named and unnamed parameters, so you'll need to assign the yet unnamed video ID to the parameter `id`:
@z

@x
{{< code file=example-youtube-input-with-autoplay.md >}}
{{</* youtube id="w7Ft2ymGmfc" autoplay="true" */>}}
{{< /code >}}
@y
{{< code file=example-youtube-input-with-autoplay.md >}}
{{</* youtube id="w7Ft2ymGmfc" autoplay="true" */>}}
{{< /code >}}
@z

@x
For [accessibility reasons](https://dequeuniversity.com/tips/provide-iframe-titles), it's best to provide a title for your YouTube video. You  can do this using the shortcode by providing a `title` parameter. If no title is provided, a default of "YouTube Video" will be used.
@y
For [accessibility reasons](https://dequeuniversity.com/tips/provide-iframe-titles), it's best to provide a title for your YouTube video. You  can do this using the shortcode by providing a `title` parameter. If no title is provided, a default of "YouTube Video" will be used.
@z

@x
{{< code file=example-youtube-input-with-title.md >}}
{{</* youtube id="w7Ft2ymGmfc" title="A New Hugo Site in Under Two Minutes" */>}}
{{< /code >}}
@y
{{< code file=example-youtube-input-with-title.md >}}
{{</* youtube id="w7Ft2ymGmfc" title="A New Hugo Site in Under Two Minutes" */>}}
{{< /code >}}
@z

@x
#### Example `youtube` output
@y
#### Example `youtube` output
@z

@x
Using the preceding `youtube` example, the following HTML will be added to your rendered website's markup:
@y
Using the preceding `youtube` example, the following HTML will be added to your rendered website's markup:
@z

@x
{{< code file=example-youtube-output.html >}}
{{< youtube id="w7Ft2ymGmfc" autoplay="true" >}}
{{< /code >}}
@y
{{< code file=example-youtube-output.html >}}
{{< youtube id="w7Ft2ymGmfc" autoplay="true" >}}
{{< /code >}}
@z

@x
#### Example `youtube` display
@y
#### Example `youtube` display
@z

@x
Using the preceding `youtube` example (without `autoplay="true"`), the following simulates the displayed experience for visitors to your website. Naturally, the final display will be contingent on your style sheets and surrounding markup. The video is also include in the [Quick Start of the Hugo documentation][quickstart].
@y
Using the preceding `youtube` example (without `autoplay="true"`), the following simulates the displayed experience for visitors to your website. Naturally, the final display will be contingent on your style sheets and surrounding markup. The video is also include in the [Quick Start of the Hugo documentation][quickstart].
@z

@x
{{< youtube w7Ft2ymGmfc >}}
@y
{{< youtube w7Ft2ymGmfc >}}
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

% snip links...
