%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Menu templates
description: Use menu variables and methods in your templates to render a menu.
categories: [templates]
keywords: [lists,sections,menus]
@y
title: メニューテンプレート
description: Use menu variables and methods in your templates to render a menu.
categories: [templates]
keywords: [lists,sections,menus]
@z

@x
## Overview
@y
## 概要 {#overview}
@z

@x
After [defining menu entries], use [menu methods] to render a menu.
@y
After [defining menu entries], use [menu methods] to render a menu.
@z

@x
Three factors determine how to render a menu:
@y
Three factors determine how to render a menu:
@z

@x
1. The method used to define the menu entries: [automatic], [in front matter], or [in site configuration]
1. The menu structure: flat or nested
1. The method used to [localize the menu entries]: site configuration or translation tables
@y
1. The method used to define the menu entries: [automatic], [in front matter], or [in site configuration]
1. The menu structure: flat or nested
1. The method used to [localize the menu entries]: site configuration or translation tables
@z

@x
The example below handles every combination.
@y
The example below handles every combination.
@z

@x
## Example
@y
## Example
@z

@x
This partial template recursively "walks" a menu structure, rendering a localized, accessible nested list.
@y
This partial template recursively "walks" a menu structure, rendering a localized, accessible nested list.
@z

@x
{{< code file=layouts/partials/menu.html copy=true >}}
{{- $page := .page }}
{{- $menuID := .menuID }}
@y
{{< code file=layouts/partials/menu.html copy=true >}}
{{- $page := .page }}
{{- $menuID := .menuID }}
@z

@x
{{- with index site.Menus $menuID }}
  <nav>
    <ul>
      {{- partial "inline/menu/walk.html" (dict "page" $page "menuEntries" .) }}
    </ul>
  </nav>
{{- end }}
@y
{{- with index site.Menus $menuID }}
  <nav>
    <ul>
      {{- partial "inline/menu/walk.html" (dict "page" $page "menuEntries" .) }}
    </ul>
  </nav>
{{- end }}
@z

@x
{{- define "partials/inline/menu/walk.html" }}
  {{- $page := .page }}
  {{- range .menuEntries }}
    {{- $attrs := dict "href" .URL }}
    {{- if $page.IsMenuCurrent .Menu . }}
      {{- $attrs = merge $attrs (dict "class" "active" "aria-current" "page") }}
    {{- else if $page.HasMenuCurrent .Menu .}}
      {{- $attrs = merge $attrs (dict "class" "ancestor" "aria-current" "true") }}
    {{- end }}
    {{- $name := .Name }}
    {{- with .Identifier }}
      {{- with T . }}
        {{- $name = . }}
      {{- end }}
    {{- end }}
    <li>
      <a
        {{- range $k, $v := $attrs }}
          {{- with $v }}
            {{- printf " %s=%q" $k $v | safeHTMLAttr }}
          {{- end }}
        {{- end -}}
      >{{ $name }}</a>
      {{- with .Children }}
        <ul>
          {{- partial "inline/menu/walk.html" (dict "page" $page "menuEntries" .) }}
        </ul>
      {{- end }}
    </li>
  {{- end }}
{{- end }}
{{< /code >}}
@y
{{- define "partials/inline/menu/walk.html" }}
  {{- $page := .page }}
  {{- range .menuEntries }}
    {{- $attrs := dict "href" .URL }}
    {{- if $page.IsMenuCurrent .Menu . }}
      {{- $attrs = merge $attrs (dict "class" "active" "aria-current" "page") }}
    {{- else if $page.HasMenuCurrent .Menu .}}
      {{- $attrs = merge $attrs (dict "class" "ancestor" "aria-current" "true") }}
    {{- end }}
    {{- $name := .Name }}
    {{- with .Identifier }}
      {{- with T . }}
        {{- $name = . }}
      {{- end }}
    {{- end }}
    <li>
      <a
        {{- range $k, $v := $attrs }}
          {{- with $v }}
            {{- printf " %s=%q" $k $v | safeHTMLAttr }}
          {{- end }}
        {{- end -}}
      >{{ $name }}</a>
      {{- with .Children }}
        <ul>
          {{- partial "inline/menu/walk.html" (dict "page" $page "menuEntries" .) }}
        </ul>
      {{- end }}
    </li>
  {{- end }}
{{- end }}
{{< /code >}}
@z

