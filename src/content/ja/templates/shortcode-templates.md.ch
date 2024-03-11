%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Create your own shortcodes
linkTitle: Shortcode templates
description: You can extend Hugo's embedded shortcodes by creating your own using the same templating syntax as that for single and list pages.
categories: [templates]
keywords: [shortcodes,templates]
menu:
  docs:
    parent: templates
    weight: 130
weight: 130
aliases: [/functions/get]
toc: true
---
@y
---
title: 独自のショートコードテンプレート生成
linkTitle: ショートコードテンプレート
description: You can extend Hugo's embedded shortcodes by creating your own using the same templating syntax as that for single and list pages.
categories: [templates]
keywords: [shortcodes,templates]
menu:
  docs:
    parent: templates
    weight: 130
weight: 130
aliases: [/functions/get]
toc: true
---
@z

@x
Shortcodes are a means to consolidate templating into small, reusable snippets that you can embed directly inside your content.
@y
Shortcodes are a means to consolidate templating into small, reusable snippets that you can embed directly inside your content.
@z

@x
{{% note %}}
Hugo also ships with embedded shortcodes for common use cases. (See [Content Management: Shortcodes](/content-management/shortcodes/).)
{{% /note %}}
@y
{{% note %}}
Hugo also ships with embedded shortcodes for common use cases. (See [Content Management: Shortcodes](/content-management/shortcodes/).)
{{% /note %}}
@z

@x
## Create custom shortcodes
@y
## Create custom shortcodes
@z

@x
Hugo's embedded shortcodes cover many common, but not all, use cases. Luckily, Hugo provides the ability to easily create custom shortcodes to meet your website's needs.
@y
Hugo's embedded shortcodes cover many common, but not all, use cases. Luckily, Hugo provides the ability to easily create custom shortcodes to meet your website's needs.
@z

@x
{{< youtube Eu4zSaKOY4A >}}
@y
{{< youtube Eu4zSaKOY4A >}}
@z

@x
### File location
@y
### File location
@z

@x
To create a shortcode, place an HTML template in the `layouts/shortcodes` directory of your [source organization]. Consider the file name carefully since the shortcode name will mirror that of the file but without the `.html` extension. For example, `layouts/shortcodes/myshortcode.html` will be called with either `{{</* myshortcode /*/>}}` or `{{%/* myshortcode /*/%}}`.
@y
To create a shortcode, place an HTML template in the `layouts/shortcodes` directory of your [source organization]. Consider the file name carefully since the shortcode name will mirror that of the file but without the `.html` extension. For example, `layouts/shortcodes/myshortcode.html` will be called with either `{{</* myshortcode /*/>}}` or `{{%/* myshortcode /*/%}}`.
@z

@x
You can organize your shortcodes in subdirectories, e.g. in `layouts/shortcodes/boxes`. These shortcodes would then be accessible with their relative path, e.g:
@y
You can organize your shortcodes in subdirectories, e.g. in `layouts/shortcodes/boxes`. These shortcodes would then be accessible with their relative path, e.g:
@z

@x
```go-html-template
{{</* boxes/square */>}}
```
@y
```go-html-template
{{</* boxes/square */>}}
```
@z

@x
Note the forward slash.
@y
Note the forward slash.
@z

@x
### Shortcode template lookup order
@y
### Shortcode template lookup order
@z

@x
Shortcode templates have a simple [lookup order]:
@y
Shortcode templates have a simple [lookup order]:
@z

@x
1. `/layouts/shortcodes/<SHORTCODE>.html`
2. `/themes/<THEME>/layouts/shortcodes/<SHORTCODE>.html`
@y
1. `/layouts/shortcodes/<SHORTCODE>.html`
2. `/themes/<THEME>/layouts/shortcodes/<SHORTCODE>.html`
@z

@x
### Positional vs. named parameters
@y
### Positional vs. named parameters
@z

@x
You can create shortcodes using the following types of parameters:
@y
You can create shortcodes using the following types of parameters:
@z

@x
* Positional parameters
* Named parameters
* Positional *or* named parameters (i.e, "flexible")
@y
* Positional parameters
* Named parameters
* Positional *or* named parameters (i.e, "flexible")
@z

