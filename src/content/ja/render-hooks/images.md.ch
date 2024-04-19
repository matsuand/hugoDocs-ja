%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Image render hooks
linkTitle: Images
description: Create an image render to hook override the rendering of Markdown images to HTML.
categories: [render hooks]
keywords: []
menu:
  docs:
    parent: render-hooks
    weight: 50
weight: 50
toc: true
---
@y
---
title: Image render hooks
linkTitle: Images
description: Create an image render to hook override the rendering of Markdown images to HTML.
categories: [render hooks]
keywords: []
menu:
  docs:
    parent: render-hooks
    weight: 50
weight: 50
toc: true
---
@z

@x
## Markdown
@y
## Markdown
@z

@x
A Markdown image has three components: the image description, the image destination, and optionally the image title.
@y
A Markdown image has three components: the image description, the image destination, and optionally the image title.
@z

@x
```text
![white kitten](/images/kitten.jpg "A kitten!")
  ------------  ------------------  ---------
  description      destination        title
```
@y
```text
![white kitten](/images/kitten.jpg "A kitten!")
  ------------  ------------------  ---------
  description      destination        title
```
@z

@x
These components are passed into the render hook [context] as shown below.
@y
These components are passed into the render hook [context] as shown below.
@z

@x
[context]: /getting-started/glossary/#context
@y
[context]: /getting-started/glossary/#context
@z

@x
## Context
@y
## Context
@z

@x
Image render hook templates receive the following context:
@y
Image render hook templates receive the following context:
@z

@x
###### Attributes
@y
###### Attributes
@z

@x
(`map`) The Markdown attributes, available if you configure your site as follows:
@y
(`map`) The Markdown attributes, available if you configure your site as follows:
@z

@x
{{< code-toggle file=hugo >}}
[markup.goldmark.parser]
wrapStandAloneImageWithinParagraph = false
[markup.goldmark.parser.attribute]
block = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[markup.goldmark.parser]
wrapStandAloneImageWithinParagraph = false
[markup.goldmark.parser.attribute]
block = true
{{< /code-toggle >}}
@z

@x
###### Destination
@y
###### Destination
@z

@x
(`string`) The image destination.
@y
(`string`) The image destination.
@z

@x
###### IsBlock
@y
###### IsBlock
@z

@x
(`bool`) Returns true if a standalone image is not wrapped within a paragraph element.
@y
(`bool`) Returns true if a standalone image is not wrapped within a paragraph element.
@z

@x
###### Ordinal
@y
###### Ordinal
@z

@x
(`int`) The zero-based ordinal of the image on the page.
@y
(`int`) The zero-based ordinal of the image on the page.
@z

@x
###### Page
@y
###### Page
@z

@x
(`page`) A reference to the current page.
@y
(`page`) A reference to the current page.
@z

@x
###### PageInner
@y
###### PageInner
@z

@x
{{< new-in 0.125.0 >}}
@y
{{< new-in 0.125.0 >}}
@z