@x
Call the partial above, passing a menu ID and the current page in context.
@y
Call the partial above, passing a menu ID and the current page in context.
@z

@x
{{< code file=layouts/_default/single.html >}}
{{ partial "menu.html" (dict "menuID" "main" "page" .) }}
{{ partial "menu.html" (dict "menuID" "footer" "page" .) }}
{{< /code >}}
@y
{{< code file=layouts/_default/single.html >}}
{{ partial "menu.html" (dict "menuID" "main" "page" .) }}
{{ partial "menu.html" (dict "menuID" "footer" "page" .) }}
{{< /code >}}
@z

@x
## Page references
@y
## Page references
@z

@x
Regardless of how you [define menu entries], an entry associated with a page has access to page variables and methods.
@y
Regardless of how you [define menu entries], an entry associated with a page has access to page variables and methods.
@z

@x
This simplistic example renders a page parameter named `version` next to each entry's `name`. Code defensively using `with` or `if` to handle entries where (a) the entry points to an external resource, or (b) the `version` parameter is not defined.
@y
This simplistic example renders a page parameter named `version` next to each entry's `name`. Code defensively using `with` or `if` to handle entries where (a) the entry points to an external resource, or (b) the `version` parameter is not defined.
@z

@x
{{< code file=layouts/_default/single.html >}}
{{- range site.Menus.main }}
  <a href="{{ .URL }}">
    {{ .Name }}
    {{- with .Page }}
      {{- with .Params.version -}}
        ({{ . }})
      {{- end }}
    {{- end }}
  </a>
{{- end }}
{{< /code >}}
@y
{{< code file=layouts/_default/single.html >}}
{{- range site.Menus.main }}
  <a href="{{ .URL }}">
    {{ .Name }}
    {{- with .Page }}
      {{- with .Params.version -}}
        ({{ . }})
      {{- end }}
    {{- end }}
  </a>
{{- end }}
{{< /code >}}
@z

@x
## Menu entry parameters
@y
## Menu entry parameters
@z

@x
When you define menu entries [in site configuration] or [in front matter], you can include a `params` key as shown in these examples:
@y
When you define menu entries [in site configuration] or [in front matter], you can include a `params` key as shown in these examples:
@z

@x
- [Menu entry defined in site configuration]
- [Menu entry defined in front matter]
@y
- [Menu entry defined in site configuration]
- [Menu entry defined in front matter]
@z

@x
This simplistic example renders a `class` attribute for each anchor element. Code defensively using `with` or `if` to handle entries where `params.class` is not defined.
@y
This simplistic example renders a `class` attribute for each anchor element. Code defensively using `with` or `if` to handle entries where `params.class` is not defined.
@z

@x
{{< code file=layouts/partials/menu.html >}}
{{- range site.Menus.main }}
  <a {{ with .Params.class -}} class="{{ . }}" {{ end -}} href="{{ .URL }}">
    {{ .Name }}
  </a>
{{- end }}
{{< /code >}}
@y
{{< code file=layouts/partials/menu.html >}}
{{- range site.Menus.main }}
  <a {{ with .Params.class -}} class="{{ . }}" {{ end -}} href="{{ .URL }}">
    {{ .Name }}
  </a>
{{- end }}
{{< /code >}}
@z

@x
## Localize
@y
## Localize
@z

@x
Hugo provides two methods to localize your menu entries. See [multilingual].
@y
Hugo provides two methods to localize your menu entries. See [multilingual].
@z

% snip links...