@x
In shortcodes with positional parameters, the order of the parameters is important. If a shortcode has a single required value (e.g., the `youtube` shortcode below), positional parameters work very well and require less typing from content authors.
@y
In shortcodes with positional parameters, the order of the parameters is important. If a shortcode has a single required value (e.g., the `youtube` shortcode below), positional parameters work very well and require less typing from content authors.
@z

@x
For more complex layouts with multiple or optional parameters, named parameters work best. While less terse, named parameters require less memorization from a content author and can be added in a shortcode declaration in any order.
@y
For more complex layouts with multiple or optional parameters, named parameters work best. While less terse, named parameters require less memorization from a content author and can be added in a shortcode declaration in any order.
@z

@x
Allowing both types of parameters (i.e., a "flexible" shortcode) is useful for complex layouts where you want to set default values that can be easily overridden by users.
@y
Allowing both types of parameters (i.e., a "flexible" shortcode) is useful for complex layouts where you want to set default values that can be easily overridden by users.
@z

@x
### Access parameters
@y
### Access parameters
@z

@x
All shortcode parameters can be accessed via the `.Get` method. Whether you pass a key (i.e., string) or a number to the `.Get` method depends on whether you are accessing a named or positional parameter, respectively.
@y
All shortcode parameters can be accessed via the `.Get` method. Whether you pass a key (i.e., string) or a number to the `.Get` method depends on whether you are accessing a named or positional parameter, respectively.
@z

@x
To access a parameter by name, use the `.Get` method followed by the named parameter as a quoted string:
@y
To access a parameter by name, use the `.Get` method followed by the named parameter as a quoted string:
@z

@x
```go-html-template
{{ .Get "class" }}
```
@y
```go-html-template
{{ .Get "class" }}
```
@z

@x
To access a parameter by position, use the `.Get` followed by a numeric position, keeping in mind that positional parameters are zero-indexed:
@y
To access a parameter by position, use the `.Get` followed by a numeric position, keeping in mind that positional parameters are zero-indexed:
@z

@x
```go-html-template
{{ .Get 0 }}
```
@y
```go-html-template
{{ .Get 0 }}
```
@z

@x
For the second position, you would just use:
@y
For the second position, you would just use:
@z

@x
```go-html-template
{{ .Get 1 }}
```
@y
```go-html-template
{{ .Get 1 }}
```
@z

@x
`with` is great when the output depends on a parameter being set:
@y
`with` is great when the output depends on a parameter being set:
@z

@x
```go-html-template
{{ with .Get "class" }} class="{{ . }}"{{ end }}
```
@y
```go-html-template
{{ with .Get "class" }} class="{{ . }}"{{ end }}
```
@z

@x
`.Get` can also be used to check if a parameter has been provided. This is
most helpful when the condition depends on either of the values, or both:
@y
`.Get` can also be used to check if a parameter has been provided. This is
most helpful when the condition depends on either of the values, or both:
@z

@x
```go-html-template
{{ if or (.Get "title") (.Get "alt") }} alt="{{ with .Get "alt" }}{{ . }}{{ else }}{{ .Get "title" }}{{ end }}"{{ end }}
```
@y
```go-html-template
{{ if or (.Get "title") (.Get "alt") }} alt="{{ with .Get "alt" }}{{ . }}{{ else }}{{ .Get "title" }}{{ end }}"{{ end }}
```
@z

@x
#### `.Inner`
@y
#### `.Inner`
@z

@x
If a closing shortcode is used, the `.Inner` variable will be populated with the content between the opening and closing shortcodes. To check if `.Inner` contains anything other than whitespace:
@y
If a closing shortcode is used, the `.Inner` variable will be populated with the content between the opening and closing shortcodes. To check if `.Inner` contains anything other than whitespace:
@z

@x
```go-html-template
{{ if strings.ContainsNonSpace .Inner }}
  Inner is not empty
{{ end }}
```
@y
```go-html-template
{{ if strings.ContainsNonSpace .Inner }}
  Inner is not empty
{{ end }}
```
@z

@x
A shortcode with content declared via the `.Inner` variable can also be declared without the content and without the closing tag by using the self-closing syntax:
@y
A shortcode with content declared via the `.Inner` variable can also be declared without the content and without the closing tag by using the self-closing syntax:
@z

