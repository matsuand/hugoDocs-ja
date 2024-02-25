%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: transform.Highlight
description: Renders code with a syntax highlighter.
categories: []
keywords: []
action:
  aliases: [highlight]
  related:
    - functions/transform/CanHighlight
    - functions/transform/HighlightCodeBlock
  returnType: template.HTML
  signatures: ['transform.Highlight INPUT LANG [OPTIONS]']
aliases: [/functions/highlight]
toc: true
---
@y
---
title: transform.Highlight
description: Renders code with a syntax highlighter.
categories: []
keywords: []
action:
  aliases: [highlight]
  related:
    - functions/transform/CanHighlight
    - functions/transform/HighlightCodeBlock
  returnType: template.HTML
  signatures: ['transform.Highlight INPUT LANG [OPTIONS]']
aliases: [/functions/highlight]
toc: true
---
@z

@x
The `highlight` function uses the [Chroma] syntax highlighter, supporting over 200 languages with more than 40 available styles.
@y
The `highlight` function uses the [Chroma] syntax highlighter, supporting over 200 languages with more than 40 available styles.
@z

@x
## Arguments
@y
## Arguments
@z

@x
INPUT
: The code to highlight.
@y
INPUT
: The code to highlight.
@z

@x
LANG
: The language of the code to highlight. Choose from one of the [supported languages]. Case-insensitive.
@y
LANG
: The language of the code to highlight. Choose from one of the [supported languages]. Case-insensitive.
@z

@x
OPTIONS
: A map, or comma-separated list, of zero or more [options]. Set default values in [site configuration].
@y
OPTIONS
: A map, or comma-separated list, of zero or more [options]. Set default values in [site configuration].
@z

@x
## Options
@y
## Options
@z

@x
lineNos
: Boolean. Default is `false`.\
Display a number at the beginning of each line.
@y
lineNos
: Boolean. Default is `false`.\
Display a number at the beginning of each line.
@z

@x
lineNumbersInTable
: Boolean. Default is `true`.\
Render the highlighted code in an HTML table with two cells. The left table cell contains the line numbers. The right table cell contains the code, allowing a user to select and copy the code without line numbers. Irrelevant if `lineNos` is `false`.
@y
lineNumbersInTable
: Boolean. Default is `true`.\
Render the highlighted code in an HTML table with two cells. The left table cell contains the line numbers. The right table cell contains the code, allowing a user to select and copy the code without line numbers. Irrelevant if `lineNos` is `false`.
@z

@x
anchorLineNos
: Boolean. Default is `false`.\
Render each line number as an HTML anchor element, and set the `id` attribute of the surrounding `<span>` to the line number. Irrelevant if `lineNos` is `false`.
@y
anchorLineNos
: Boolean. Default is `false`.\
Render each line number as an HTML anchor element, and set the `id` attribute of the surrounding `<span>` to the line number. Irrelevant if `lineNos` is `false`.
@z

@x
lineAnchors
: String. Default is `""`.\
When rendering a line number as an HTML anchor element, prepend this value to the `id` attribute of the surrounding `<span>`. This provides unique `id` attributes when a page contains two or more code blocks. Irrelevant if `lineNos` or `anchorLineNos` is `false`.
@y
lineAnchors
: String. Default is `""`.\
When rendering a line number as an HTML anchor element, prepend this value to the `id` attribute of the surrounding `<span>`. This provides unique `id` attributes when a page contains two or more code blocks. Irrelevant if `lineNos` or `anchorLineNos` is `false`.
@z

@x
lineNoStart
: Integer. Default is `1`.\
The number to display at the beginning of the first line. Irrelevant if `lineNos` is `false`.
@y
lineNoStart
: Integer. Default is `1`.\
The number to display at the beginning of the first line. Irrelevant if `lineNos` is `false`.
@z

@x
hl_Lines
: String. Default is `""`.\
A space-delimited list of lines to emphasize within the highlighted code. To emphasize lines 2, 3, 4, and 7, set this value to `2-4 7`. This option is independent of the `lineNoStart` option.
@y
hl_Lines
: String. Default is `""`.\
A space-delimited list of lines to emphasize within the highlighted code. To emphasize lines 2, 3, 4, and 7, set this value to `2-4 7`. This option is independent of the `lineNoStart` option.
@z

