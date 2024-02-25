%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: safe.URL
description: Declares the given string as a safe URL or URL substring.
categories: []
keywords: []
action:
  aliases: [safeURL]
  related:
    - functions/safe/CSS
    - functions/safe/HTML
    - functions/safe/HTMLAttr
    - functions/safe/JS
    - functions/safe/JSStr
  returnType: template.URL
  signatures: [safe.URL INPUT]
aliases: [/functions/safeurl]
---
@y
---
title: safe.URL
description: Declares the given string as a safe URL or URL substring.
categories: []
keywords: []
action:
  aliases: [safeURL]
  related:
    - functions/safe/CSS
    - functions/safe/HTML
    - functions/safe/HTMLAttr
    - functions/safe/JS
    - functions/safe/JSStr
  returnType: template.URL
  signatures: [safe.URL INPUT]
aliases: [/functions/safeurl]
---
@z

@x
`safeURL` declares the provided string as a "safe" URL or URL substring (see [RFC 3986]). A URL like `javascript:checkThatFormNotEditedBeforeLeavingPage()` from a trusted source should go in the page, but by default dynamic `javascript:` URLs are filtered out since they are a frequently exploited injection vector.
@y
`safeURL` declares the provided string as a "safe" URL or URL substring (see [RFC 3986]). A URL like `javascript:checkThatFormNotEditedBeforeLeavingPage()` from a trusted source should go in the page, but by default dynamic `javascript:` URLs are filtered out since they are a frequently exploited injection vector.
@z

@x
Without `safeURL`, only the URI schemes `http:`, `https:` and `mailto:` are considered safe by Go templates. If any other URI schemes (e.g., `irc:` and `javascript:`) are detected, the whole URL will be replaced with `#ZgotmplZ`. This is to "defang" any potential attack in the URL by rendering it useless.
@y
Without `safeURL`, only the URI schemes `http:`, `https:` and `mailto:` are considered safe by Go templates. If any other URI schemes (e.g., `irc:` and `javascript:`) are detected, the whole URL will be replaced with `#ZgotmplZ`. This is to "defang" any potential attack in the URL by rendering it useless.
@z

@x
The following examples use a [site `hugo.toml`][configuration] with the following [menu entry][menus]:
@y
The following examples use a [site `hugo.toml`][configuration] with the following [menu entry][menus]:
@z

@x
{{< code-toggle file=hugo >}}
[[menus.main]]
name = "IRC: #golang at freenode"
url = "irc://irc.freenode.net/#golang"
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[[menus.main]]
name = "IRC: #golang at freenode"
url = "irc://irc.freenode.net/#golang"
{{< /code-toggle >}}
@z

@x
The following is an example of a sidebar partial that may be used in conjunction with the preceding front matter example:
@y
The following is an example of a sidebar partial that may be used in conjunction with the preceding front matter example:
@z

@x
{{< code file=layouts/partials/bad-url-sidebar-menu.html >}}
<!-- This unordered list may be part of a sidebar menu -->
<ul>
  {{ range .Site.Menus.main }}
    <li><a href="{{ .URL }}">{{ .Name }}</a></li>
  {{ end }}
</ul>
{{< /code >}}
@y
{{< code file=layouts/partials/bad-url-sidebar-menu.html >}}
<!-- This unordered list may be part of a sidebar menu -->
<ul>
  {{ range .Site.Menus.main }}
    <li><a href="{{ .URL }}">{{ .Name }}</a></li>
  {{ end }}
</ul>
{{< /code >}}
@z

@x
This partial would produce the following HTML output:
@y
This partial would produce the following HTML output:
@z

@x
```html
<!-- This unordered list may be part of a sidebar menu -->
<ul>
  <li><a href="#ZgotmplZ">IRC: #golang at freenode</a></li>
</ul>
```
@y
```html
<!-- This unordered list may be part of a sidebar menu -->
<ul>
  <li><a href="#ZgotmplZ">IRC: #golang at freenode</a></li>
</ul>
```
@z

@x
The odd output can be remedied by adding ` | safeURL` to our `.URL` page variable:
@y
The odd output can be remedied by adding ` | safeURL` to our `.URL` page variable:
@z

@x
{{< code file=layouts/partials/correct-url-sidebar-menu.html >}}
<!-- This unordered list may be part of a sidebar menu -->
<ul>
    <li><a href="{{ .URL | safeURL }}">{{ .Name }}</a></li>
</ul>
{{< /code >}}
@y
{{< code file=layouts/partials/correct-url-sidebar-menu.html >}}
<!-- This unordered list may be part of a sidebar menu -->
<ul>
    <li><a href="{{ .URL | safeURL }}">{{ .Name }}</a></li>
</ul>
{{< /code >}}
@z

@x
With the `.URL` page variable piped through `safeURL`, we get the desired output:
@y
With the `.URL` page variable piped through `safeURL`, we get the desired output:
@z

@x
```html
<ul class="sidebar-menu">
  <li><a href="irc://irc.freenode.net/#golang">IRC: #golang at freenode</a></li>
</ul>
```
@y
```html
<ul class="sidebar-menu">
  <li><a href="irc://irc.freenode.net/#golang">IRC: #golang at freenode</a></li>
</ul>
```
@z

@x
[configuration]: /getting-started/configuration/
[menus]: /content-management/menus/
[RFC 3986]: https://tools.ietf.org/html/rfc3986
@y
[configuration]: /getting-started/configuration/
[menus]: /content-management/menus/
[RFC 3986]: https://tools.ietf.org/html/rfc3986
@z