@x
```go-html-template
{{</* innershortcode /*/>}}
```
@y
```go-html-template
{{</* innershortcode /*/>}}
```
@z

@x
{{% note %}}
Any shortcode that refers to `.Inner` must be closed or self-closed.
@y
{{% note %}}
Any shortcode that refers to `.Inner` must be closed or self-closed.
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
#### `.Params`
@y
#### `.Params`
@z

@x
The `.Params` variable in shortcodes contains the list parameters passed to shortcode for more complicated use cases. You can also access higher-scoped parameters with the following logic:
@y
The `.Params` variable in shortcodes contains the list parameters passed to shortcode for more complicated use cases. You can also access higher-scoped parameters with the following logic:
@z

@x
$.Params
: these are the parameters passed directly into the shortcode declaration (e.g., a YouTube video ID)
@y
$.Params
: these are the parameters passed directly into the shortcode declaration (e.g., a YouTube video ID)
@z

@x
$.Page.Params
: refers to the page's parameters; the "page" in this case refers to the content file in which the shortcode is declared (e.g., a `shortcode_color` field in a content's front matter could be accessed via `$.Page.Params.shortcode_color`).
@y
$.Page.Params
: refers to the page's parameters; the "page" in this case refers to the content file in which the shortcode is declared (e.g., a `shortcode_color` field in a content's front matter could be accessed via `$.Page.Params.shortcode_color`).
@z

@x
$.Page.Site.Params
: refers to parameters defined in your site configuration.
@y
$.Page.Site.Params
: refers to parameters defined in your site configuration.
@z

@x
#### `.IsNamedParams`
@y
#### `.IsNamedParams`
@z

@x
The `.IsNamedParams` method checks whether the shortcode declaration uses named parameters and returns a boolean value.
@y
The `.IsNamedParams` method checks whether the shortcode declaration uses named parameters and returns a boolean value.
@z

@x
For example, you could create an `image` shortcode that can take either a `src` named parameter or the first positional parameter, depending on the preference of the content's author. Let's assume the `image` shortcode is called as follows:
@y
For example, you could create an `image` shortcode that can take either a `src` named parameter or the first positional parameter, depending on the preference of the content's author. Let's assume the `image` shortcode is called as follows:
@z

@x
```go-html-template
{{</* image src="images/my-image.jpg" */>}}
```
@y
```go-html-template
{{</* image src="images/my-image.jpg" */>}}
```
@z

@x
You could then include the following as part of your shortcode templating:
@y
You could then include the following as part of your shortcode templating:
@z

@x
```go-html-template
{{ if .IsNamedParams }}
<img src="{{ .Get "src" }}" alt="">
{{ else }}
<img src="{{ .Get 0 }}" alt="">
{{ end }}
```
@y
```go-html-template
{{ if .IsNamedParams }}
<img src="{{ .Get "src" }}" alt="">
{{ else }}
<img src="{{ .Get 0 }}" alt="">
{{ end }}
```
@z

@x
See the [example Vimeo shortcode][vimeoexample] below for `.IsNamedParams` in action.
@y
See the [example Vimeo shortcode][vimeoexample] below for `.IsNamedParams` in action.
@z

@x
{{% note %}}
While you can create shortcode templates that accept both positional and named parameters, you *cannot* declare shortcodes in content with a mix of parameter types. Therefore, a shortcode declared like `{{</* image src="images/my-image.jpg" "This is my alt text" */>}}` will return an error.
{{% /note %}}
@y
{{% note %}}
While you can create shortcode templates that accept both positional and named parameters, you *cannot* declare shortcodes in content with a mix of parameter types. Therefore, a shortcode declared like `{{</* image src="images/my-image.jpg" "This is my alt text" */>}}` will return an error.
{{% /note %}}
@z

@x
You can also use the variable `.Page` to access all the normal [page variables][pagevars].
@y
You can also use the variable `.Page` to access all the normal [page variables][pagevars].
@z

