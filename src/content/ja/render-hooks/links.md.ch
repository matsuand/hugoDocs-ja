%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Link render hooks
linkTitle: Links
description: Create a link render hook to override the rendering of Markdown links to HTML.
categories: [render hooks]
keywords: []
menu:
  docs:
    parent: render-hooks
    weight: 60
weight: 60
toc: true
---
@y
---
title: Link render hooks
linkTitle: Links
description: Create a link render hook to override the rendering of Markdown links to HTML.
categories: [render hooks]
keywords: []
menu:
  docs:
    parent: render-hooks
    weight: 60
weight: 60
toc: true
---
@z

@x
## Markdown
@y
## Markdown
@z

@x
A Markdown link has three components: the link text, the link destination, and optionally the link title.
@y
A Markdown link has three components: the link text, the link destination, and optionally the link title.
@z

@x
```text
[Post 1](/posts/post-1 "My first post")
 ------  -------------  -------------
  text    destination       title
```
@y
```text
[Post 1](/posts/post-1 "My first post")
 ------  -------------  -------------
  text    destination       title
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
Link render hook templates receive the following context:
@y
Link render hook templates receive the following context:
@z

@x
[context]: /getting-started/glossary/#context
@y
[context]: /getting-started/glossary/#context
@z

@x
###### Destination
@y
###### Destination
@z

@x
(`string`) The link destination.
@y
(`string`) The link destination.
@z

@x
###### Page
@y
###### Page
@z

@x
(`page`) A reference to the page containing the link.
@y
(`page`) A reference to the page containing the link.
@z

@x
###### PlainText
@y
###### PlainText
@z

@x
(`string`) The link description as plain text.
@y
(`string`) The link description as plain text.
@z

@x
###### Text
@y
###### Text
@z

@x
(`string`) The link description.
@y
(`string`) The link description.
@z

@x
###### Title
@y
###### Title
@z

@x
(`string`) The link title.
@y
(`string`) The link title.
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
In its default configuration, Hugo renders Markdown links according to the [CommonMark specification]. To create a render hook that does the same thing:
@y
In its default configuration, Hugo renders Markdown links according to the [CommonMark specification]. To create a render hook that does the same thing:
@z

@x
[CommonMark specification]: https://spec.commonmark.org/current/
@y
[CommonMark specification]: https://spec.commonmark.org/current/
@z

@x
{{< code file=layouts/_default/_markup/render-link.html copy=true >}}
<a href="{{ .Destination | safeURL }}"
  {{- with .Title }} title="{{ . }}"{{ end -}}
>
  {{- with .Text | safeHTML }}{{ . }}{{ end -}}
</a>
{{- /* chomp trailing newline */ -}}
{{< /code >}}
@y
{{< code file=layouts/_default/_markup/render-link.html copy=true >}}
<a href="{{ .Destination | safeURL }}"
  {{- with .Title }} title="{{ . }}"{{ end -}}
>
  {{- with .Text | safeHTML }}{{ . }}{{ end -}}
</a>
{{- /* chomp trailing newline */ -}}
{{< /code >}}
@z

@x
To include a `rel` attribute set to `external` for external links:
@y
To include a `rel` attribute set to `external` for external links:
@z

@x
{{< code file=layouts/_default/_markup/render-link.html copy=true >}}
{{- $u := urls.Parse .Destination -}}
<a href="{{ .Destination | safeURL }}"
  {{- with .Title }} title="{{ . }}"{{ end -}}
  {{- if $u.IsAbs }} rel="external"{{ end -}}
>
  {{- with .Text | safeHTML }}{{ . }}{{ end -}}
</a>
{{- /* chomp trailing newline */ -}}
{{< /code >}}
@y
{{< code file=layouts/_default/_markup/render-link.html copy=true >}}
{{- $u := urls.Parse .Destination -}}
<a href="{{ .Destination | safeURL }}"
  {{- with .Title }} title="{{ . }}"{{ end -}}
  {{- if $u.IsAbs }} rel="external"{{ end -}}
>
  {{- with .Text | safeHTML }}{{ . }}{{ end -}}
</a>
{{- /* chomp trailing newline */ -}}
{{< /code >}}
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
Hugo includes an [embedded link render hook] to resolve Markdown link destinations. Disabled by default, you can enable it in your site configuration:
@y
Hugo includes an [embedded link render hook] to resolve Markdown link destinations. Disabled by default, you can enable it in your site configuration:
@z

@x
[embedded link render hook]: {{% eturl render-link %}}
@y
[embedded link render hook]: {{% eturl render-link %}}
@z

@x
{{< code-toggle file=hugo >}}
[markup.goldmark.renderHooks.link]
enableDefault = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[markup.goldmark.renderHooks.link]
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
The embedded link render hook is automatically enabled for multilingual single-host sites if [duplication of shared page resources] is disabled. This is the default configuration for multilingual single-host sites.
@y
{{% note %}}
The embedded link render hook is automatically enabled for multilingual single-host sites if [duplication of shared page resources] is disabled. This is the default configuration for multilingual single-host sites.
@z

@x
[duplication of shared page resources]: /getting-started/configuration-markup/#duplicateresourcefiles
{{% /note %}}
@y
[duplication of shared page resources]: /getting-started/configuration-markup/#duplicateresourcefiles
{{% /note %}}
@z

@x
The embedded link render hook resolves internal Markdown destinations by looking for a matching page, falling back to a matching [page resource], then falling back to a matching [global resource]. Remote destinations are passed through, and the render hook will not throw an error or warning if it is unable to resolve a destination.
@y
The embedded link render hook resolves internal Markdown destinations by looking for a matching page, falling back to a matching [page resource], then falling back to a matching [global resource]. Remote destinations are passed through, and the render hook will not throw an error or warning if it is unable to resolve a destination.
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
