%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Syntax highlighting
description: Hugo comes with really fast syntax highlighting from Chroma.
categories: [content management]
keywords: [highlighting,chroma,code blocks,syntax]
@y
title: シンタックスハイライト
description: Hugo では Chroma を使った非常に高速なシンタックスハイライト機能があります。
categories: [content management]
keywords: [highlighting,chroma,code blocks,syntax]
@z

@x
Hugo uses [Chroma](https://github.com/alecthomas/chroma) as its code highlighter; it is built in Go and is really, really fast.
@y
Hugo ではコードのハイライト処理に [Chroma](https://github.com/alecthomas/chroma) を利用しています。
これは Go によってビルドされており、非常に高速に処理されます。
@z

@x
## Configure syntax highlighter
@y
## シンタックスハイライトの設定 {#configure-syntax-highlighter}
@z

@x
See [Configure Highlight](/getting-started/configuration-markup#highlight).
@y
[ハイライトの設定](/getting-started/configuration-markup#highlight) を参照してください。
@z

@x
## Generate syntax highlighter CSS
@y
## シンタックスハイライト用 CSS の生成 {#generate-syntax-highlighter-css}
@z

@x
If you run with `markup.highlight.noClasses=false` in your site configuration, you need a style sheet. The style sheet will override the style specified in [`markup.highlight.style`](/functions/transform/highlight/#options).
@y
サイト設定において `markup.highlight.noClasses=false` を行っている場合はスタイルシートが必要になります。
スタイルシートは [`markup.highlight.style`](/functions/transform/highlight/#options) に指定されたスタイルによって上書きされます。
@z

@x
You can generate one with Hugo:
@y
Hugo では以下を実行して生成することができます。
@z

@x
```sh
hugo gen chromastyles --style=monokai > syntax.css
```
@y
```sh
hugo gen chromastyles --style=monokai > syntax.css
```
@z

@x
Run `hugo gen chromastyles -h` for more options. See https://xyproto.github.io/splash/docs/ for a gallery of available styles.
@y
`hugo gen chromastyles -h` を実行すると、他のオプションの情報が得られます。
https://xyproto.github.io/splash/docs/ では、入手可能なスタイルが示されています。
@z

@x
## Highlight shortcode
@y
## Hightlight ショートコード {#highlight-shortcode}
@z

@x
Highlighting is carried out via the built-in [`highlight` shortcode](/content-management/shortcodes/#highlight). It takes exactly one required argument for the programming language to be highlighted and requires a closing tag.
@y
ハイライト処理は組み込みの[`highlight` ショートコード](/content-management/shortcodes/#highlight) によって実現されます。
It takes exactly one required argument for the programming language to be highlighted and requires a closing tag.
@z

@x
Options:
@y
オプションは以下です。
@z

@x
* `linenos`: configure line numbers. Valid values are `true`, `false`, `table`, or `inline`. `false` will turn off line numbers if it's configured to be on in site configuration. `table` will give copy-and-paste friendly code blocks.
* `hl_lines`: lists a set of line numbers or line number ranges to be highlighted.
* `linenostart=199`: starts the line number count from 199.
* `anchorlinenos`: Configure anchors on line numbers. Valid values are `true` or `false`;
* `lineanchors`: Configure a prefix for the anchors on line numbers. Will be suffixed with `-`, so linking to the line number 1 with the option `lineanchors=prefix` adds the anchor `prefix-1` to the page.  
* `hl_inline`  Highlight inside a `<code>` (inline HTML element) tag. Valid values are `true` or `false`. The `code` tag will get a class with name `code-inline`. {{< new-in 0.101.0 >}}
@y
* `linenos`: configure line numbers. Valid values are `true`, `false`, `table`, or `inline`. `false` will turn off line numbers if it's configured to be on in site configuration. `table` will give copy-and-paste friendly code blocks.
* `hl_lines`: lists a set of line numbers or line number ranges to be highlighted.
* `linenostart=199`: starts the line number count from 199.
* `anchorlinenos`: Configure anchors on line numbers. Valid values are `true` or `false`;
* `lineanchors`: Configure a prefix for the anchors on line numbers. Will be suffixed with `-`, so linking to the line number 1 with the option `lineanchors=prefix` adds the anchor `prefix-1` to the page.  
* `hl_inline`  Highlight inside a `<code>` (inline HTML element) tag. Valid values are `true` or `false`. The `code` tag will get a class with name `code-inline`. {{< new-in 0.101.0 >}}
@z

@x
### Example: highlight shortcode
@y
### ハイライトショートコードの例 {#example-highlight-shortcode}
@z

@x
```go-html-template
{{</* highlight go "linenos=table,hl_lines=8 15-17,linenostart=199" */>}}
// ... code
{{</* / highlight */>}}
```
@y
```go-html-template
{{</* highlight go "linenos=table,hl_lines=8 15-17,linenostart=199" */>}}
// ... code
{{</* / highlight */>}}
```
@z

@x
Gives this:
@y
Gives this:
@z

@x
{{< highlight go "linenos=table,hl_lines=8 15-17,linenostart=199" >}}
// GetTitleFunc returns a func that can be used to transform a string to
// title case.
//
// The supported styles are
//
// - "Go" (strings.Title)
// - "AP" (see https://www.apstylebook.com/)
// - "Chicago" (see https://www.chicagomanualofstyle.org/home.html)
//
// If an unknown or empty style is provided, AP style is what you get.
func GetTitleFunc(style string) func(s string) string {
  switch strings.ToLower(style) {
  case "go":
    return strings.Title
  case "chicago":
    return transform.NewTitleConverter(transform.ChicagoStyle)
  default:
    return transform.NewTitleConverter(transform.APStyle)
  }
}
{{< / highlight >}}
@y
{{< highlight go "linenos=table,hl_lines=8 15-17,linenostart=199" >}}
// GetTitleFunc returns a func that can be used to transform a string to
// title case.
//
// The supported styles are
//
// - "Go" (strings.Title)
// - "AP" (see https://www.apstylebook.com/)
// - "Chicago" (see https://www.chicagomanualofstyle.org/home.html)
//
// If an unknown or empty style is provided, AP style is what you get.
func GetTitleFunc(style string) func(s string) string {
  switch strings.ToLower(style) {
  case "go":
    return strings.Title
  case "chicago":
    return transform.NewTitleConverter(transform.ChicagoStyle)
  default:
    return transform.NewTitleConverter(transform.APStyle)
  }
}
{{< / highlight >}}
@z

@x
## Highlight Hugo/Go template code
@y
## Highlight Hugo/Go template code {#highlight-hugogo-template-code}
@z

@x
For highlighting Hugo/Go template code on your page, add `/*` after the opening double curly braces and `*/` before closing curly braces.
@y
For highlighting Hugo/Go template code on your page, add `/*` after the opening double curly braces and `*/` before closing curly braces.
@z

@x
``` go
{{</*/* myshortcode */*/>}}
```
@y
``` go
{{</*/* myshortcode */*/>}}
```
@z

@x
Gives this:
@y
Gives this:
@z

@x
``` go
{{</* myshortcode */>}}
```
@y
``` go
{{</* myshortcode */>}}
```
@z

@x
## Highlight template function
@y
## ハイライトテンプレート関数 {#highlight-template-function}
@z

@x
See [Highlight](/functions/transform/highlight/).
@y
[Highlight](/functions/transform/highlight/) を参照してください。
@z

@x
## Highlighting in code fences
@y
## Highlighting in code fences {#highlighting-in-code-fences}
@z

@x
Highlighting in code fences is enabled by default.
@y
Highlighting in code fences is enabled by default.
@z

@x
````txt
```go {linenos=table,hl_lines=[8,"15-17"],linenostart=199}
// ... code
```
````
@y
````txt
```go {linenos=table,hl_lines=[8,"15-17"],linenostart=199}
// ... code
```
````
@z

@x
Gives this:
@y
Gives this:
@z

@x
```go {linenos=table,hl_lines=[8,"15-17"],linenostart=199}
// GetTitleFunc returns a func that can be used to transform a string to
// title case.
//
// The supported styles are
//
// - "Go" (strings.Title)
// - "AP" (see https://www.apstylebook.com/)
// - "Chicago" (see https://www.chicagomanualofstyle.org/home.html)
//
// If an unknown or empty style is provided, AP style is what you get.
func GetTitleFunc(style string) func(s string) string {
  switch strings.ToLower(style) {
  case "go":
    return strings.Title
  case "chicago":
    return transform.NewTitleConverter(transform.ChicagoStyle)
  default:
    return transform.NewTitleConverter(transform.APStyle)
  }
}
```
@y
```go {linenos=table,hl_lines=[8,"15-17"],linenostart=199}
// GetTitleFunc returns a func that can be used to transform a string to
// title case.
//
// The supported styles are
//
// - "Go" (strings.Title)
// - "AP" (see https://www.apstylebook.com/)
// - "Chicago" (see https://www.chicagomanualofstyle.org/home.html)
//
// If an unknown or empty style is provided, AP style is what you get.
func GetTitleFunc(style string) func(s string) string {
  switch strings.ToLower(style) {
  case "go":
    return strings.Title
  case "chicago":
    return transform.NewTitleConverter(transform.ChicagoStyle)
  default:
    return transform.NewTitleConverter(transform.APStyle)
  }
}
```
@z

@x
The options are the same as in the [highlighting shortcode](/content-management/syntax-highlighting/#highlight-shortcode), including `linenos=false`, but note the slightly different Markdown attribute syntax.
@y
The options are the same as in the [highlighting shortcode](/content-management/syntax-highlighting/#highlight-shortcode), including `linenos=false`, but note the slightly different Markdown attribute syntax.
@z

@x
## List of Chroma highlighting languages
@y
## List of Chroma highlighting languages {#list-of-chroma-highlighting-languages}
@z

@x
The full list of Chroma lexers and their aliases (which is the identifier used in the `highlight` template func or when doing highlighting in code fences):
@y
The full list of Chroma lexers and their aliases (which is the identifier used in the `highlight` template func or when doing highlighting in code fences):
@z

@x
{{< chroma-lexers >}}
@y
{{< chroma-lexers >}}
@z