@x
Shortcodes can also be nested. In a nested shortcode, you can access the parent shortcode context with the [`.Parent`] shortcode method. This can be very useful for inheritance of common shortcode parameters from the root.
@y
Shortcodes can also be nested. In a nested shortcode, you can access the parent shortcode context with the [`.Parent`] shortcode method. This can be very useful for inheritance of common shortcode parameters from the root.
@z

@x
### Checking for existence
@y
### Checking for existence
@z

@x
You can check if a specific shortcode is used on a page by calling `.HasShortcode` in that page template, providing the name of the shortcode. This is sometimes useful when you want to include specific scripts or styles in the header that are only used by that shortcode.
@y
You can check if a specific shortcode is used on a page by calling `.HasShortcode` in that page template, providing the name of the shortcode. This is sometimes useful when you want to include specific scripts or styles in the header that are only used by that shortcode.
@z

@x
## Custom shortcode examples
@y
## Custom shortcode examples
@z

@x
The following are examples of the different types of shortcodes you can create via shortcode template files in `/layouts/shortcodes`.
@y
The following are examples of the different types of shortcodes you can create via shortcode template files in `/layouts/shortcodes`.
@z

@x
### Single-word example: `year`
@y
### Single-word example: `year`
@z

@x
Let's assume you would like to keep mentions of your copyright year current in your content files without having to continually review your Markdown. Your goal is to be able to call the shortcode as follows:
@y
Let's assume you would like to keep mentions of your copyright year current in your content files without having to continually review your Markdown. Your goal is to be able to call the shortcode as follows:
@z

@x
```go-html-template
{{</* year */>}}
```
@y
```go-html-template
{{</* year */>}}
```
@z

@x
{{< code file=layouts/shortcodes/year.html >}}
{{ now.Format "2006" }}
{{< /code >}}
@y
{{< code file=layouts/shortcodes/year.html >}}
{{ now.Format "2006" }}
{{< /code >}}
@z

@x
### Single positional example: `youtube`
@y
### Single positional example: `youtube`
@z

