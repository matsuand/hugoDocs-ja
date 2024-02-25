%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
# Do not remove front matter.
---
@y
---
# Do not remove front matter.
---
@z

@x
In this site configuration we enable rendering of [emoji shortcodes], and add emoji shortcodes before (pre) and after (post) each menu entry:
@y
In this site configuration we enable rendering of [emoji shortcodes], and add emoji shortcodes before (pre) and after (post) each menu entry:
@z

@x
{{< code-toggle file=hugo >}}
enableEmoji = true
@y
{{< code-toggle file=hugo >}}
enableEmoji = true
@z

@x
[[menus.main]]
name = 'About'
pageRef = '/about'
post = ':point_left:'
pre = ':point_right:'
weight = 10
@y
[[menus.main]]
name = 'About'
pageRef = '/about'
post = ':point_left:'
pre = ':point_right:'
weight = 10
@z

@x
[[menus.main]]
name = 'Contact'
pageRef = '/contact'
post = ':arrow_left:'
pre = ':arrow_right:'
weight = 20
{{< /code-toggle >}}
@y
[[menus.main]]
name = 'Contact'
pageRef = '/contact'
post = ':arrow_left:'
pre = ':arrow_right:'
weight = 20
{{< /code-toggle >}}
@z

@x
To render the menu:
@y
To render the menu:
@z

@x
```go-html-template
<ul>
  {{ range .Site.Menus.main }}
    <li>
      {{ .Pre | markdownify }}
      <a href="{{ .URL }}">{{ .Name }}</a>
      {{ .Post | markdownify }}
    </li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range .Site.Menus.main }}
    <li>
      {{ .Pre | markdownify }}
      <a href="{{ .URL }}">{{ .Name }}</a>
      {{ .Post | markdownify }}
    </li>
  {{ end }}
</ul>
```
@z

@x
[emoji shortcodes]: /quick-reference/emojis/
@y
[emoji shortcodes]: /quick-reference/emojis/
@z