@x
hl_inline
: Boolean. Default is `false`.\
Render the highlighted code without a wrapping container.
@y
hl_inline
: Boolean. Default is `false`.\
Render the highlighted code without a wrapping container.
@z

@x
style
: String. Default is `monokai`.\
The CSS styles to apply to the highlighted code. See the [style gallery] for examples. Case-sensitive.
@y
style
: String. Default is `monokai`.\
The CSS styles to apply to the highlighted code. See the [style gallery] for examples. Case-sensitive.
@z

@x
noClasses
: Boolean. Default is `true`.\
Use inline CSS styles instead of an external CSS file. To use an external CSS file, set this value to `false` and [generate the file with the hugo client][hugo client].
@y
noClasses
: Boolean. Default is `true`.\
Use inline CSS styles instead of an external CSS file. To use an external CSS file, set this value to `false` and [generate the file with the hugo client][hugo client].
@z

@x
tabWidth
: Integer. Default is `4`.\
Substitute this number of spaces for each tab character in your highlighted code. Irrelevant if `noClasses` is `false`.
@y
tabWidth
: Integer. Default is `4`.\
Substitute this number of spaces for each tab character in your highlighted code. Irrelevant if `noClasses` is `false`.
@z

@x
guessSyntax
: Boolean. Default is `false`.\
If the `LANG` argument is blank or an unrecognized language, auto-detect the language if possible, otherwise use a fallback language.
@y
guessSyntax
: Boolean. Default is `false`.\
If the `LANG` argument is blank or an unrecognized language, auto-detect the language if possible, otherwise use a fallback language.
@z

@x
{{% note %}}
Instead of specifying both `lineNos` and `lineNumbersInTable`, you can use the following shorthand notation:
@y
{{% note %}}
Instead of specifying both `lineNos` and `lineNumbersInTable`, you can use the following shorthand notation:
@z

@x
lineNos=inline
: equivalent to `lineNos=true` and `lineNumbersInTable=false`
@y
lineNos=inline
: equivalent to `lineNos=true` and `lineNumbersInTable=false`
@z

@x
lineNos=table
: equivalent to `lineNos=true` and `lineNumbersInTable=true`
{{% /note %}}
@y
lineNos=table
: equivalent to `lineNos=true` and `lineNumbersInTable=true`
{{% /note %}}
@z

@x
## Examples
@y
## Examples
@z

@x
```go-html-template
{{ $input := `fmt.Println("Hello World!")` }}
{{ transform.Highlight $input "go" }}
@y
```go-html-template
{{ $input := `fmt.Println("Hello World!")` }}
{{ transform.Highlight $input "go" }}
@z

@x
{{ $input := `console.log('Hello World!');` }}
{{ $lang := "js" }}
{{ transform.Highlight $input $lang "lineNos=table, style=api" }}
@y
{{ $input := `console.log('Hello World!');` }}
{{ $lang := "js" }}
{{ transform.Highlight $input $lang "lineNos=table, style=api" }}
@z

@x
{{ $input := `echo "Hello World!"` }}
{{ $lang := "bash" }}
{{ $opts := dict "lineNos" "table" "style" "dracula" }}
{{ transform.Highlight $input $lang $opts }}
```
@y
{{ $input := `echo "Hello World!"` }}
{{ $lang := "bash" }}
{{ $opts := dict "lineNos" "table" "style" "dracula" }}
{{ transform.Highlight $input $lang $opts }}
```
@z

@x
[Chroma]: https://github.com/alecthomas/chroma
[hugo client]: /commands/hugo_gen_chromastyles
[options]: #options
[site configuration]: /getting-started/configuration-markup#highlight
[style gallery]: https://xyproto.github.io/splash/docs/
[supported languages]: /content-management/syntax-highlighting#list-of-chroma-highlighting-languages
@y
[Chroma]: https://github.com/alecthomas/chroma
[hugo client]: /commands/hugo_gen_chromastyles
[options]: #options
[site configuration]: /getting-started/configuration-markup#highlight
[style gallery]: https://xyproto.github.io/splash/docs/
[supported languages]: /content-management/syntax-highlighting#list-of-chroma-highlighting-languages
@z
