%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Ordinal
description: Returns the zero-based ordinal of the shortcode in relation to its parent.
categories: []
keywords: []
action:
  related: []
  returnType: int
  signatures: [SHORTCODE.Ordinal]
---
@y
---
title: Ordinal
description: Returns the zero-based ordinal of the shortcode in relation to its parent.
categories: []
keywords: []
action:
  related: []
  returnType: int
  signatures: [SHORTCODE.Ordinal]
---
@z

@x
The `Ordinal` method returns the zero-based ordinal of the shortcode in relation to its parent. If the parent is the page itself, the ordinal represents the position of this shortcode in the page content.
@y
The `Ordinal` method returns the zero-based ordinal of the shortcode in relation to its parent. If the parent is the page itself, the ordinal represents the position of this shortcode in the page content.
@z

@x
This method is useful for, among other things, assigning unique element IDs when a shortcode is called two or more times from the same page. For example:
@y
This method is useful for, among other things, assigning unique element IDs when a shortcode is called two or more times from the same page. For example:
@z

@x
{{< code file=content/about.md lang=md >}}
{{</* img src="images/a.jpg" */>}}
@y
{{< code file=content/about.md lang=md >}}
{{</* img src="images/a.jpg" */>}}
@z

@x
{{</* img src="images/b.jpg" */>}}
{{< /code >}}
@y
{{</* img src="images/b.jpg" */>}}
{{< /code >}}
@z

@x
This shortcode performs error checking, then renders an HTML `img` element with a unique `id` attribute:
@y
This shortcode performs error checking, then renders an HTML `img` element with a unique `id` attribute:
@z

@x
{{< code file=layouts/shortcodes/img.html  >}}
{{ $src := "" }}
{{ with .Get "src" }}
  {{ $src = . }}
  {{ with resources.Get $src }}
    {{ $id := printf "img-%03d" $.Ordinal }}
    <img id="{{ $id }}" src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ else }}
    {{ errorf "The %q shortcode was unable to find %s. See %s" $.Name $src $.Position }}
  {{ end }}
{{ else }}
  {{ errorf "The %q shortcode requires a 'src' argument. See %s" .Name .Position }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/shortcodes/img.html  >}}
{{ $src := "" }}
{{ with .Get "src" }}
  {{ $src = . }}
  {{ with resources.Get $src }}
    {{ $id := printf "img-%03d" $.Ordinal }}
    <img id="{{ $id }}" src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
  {{ else }}
    {{ errorf "The %q shortcode was unable to find %s. See %s" $.Name $src $.Position }}
  {{ end }}
{{ else }}
  {{ errorf "The %q shortcode requires a 'src' argument. See %s" .Name .Position }}
{{ end }}
{{< /code >}}
@z

@x
Hugo renders the page to:
@y
Hugo renders the page to:
@z

@x
```html
<img id="img-000" src="/images/a.jpg" width="600" height="400" alt="">
<img id="img-001" src="/images/b.jpg" width="600" height="400" alt="">
```
@y
```html
<img id="img-000" src="/images/a.jpg" width="600" height="400" alt="">
<img id="img-001" src="/images/b.jpg" width="600" height="400" alt="">
```
@z

@x
{{% note %}}
In the shortcode template above, the [`with`] statement is used to create conditional blocks. Remember that the `with` statement binds context (the dot) to its expression. Inside of a `with` block, preface shortcode method calls with a `$` to access the top level context passed into the template.
@y
{{% note %}}
In the shortcode template above, the [`with`] statement is used to create conditional blocks. Remember that the `with` statement binds context (the dot) to its expression. Inside of a `with` block, preface shortcode method calls with a `$` to access the top level context passed into the template.
@z

@x
[`with`]: /functions/go-template/with/
{{% /note %}}
@y
[`with`]: /functions/go-template/with/
{{% /note %}}
@z
