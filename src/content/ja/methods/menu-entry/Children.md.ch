%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Children
description: Returns a collection of child menu entries, if any, under the given menu entry.
categories: []
keywords: []
action:
  related:
    - methods/menu-entry/HasChildren
  returnType: navigation.Menu
  signatures: [MENUENTRY.Children]
---
@y
---
title: Children
description: Returns a collection of child menu entries, if any, under the given menu entry.
categories: []
keywords: []
action:
  related:
    - methods/menu-entry/HasChildren
  returnType: navigation.Menu
  signatures: [MENUENTRY.Children]
---
@z

@x
Use the `Children` method when rendering a nested menu.
@y
Use the `Children` method when rendering a nested menu.
@z

@x
With this site configuration:
@y
With this site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[[menus.main]]
name = 'Products'
pageRef = '/product'
weight = 10
@y
{{< code-toggle file=hugo >}}
[[menus.main]]
name = 'Products'
pageRef = '/product'
weight = 10
@z

@x
[[menus.main]]
name = 'Product 1'
pageRef = '/products/product-1'
parent = 'Products'
weight = 1
@y
[[menus.main]]
name = 'Product 1'
pageRef = '/products/product-1'
parent = 'Products'
weight = 1
@z

@x
[[menus.main]]
name = 'Product 2'
pageRef = '/products/product-2'
parent = 'Products'
weight = 2
{{< /code-toggle >}}
@y
[[menus.main]]
name = 'Product 2'
pageRef = '/products/product-2'
parent = 'Products'
weight = 2
{{< /code-toggle >}}
@z

@x
And this template:
@y
And this template:
@z

@x
```go-html-template
<ul>
  {{ range .Site.Menus.main }}
    <li>
      <a href="{{ .URL }}">{{ .Name }}</a>
      {{ if .HasChildren }}
        <ul>
          {{ range .Children }}
            <li><a href="{{ .URL }}">{{ .Name }}</a></li>
          {{ end }}
        </ul>
      {{ end }}
    </li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range .Site.Menus.main }}
    <li>
      <a href="{{ .URL }}">{{ .Name }}</a>
      {{ if .HasChildren }}
        <ul>
          {{ range .Children }}
            <li><a href="{{ .URL }}">{{ .Name }}</a></li>
          {{ end }}
        </ul>
      {{ end }}
    </li>
  {{ end }}
</ul>
```
@z

@x
Hugo renders this HTML:
@y
Hugo renders this HTML:
@z

@x
```html
<ul>
  <li>
    <a href="/products/">Products</a>
    <ul>
      <li><a href="/products/product-1/">Product 1</a></li>
      <li><a href="/products/product-2/">Product 2</a></li>
    </ul>
  </li>
</ul>
```
@y
```html
<ul>
  <li>
    <a href="/products/">Products</a>
    <ul>
      <li><a href="/products/product-1/">Product 1</a></li>
      <li><a href="/products/product-2/">Product 2</a></li>
    </ul>
  </li>
</ul>
```
@z