@x
Embedded videos are a common addition to Markdown content that can quickly become unsightly. The following is the code used by [Hugo's built-in YouTube shortcode][youtubeshortcode]:
@y
Embedded videos are a common addition to Markdown content that can quickly become unsightly. The following is the code used by [Hugo's built-in YouTube shortcode][youtubeshortcode]:
@z

@x
```go-html-template
{{</* youtube 09jf3ow9jfw */>}}
```
@y
```go-html-template
{{</* youtube 09jf3ow9jfw */>}}
```
@z

@x
Would load the template at `/layouts/shortcodes/youtube.html`:
@y
Would load the template at `/layouts/shortcodes/youtube.html`:
@z

@x
{{< code file=layouts/shortcodes/youtube.html >}}
<div class="embed video-player">
<iframe class="youtube-player" type="text/html" width="640" height="385" src="https://www.youtube.com/embed/{{ index .Params 0 }}" allowfullscreen frameborder="0">
</iframe>
</div>
{{< /code >}}
@y
{{< code file=layouts/shortcodes/youtube.html >}}
<div class="embed video-player">
<iframe class="youtube-player" type="text/html" width="640" height="385" src="https://www.youtube.com/embed/{{ index .Params 0 }}" allowfullscreen frameborder="0">
</iframe>
</div>
{{< /code >}}
@z

@x
{{< code file=youtube-embed.html >}}
<div class="embed video-player">
    <iframe class="youtube-player" type="text/html"
        width="640" height="385"
        src="https://www.youtube.com/embed/09jf3ow9jfw"
        allowfullscreen frameborder="0">
    </iframe>
</div>
{{< /code >}}
@y
{{< code file=youtube-embed.html >}}
<div class="embed video-player">
    <iframe class="youtube-player" type="text/html"
        width="640" height="385"
        src="https://www.youtube.com/embed/09jf3ow9jfw"
        allowfullscreen frameborder="0">
    </iframe>
</div>
{{< /code >}}
@z

@x
### Single named example: `image`
@y
### Single named example: `image`
@z

@x
Let's say you want to create your own `img` shortcode rather than use Hugo's built-in [`figure` shortcode][figure]. Your goal is to be able to call the shortcode as follows in your content files:
@y
Let's say you want to create your own `img` shortcode rather than use Hugo's built-in [`figure` shortcode][figure]. Your goal is to be able to call the shortcode as follows in your content files:
@z

@x
{{< code file=content-image.md >}}
{{</* img src="/media/spf13.jpg" title="Steve Francia" */>}}
{{< /code >}}
@y
{{< code file=content-image.md >}}
{{</* img src="/media/spf13.jpg" title="Steve Francia" */>}}
{{< /code >}}
@z

@x
You have created the shortcode at `/layouts/shortcodes/img.html`, which loads the following shortcode template:
@y
You have created the shortcode at `/layouts/shortcodes/img.html`, which loads the following shortcode template:
@z

@x
{{< code file=layouts/shortcodes/img.html >}}
<!-- image -->
<figure {{ with .Get "class" }}class="{{ . }}"{{ end }}>
  {{ with .Get "link" }}<a href="{{ . }}">{{ end }}
    <img src="{{ .Get "src" }}" {{ if or (.Get "alt") (.Get "caption") }}alt="{{ with .Get "alt" }}{{ . }}{{ else }}{{ .Get "caption" }}{{ end }}"{{ end }} />
    {{ if .Get "link" }}</a>{{ end }}
    {{ if or (or (.Get "title") (.Get "caption")) (.Get "attr") }}
      <figcaption>{{ if isset .Params "title" }}
        <h4>{{ .Get "title" }}</h4>{{ end }}
        {{ if or (.Get "caption") (.Get "attr") }}<p>
        {{ .Get "caption" }}
        {{ with .Get "attrlink" }}<a href="{{ . }}"> {{ end }}
          {{ .Get "attr" }}
        {{ if .Get "attrlink" }}</a> {{ end }}
        </p> {{ end }}
      </figcaption>
  {{ end }}
</figure>
<!-- image -->
{{< /code >}}
@y
{{< code file=layouts/shortcodes/img.html >}}
<!-- image -->
<figure {{ with .Get "class" }}class="{{ . }}"{{ end }}>
  {{ with .Get "link" }}<a href="{{ . }}">{{ end }}
    <img src="{{ .Get "src" }}" {{ if or (.Get "alt") (.Get "caption") }}alt="{{ with .Get "alt" }}{{ . }}{{ else }}{{ .Get "caption" }}{{ end }}"{{ end }} />
    {{ if .Get "link" }}</a>{{ end }}
    {{ if or (or (.Get "title") (.Get "caption")) (.Get "attr") }}
      <figcaption>{{ if isset .Params "title" }}
        <h4>{{ .Get "title" }}</h4>{{ end }}
        {{ if or (.Get "caption") (.Get "attr") }}<p>
        {{ .Get "caption" }}
        {{ with .Get "attrlink" }}<a href="{{ . }}"> {{ end }}
          {{ .Get "attr" }}
        {{ if .Get "attrlink" }}</a> {{ end }}
        </p> {{ end }}
      </figcaption>
  {{ end }}
</figure>
<!-- image -->
{{< /code >}}
@z

@x
Would be rendered as:
@y
Would be rendered as:
@z

@x
{{< code file=img-output.html >}}
<figure>
  <img src="/media/spf13.jpg"  />
  <figcaption>
      <h4>Steve Francia</h4>
  </figcaption>
</figure>
{{< /code >}}
@y
{{< code file=img-output.html >}}
<figure>
  <img src="/media/spf13.jpg"  />
  <figcaption>
      <h4>Steve Francia</h4>
  </figcaption>
</figure>
{{< /code >}}
@z

@x
### Single flexible example: `vimeo`
@y
### Single flexible example: `vimeo`
@z

@x
```go-html-template
{{</* vimeo 49718712 */>}}
{{</* vimeo id="49718712" class="flex-video" */>}}
```
@y
```go-html-template
{{</* vimeo 49718712 */>}}
{{</* vimeo id="49718712" class="flex-video" */>}}
```
@z

@x
Would load the template found at `/layouts/shortcodes/vimeo.html`:
@y
Would load the template found at `/layouts/shortcodes/vimeo.html`:
@z

@x
{{< code file=layouts/shortcodes/vimeo.html >}}
{{ if .IsNamedParams }}
  <div class="{{ if .Get "class" }}{{ .Get "class" }}{{ else }}vimeo-container{{ end }}">
    <iframe src="https://player.vimeo.com/video/{{ .Get "id" }}" allowfullscreen></iframe>
  </div>
{{ else }}
  <div class="{{ if len .Params | eq 2 }}{{ .Get 1 }}{{ else }}vimeo-container{{ end }}">
    <iframe src="https://player.vimeo.com/video/{{ .Get 0 }}" allowfullscreen></iframe>
  </div>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/shortcodes/vimeo.html >}}
{{ if .IsNamedParams }}
  <div class="{{ if .Get "class" }}{{ .Get "class" }}{{ else }}vimeo-container{{ end }}">
    <iframe src="https://player.vimeo.com/video/{{ .Get "id" }}" allowfullscreen></iframe>
  </div>
{{ else }}
  <div class="{{ if len .Params | eq 2 }}{{ .Get 1 }}{{ else }}vimeo-container{{ end }}">
    <iframe src="https://player.vimeo.com/video/{{ .Get 0 }}" allowfullscreen></iframe>
  </div>
{{ end }}
{{< /code >}}
@z