@x
(`page`) A reference to a page nested via the [`RenderShortcodes`] method. [See details](#pageinner-details).
@y
(`page`) A reference to a page nested via the [`RenderShortcodes`] method. [See details](#pageinner-details).
@z

@x
[`RenderShortcodes`]: /methods/page/rendershortcodes
@y
[`RenderShortcodes`]: /methods/page/rendershortcodes
@z

@x
###### PlainText
@y
###### PlainText
@z

@x
(`string`) The image description as plain text.
@y
(`string`) The image description as plain text.
@z

@x
###### Text
@y
###### Text
@z

@x
(`string`) The image description.
@y
(`string`) The image description.
@z

@x
###### Title
@y
###### Title
@z

@x
(`string`) The image title.
@y
(`string`) The image title.
@z

@x
## Examples
@y
## Examples
@z

@x
{{% note %}}
With inline elements such as images and links, remove leading and trailing whitespace using the `{{‑ ‑}}` delimiter notation to prevent whitespace between adjacent inline elements and text.
{{% /note %}}
@y
{{% note %}}
With inline elements such as images and links, remove leading and trailing whitespace using the `{{‑ ‑}}` delimiter notation to prevent whitespace between adjacent inline elements and text.
{{% /note %}}
@z

@x
In its default configuration, Hugo renders Markdown images according to the [CommonMark specification]. To create a render hook that does the same thing:
@y
In its default configuration, Hugo renders Markdown images according to the [CommonMark specification]. To create a render hook that does the same thing:
@z

@x
[CommonMark specification]: https://spec.commonmark.org/current/
@y
[CommonMark specification]: https://spec.commonmark.org/current/
@z

@x
{{< code file=layouts/_default/_markup/render-image.html copy=true >}}
<img src="{{ .Destination | safeURL }}"
  {{- with .Text }} alt="{{ . }}"{{ end -}}
  {{- with .Title }} title="{{ . }}"{{ end -}}
>
{{- /* chomp trailing newline */ -}}
{{< /code >}}
@y
{{< code file=layouts/_default/_markup/render-image.html copy=true >}}
<img src="{{ .Destination | safeURL }}"
  {{- with .Text }} alt="{{ . }}"{{ end -}}
  {{- with .Title }} title="{{ . }}"{{ end -}}
>
{{- /* chomp trailing newline */ -}}
{{< /code >}}
@z

@x
To render standalone images within `figure` elements:
@y
To render standalone images within `figure` elements:
@z

@x
{{< code file=layouts/_default/_markup/render-image.html copy=true >}}
{{- if .IsBlock -}}
  <figure>
    <img src="{{ .Destination | safeURL }}"
      {{- with .Text }} alt="{{ . }}"{{ end -}}
    >
    <figcaption>{{ .Title }}</figcaption>
  </figure>
{{- else -}}
  <img src="{{ .Destination | safeURL }}"
    {{- with .Text }} alt="{{ . }}"{{ end -}}
    {{- with .Title }} title="{{ . }}"{{ end -}}
  >
{{- end -}}
{{< /code >}}
@y
{{< code file=layouts/_default/_markup/render-image.html copy=true >}}
{{- if .IsBlock -}}
  <figure>
    <img src="{{ .Destination | safeURL }}"
      {{- with .Text }} alt="{{ . }}"{{ end -}}
    >
    <figcaption>{{ .Title }}</figcaption>
  </figure>
{{- else -}}
  <img src="{{ .Destination | safeURL }}"
    {{- with .Text }} alt="{{ . }}"{{ end -}}
    {{- with .Title }} title="{{ . }}"{{ end -}}
  >
{{- end -}}
{{< /code >}}
@z

@x
Note that the above requires the following site configuration:
@y
Note that the above requires the following site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[markup.goldmark.parser]
wrapStandAloneImageWithinParagraph = false
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[markup.goldmark.parser]
wrapStandAloneImageWithinParagraph = false
{{< /code-toggle >}}
@z

@x
## Default
@y
## Default
@z

@x
{{< new-in 0.123.0 >}}
@y
{{< new-in 0.123.0 >}}
@z

@x
Hugo includes an [embedded image render hook] to resolve Markdown image destinations. Disabled by default, you can enable it in your site configuration:
@y
Hugo includes an [embedded image render hook] to resolve Markdown image destinations. Disabled by default, you can enable it in your site configuration:
@z

@x
[embedded image render hook]: {{% eturl render-image %}}
@y
[embedded image render hook]: {{% eturl render-image %}}
@z

@x
{{< code-toggle file=hugo >}}
[markup.goldmark.renderHooks.image]
enableDefault = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[markup.goldmark.renderHooks.image]
enableDefault = true
{{< /code-toggle >}}
@z

@x
A custom render hook, even when provided by a theme or module, will override the embedded render hook regardless of the configuration setting above.
@y
A custom render hook, even when provided by a theme or module, will override the embedded render hook regardless of the configuration setting above.
@z

@x
{{% note %}}
The embedded image render hook is automatically enabled for multilingual single-host sites if [duplication of shared page resources] is disabled. This is the default configuration for multilingual single-host sites.
@y
{{% note %}}
The embedded image render hook is automatically enabled for multilingual single-host sites if [duplication of shared page resources] is disabled. This is the default configuration for multilingual single-host sites.
@z

@x
[duplication of shared page resources]: /getting-started/configuration-markup/#duplicateresourcefiles
{{% /note %}}
@y
[duplication of shared page resources]: /getting-started/configuration-markup/#duplicateresourcefiles
{{% /note %}}
@z

@x
The embedded image render hook resolves internal Markdown destinations by looking for a matching [page resource], falling back to a matching [global resource]. Remote destinations are passed through, and the render hook will not throw an error or warning if it is unable to resolve a destination.
@y
The embedded image render hook resolves internal Markdown destinations by looking for a matching [page resource], falling back to a matching [global resource]. Remote destinations are passed through, and the render hook will not throw an error or warning if it is unable to resolve a destination.
@z

@x
[page resource]: /getting-started/glossary/#page-resource
[global resource]: /getting-started/glossary/#global-resource
@y
[page resource]: /getting-started/glossary/#page-resource
[global resource]: /getting-started/glossary/#global-resource
@z

@x
You must place global resources in the assets directory. If you have placed your resources in the static directory, and you are unable or unwilling to move them, you must mount the static directory to the assets directory by including both of these entries in your site configuration:
@y
You must place global resources in the assets directory. If you have placed your resources in the static directory, and you are unable or unwilling to move them, you must mount the static directory to the assets directory by including both of these entries in your site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[[module.mounts]]
source = 'assets'
target = 'assets'
@y
{{< code-toggle file=hugo >}}
[[module.mounts]]
source = 'assets'
target = 'assets'
@z

@x
[[module.mounts]]
source = 'static'
target = 'assets'
{{< /code-toggle >}}
@y
[[module.mounts]]
source = 'static'
target = 'assets'
{{< /code-toggle >}}
@z

@x
Note that the embedded image render hook does not perform image processing. Its sole purpose is to resolve Markdown image destinations.
@y
Note that the embedded image render hook does not perform image processing. Its sole purpose is to resolve Markdown image destinations.
@z

@x
{{% include "/render-hooks/_common/pageinner.md" %}}
@y
{{% include "/render-hooks/_common/pageinner.md" %}}
@z