@x
Would be rendered as:
@y
Would be rendered as:
@z

@x
{{< code file=vimeo-iframes.html >}}
<div class="vimeo-container">
  <iframe src="https://player.vimeo.com/video/49718712" allowfullscreen></iframe>
</div>
<div class="flex-video">
  <iframe src="https://player.vimeo.com/video/49718712" allowfullscreen></iframe>
</div>
{{< /code >}}
@y
{{< code file=vimeo-iframes.html >}}
<div class="vimeo-container">
  <iframe src="https://player.vimeo.com/video/49718712" allowfullscreen></iframe>
</div>
<div class="flex-video">
  <iframe src="https://player.vimeo.com/video/49718712" allowfullscreen></iframe>
</div>
{{< /code >}}
@z

@x
### Paired example: `highlight`
@y
### Paired example: `highlight`
@z

@x
The following is taken from `highlight`, which is a [built-in shortcode] that ships with Hugo.
@y
The following is taken from `highlight`, which is a [built-in shortcode] that ships with Hugo.
@z

@x
{{< code file=highlight-example.md >}}
{{</* highlight html */>}}
  <html>
    <body> This HTML </body>
  </html>
{{</* /highlight */>}}
{{< /code >}}
@y
{{< code file=highlight-example.md >}}
{{</* highlight html */>}}
  <html>
    <body> This HTML </body>
  </html>
{{</* /highlight */>}}
{{< /code >}}
@z

@x
The template for the `highlight` shortcode uses the following code, which is already included in Hugo:
@y
The template for the `highlight` shortcode uses the following code, which is already included in Hugo:
@z

@x
```go-html-template
{{ .Get 0 | highlight .Inner }}
```
@y
```go-html-template
{{ .Get 0 | highlight .Inner }}
```
@z

@x
The rendered output of the HTML example code block will be as follows:
@y
The rendered output of the HTML example code block will be as follows:
@z

@x
{{< code file=syntax-highlighted.html >}}
<div class="highlight" style="background: #272822"><pre style="line-height: 125%"><span style="color: #f92672">&lt;html&gt;</span>
    <span style="color: #f92672">&lt;body&gt;</span> This HTML <span style="color: #f92672">&lt;/body&gt;</span>
<span style="color: #f92672">&lt;/html&gt;</span>
</pre></div>
{{< /code >}}
@y
{{< code file=syntax-highlighted.html >}}
<div class="highlight" style="background: #272822"><pre style="line-height: 125%"><span style="color: #f92672">&lt;html&gt;</span>
    <span style="color: #f92672">&lt;body&gt;</span> This HTML <span style="color: #f92672">&lt;/body&gt;</span>
<span style="color: #f92672">&lt;/html&gt;</span>
</pre></div>
{{< /code >}}
@z

@x
### Nested shortcode: image gallery
@y
### Nested shortcode: image gallery
@z

@x
Hugo's [`.Parent`] shortcode method provides access to the parent shortcode context when the shortcode in question is called within the context of a *parent* shortcode. This provides an inheritance model for common shortcode parameters.
@y
Hugo's [`.Parent`] shortcode method provides access to the parent shortcode context when the shortcode in question is called within the context of a *parent* shortcode. This provides an inheritance model for common shortcode parameters.
@z

@x
The following example is contrived but demonstrates the concept. Assume you have a `gallery` shortcode that expects one named `class` parameter:
@y
The following example is contrived but demonstrates the concept. Assume you have a `gallery` shortcode that expects one named `class` parameter:
@z

@x
{{< code file=layouts/shortcodes/gallery.html >}}
<div class="{{ .Get "class" }}">
  {{ .Inner }}
</div>
{{< /code >}}
@y
{{< code file=layouts/shortcodes/gallery.html >}}
<div class="{{ .Get "class" }}">
  {{ .Inner }}
</div>
{{< /code >}}
@z

@x
You also have an `img` shortcode with a single named `src` parameter that you want to call inside of `gallery` and other shortcodes, so that the parent defines the context of each `img`:
@y
You also have an `img` shortcode with a single named `src` parameter that you want to call inside of `gallery` and other shortcodes, so that the parent defines the context of each `img`:
@z

@x
{{< code file=layouts/shortcodes/img.html >}}
{{- $src := .Get "src" -}}
{{- with .Parent -}}
  <img src="{{ $src }}" class="{{ .Get "class" }}-image">
{{- else -}}
  <img src="{{ $src }}">
{{- end -}}
{{< /code >}}
@y
{{< code file=layouts/shortcodes/img.html >}}
{{- $src := .Get "src" -}}
{{- with .Parent -}}
  <img src="{{ $src }}" class="{{ .Get "class" }}-image">
{{- else -}}
  <img src="{{ $src }}">
{{- end -}}
{{< /code >}}
@z

@x
You can then call your shortcode in your content as follows:
@y
You can then call your shortcode in your content as follows:
@z

@x
```go-html-template
{{</* gallery class="content-gallery" */>}}
  {{</* img src="/images/one.jpg" */>}}
  {{</* img src="/images/two.jpg" */>}}
{{</* /gallery */>}}
{{</* img src="/images/three.jpg" */>}}
```
@y
```go-html-template
{{</* gallery class="content-gallery" */>}}
  {{</* img src="/images/one.jpg" */>}}
  {{</* img src="/images/two.jpg" */>}}
{{</* /gallery */>}}
{{</* img src="/images/three.jpg" */>}}
```
@z

@x
This will output the following HTML. Note how the first two `img` shortcodes inherit the `class` value of `content-gallery` set with the call to the parent `gallery`, whereas the third `img` only uses `src`:
@y
This will output the following HTML. Note how the first two `img` shortcodes inherit the `class` value of `content-gallery` set with the call to the parent `gallery`, whereas the third `img` only uses `src`:
@z

@x
```html
<div class="content-gallery">
    <img src="/images/one.jpg" class="content-gallery-image">
    <img src="/images/two.jpg" class="content-gallery-image">
</div>
<img src="/images/three.jpg">
```
@y
```html
<div class="content-gallery">
    <img src="/images/one.jpg" class="content-gallery-image">
    <img src="/images/two.jpg" class="content-gallery-image">
</div>
<img src="/images/three.jpg">
```
@z

@x
## Error handling in shortcodes
@y
## Error handling in shortcodes
@z

@x
Use the [`errorf`] template function with the [`Name`] and [`Position`] shortcode methods to generate useful error messages:
@y
Use the [`errorf`] template function with the [`Name`] and [`Position`] shortcode methods to generate useful error messages:
@z

@x
{{< code file=layouts/shortcodes/greeting.html >}}
{{ with .Get "name" }}
  <p>Hello, my name is {{ . }}.</p>
{{ else }}
  {{ errorf "The %q shortcode requires a 'name' parameter. See %s" .Name .Position }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/shortcodes/greeting.html >}}
{{ with .Get "name" }}
  <p>Hello, my name is {{ . }}.</p>
{{ else }}
  {{ errorf "The %q shortcode requires a 'name' parameter. See %s" .Name .Position }}
{{ end }}
{{< /code >}}
@z

@x
When the above fails, you will see an `ERROR` message such as:
@y
When the above fails, you will see an `ERROR` message such as:
@z

@x
```sh
ERROR The "greeting" shortcode requires a 'name' parameter. See "/home/user/project/content/_index.md:12:1"
```
@y
```sh
ERROR The "greeting" shortcode requires a 'name' parameter. See "/home/user/project/content/_index.md:12:1"
```
@z

@x
## Inline shortcodes
@y
## Inline shortcodes
@z

@x
You can also implement your shortcodes inline -- e.g. where you use them in the content file. This can be useful for scripting that you only need in one place.
@y
You can also implement your shortcodes inline -- e.g. where you use them in the content file. This can be useful for scripting that you only need in one place.
@z

@x
This feature is disabled by default, but can be enabled in your site configuration:
@y
This feature is disabled by default, but can be enabled in your site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[security]
enableInlineShortcodes = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[security]
enableInlineShortcodes = true
{{< /code-toggle >}}
@z

@x
It is disabled by default for security reasons. The security model used by Hugo's template handling assumes that template authors are trusted, but that the content files are not, so the templates are injection-safe from malformed input data. But in most situations you have full control over the content, too, and then `enableInlineShortcodes = true` would be considered safe. But it's something to be aware of: It allows ad-hoc [Go Text templates](https://golang.org/pkg/text/template/) to be executed from the content files.
@y
It is disabled by default for security reasons. The security model used by Hugo's template handling assumes that template authors are trusted, but that the content files are not, so the templates are injection-safe from malformed input data. But in most situations you have full control over the content, too, and then `enableInlineShortcodes = true` would be considered safe. But it's something to be aware of: It allows ad-hoc [Go Text templates](https://golang.org/pkg/text/template/) to be executed from the content files.
@z

@x
And once enabled, you can do this in your content files:
@y
And once enabled, you can do this in your content files:
@z

@x
 ```go-html-template
 {{</* time.inline */>}}{{ now }}{{</* /time.inline */>}}
 ```
@y
 ```go-html-template
 {{</* time.inline */>}}{{ now }}{{</* /time.inline */>}}
 ```
@z

@x
The above will print the current date and time.
@y
The above will print the current date and time.
@z

@x
 Note that an inline shortcode's inner content is parsed and executed as a Go text template with the same context as a regular shortcode template.
@y
 Note that an inline shortcode's inner content is parsed and executed as a Go text template with the same context as a regular shortcode template.
@z

@x
This means that the current page can be accessed via `.Page.Title` etc. This also means that there are no concept of "nested inline shortcodes".
@y
This means that the current page can be accessed via `.Page.Title` etc. This also means that there are no concept of "nested inline shortcodes".
@z

@x
The same inline shortcode can be reused later in the same content file, with different parameters if needed, using the self-closing syntax:
@y
The same inline shortcode can be reused later in the same content file, with different parameters if needed, using the self-closing syntax:
@z

@x
 ```go-html-template
{{</* time.inline /*/>}}
```
@y
 ```go-html-template
{{</* time.inline /*/>}}
```
@z

@x
[`.Parent`]: /methods/shortcode/parent/
[`errorf`]: /functions/fmt/errorf/
[`Name`]: /methods/shortcode/name/
[`Position`]: /methods/shortcode/position/
[built-in shortcode]: /content-management/shortcodes/
[figure]: /content-management/shortcodes/#figure
[lookup order]: /templates/lookup-order/
[pagevars]: /methods/page/
[source organization]: /getting-started/directory-structure/
[vimeoexample]: #single-flexible-example-vimeo
[youtubeshortcode]: /content-management/shortcodes/#youtube
@y
[`.Parent`]: /methods/shortcode/parent/
[`errorf`]: /functions/fmt/errorf/
[`Name`]: /methods/shortcode/name/
[`Position`]: /methods/shortcode/position/
[built-in shortcode]: /content-management/shortcodes/
[figure]: /content-management/shortcodes/#figure
[lookup order]: /templates/lookup-order/
[pagevars]: /methods/page/
[source organization]: /getting-started/directory-structure/
[vimeoexample]: #single-flexible-example-vimeo
[youtubeshortcode]: /content-management/shortcodes/#youtube
@z
