%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Configure markup
description: Configure rendering of markup to HTML.
categories: [getting started,fundamentals]
keywords: [markup,markdown,goldmark,asciidoc,asciidoctor,highlighting]
@y
title: マークアップの設定
description: HTML にレンダリングするマークアップの設定
categories: [getting started,fundamentals]
keywords: [markup,markdown,goldmark,asciidoc,asciidoctor,highlighting]
@z

@x
## Default handler
@y
## デフォルトハンドラー {#default-handler}
@z

@x
Hugo uses [Goldmark] to render Markdown to HTML.
@y
Hugo は HTML へのマークダウンレンダリングに [Goldmark] を利用します。
@z

@x
{{< code-toggle file=hugo >}}
[markup]
defaultMarkdownHandler = 'goldmark'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[markup]
defaultMarkdownHandler = 'goldmark'
{{< /code-toggle >}}
@z

@x
Files with the `.md` or `.markdown` extension are processed as Markdown, provided that you have not specified a different [content format] using the `markup` field in front matter.
@y
ファイル拡張子が `.md` または `.markdown` であるものは、マークダウンの対象として処理されます。
ただしフロントマターの `markup` フィールドを通じて、別の [コンテントフォーマット][content format] を指定することもできます。
@z

@x
To use a different renderer for Markdown files, specify one of `asciidocext`, `org`, `pandoc`, or `rst` in your site configuration.
@y
マークダウンファイルに対して別のレンダラーを用いる際には、サイト設定ファイルにおいて `asciidocext`, `org`, `pandoc`, `rst` のいずれかを設定します。
@z

@x
defaultMarkdownHandler|Description
:--|:--
`asciidocext`|[AsciiDoc]
`goldmark`|[Goldmark]
`org`|[Emacs Org Mode]
`pandoc`|[Pandoc]
`rst`|[reStructuredText]
@y
マークダウンハンドラー|内容説明
:--|:--
`asciidocext`|[AsciiDoc]
`goldmark`|[Goldmark]
`org`|[Emacs Org Mode]
`pandoc`|[Pandoc]
`rst`|[reStructuredText]
@z

@x
To use AsciiDoc, Pandoc, or reStructuredText you must install the relevant renderer and update your [security policy].
@y
AsciiDoc, Pandoc, reStructuredText を利用する場合は、対応するレンダラーをインストールした上で、[セキュリティポリシー][security policy] を更新する必要があります。
@z

@x note
Unless you need a unique capability provided by one of the alternate Markdown handlers, we strongly recommend that you use the default setting. Goldmark is fast, well maintained, conforms to the [CommonMark] specification, and is compatible with [GitHub Flavored Markdown] (GFM).
@y
Unless you need a unique capability provided by one of the alternate Markdown handlers, we strongly recommend that you use the default setting. Goldmark is fast, well maintained, conforms to the [CommonMark] specification, and is compatible with [GitHub Flavored Markdown] (GFM).
@z

% snip links...

% snip links...

@x
## Goldmark
@y
## Goldmark
@z

@x
This is the default configuration for the Goldmark Markdown renderer:
@y
以下は Goldmark マークダウンレンダラーに対するデフォルト設定です。
@z

@x
{{< code-toggle config=markup.goldmark />}}
@y
{{< code-toggle config=markup.goldmark />}}
@z

@x
### Goldmark extensions
@y
### Goldmark extensions
@z

@x
The extensions below, excluding passthrough, are enabled by default.
@y
The extensions below, excluding passthrough, are enabled by default.
@z

@x
Enable the passthrough extension if you include mathematical equations and expressions in your Markdown using LaTeX or TeX typesetting syntax. See [mathematics in Markdown] for details.
@y
Enable the passthrough extension if you include mathematical equations and expressions in your Markdown using LaTeX or TeX typesetting syntax. See [mathematics in Markdown] for details.
@z

@x
[mathematics in Markdown]: content-management/mathematics/
@y
[mathematics in Markdown]: content-management/mathematics/
@z

@x
Extension|Documentation
:--|:--
cjk|[Goldmark Extensions: CJK]
definitionList|[PHP Markdown Extra: Definition lists]
footnote|[PHP Markdown Extra: Footnotes]
linkify|[GitHub Flavored Markdown: Autolinks]
passthrough|[Hugo Goldmark Extensions: Passthrough]
strikethrough|[GitHub Flavored Markdown: Strikethrough]
table|[GitHub Flavored Markdown: Tables]
taskList|[GitHub Flavored Markdown: Task list items]
typographer|[Goldmark Extensions: Typographer]
@y
Extension|Documentation
:--|:--
cjk|[Goldmark Extensions: CJK]
definitionList|[PHP Markdown Extra: Definition lists]
footnote|[PHP Markdown Extra: Footnotes]
linkify|[GitHub Flavored Markdown: Autolinks]
passthrough|[Hugo Goldmark Extensions: Passthrough]
strikethrough|[GitHub Flavored Markdown: Strikethrough]
table|[GitHub Flavored Markdown: Tables]
taskList|[GitHub Flavored Markdown: Task list items]
typographer|[Goldmark Extensions: Typographer]
@z

@x
[GitHub Flavored Markdown: Autolinks]: https://github.github.com/gfm/#autolinks-extension-
[GitHub Flavored Markdown: Strikethrough]: https://github.github.com/gfm/#strikethrough-extension-
[GitHub Flavored Markdown: Tables]: https://github.github.com/gfm/#tables-extension-
[GitHub Flavored Markdown: Task list items]: https://github.github.com/gfm/#task-list-items-extension-
[Goldmark Extensions: CJK]: https://github.com/yuin/goldmark?tab=readme-ov-file#cjk-extension
[Goldmark Extensions: Typographer]: https://github.com/yuin/goldmark?tab=readme-ov-file#typographer-extension
[Hugo Goldmark Extensions: Passthrough]: https://github.com/gohugoio/hugo-goldmark-extensions?tab=readme-ov-file#passthrough-extension
[PHP Markdown Extra: Definition lists]: https://michelf.ca/projects/php-markdown/extra/#def-list
[PHP Markdown Extra: Footnotes]: https://michelf.ca/projects/php-markdown/extra/#footnotes
@y
[GitHub Flavored Markdown: Autolinks]: https://github.github.com/gfm/#autolinks-extension-
[GitHub Flavored Markdown: Strikethrough]: https://github.github.com/gfm/#strikethrough-extension-
[GitHub Flavored Markdown: Tables]: https://github.github.com/gfm/#tables-extension-
[GitHub Flavored Markdown: Task list items]: https://github.github.com/gfm/#task-list-items-extension-
[Goldmark Extensions: CJK]: https://github.com/yuin/goldmark?tab=readme-ov-file#cjk-extension
[Goldmark Extensions: Typographer]: https://github.com/yuin/goldmark?tab=readme-ov-file#typographer-extension
[Hugo Goldmark Extensions: Passthrough]: https://github.com/gohugoio/hugo-goldmark-extensions?tab=readme-ov-file#passthrough-extension
[PHP Markdown Extra: Definition lists]: https://michelf.ca/projects/php-markdown/extra/#def-list
[PHP Markdown Extra: Footnotes]: https://michelf.ca/projects/php-markdown/extra/#footnotes
@z

@x
The typographer extension replaces certain character combinations with HTML entities as specified below:
@y
The typographer extension replaces certain character combinations with HTML entities as specified below:
@z

@x
Markdown|Replaced by|Description
:--|:--|:--
`...`|`&hellip;`|horizontal ellipsis
`'`|`&rsquo;`|apostrophe
`--`|`&ndash;`|en dash
`---`|`&mdash;`|em dash
`«`|`&laquo;`|left angle quote
`“`|`&ldquo;`|left double quote
`‘`|`&lsquo;`|left single quote
`»`|`&raquo;`|right angle quote
`”`|`&rdquo;`|right double quote
`’`|`&rsquo;`|right single quote
@y
Markdown|Replaced by|Description
:--|:--|:--
`...`|`&hellip;`|horizontal ellipsis
`'`|`&rsquo;`|apostrophe
`--`|`&ndash;`|en dash
`---`|`&mdash;`|em dash
`«`|`&laquo;`|left angle quote
`“`|`&ldquo;`|left double quote
`‘`|`&lsquo;`|left single quote
`»`|`&raquo;`|right angle quote
`”`|`&rdquo;`|right double quote
`’`|`&rsquo;`|right single quote
@z

@x
### Goldmark settings explained
@y
### Goldmark settings explained
@z

@x
Most of the Goldmark settings above are self-explanatory, but some require explanation.
@y
Most of the Goldmark settings above are self-explanatory, but some require explanation.
@z

@x
###### duplicateResourceFiles
@y
###### duplicateResourceFiles
@z

@x
{{< new-in 0.123.0 >}}
@y
{{< new-in 0.123.0 >}}
@z

@x
(`bool`) If `true`, shared page resources on multilingual single-host sites will be duplicated for each language. See [multilingual page resources] for details. Default is `false`.
@y
(`bool`) If `true`, shared page resources on multilingual single-host sites will be duplicated for each language. See [multilingual page resources] for details. Default is `false`.
@z

@x
[multilingual page resources]: /content-management/page-resources/#multilingual
@y
[multilingual page resources]: /content-management/page-resources/#multilingual
@z

@x
{{% note %}}
With multilingual single-host sites, setting this parameter to `false` will enable Hugo's [embedded link render hook] and [embedded image render hook]. This is the default configuration for multilingual single-host sites.
@y
{{% note %}}
With multilingual single-host sites, setting this parameter to `false` will enable Hugo's [embedded link render hook] and [embedded image render hook]. This is the default configuration for multilingual single-host sites.
@z

@x
[embedded image render hook]: /render-hooks/images/#default
[embedded link render hook]: /render-hooks/links/#default
{{% /note %}}
@y
[embedded image render hook]: /render-hooks/images/#default
[embedded link render hook]: /render-hooks/links/#default
{{% /note %}}
@z

@x
###### parser.wrapStandAloneImageWithinParagraph
@y
###### parser.wrapStandAloneImageWithinParagraph
@z

@x
(`bool`) If `true`, image elements without adjacent content will be wrapped within a `p` element when rendered. This is the default Markdown behavior. Set to `false` when using an [image render hook] to render standalone images as `figure` elements. Default is `true`.
@y
(`bool`) If `true`, image elements without adjacent content will be wrapped within a `p` element when rendered. This is the default Markdown behavior. Set to `false` when using an [image render hook] to render standalone images as `figure` elements. Default is `true`.
@z

@x
[image render hook]: /render-hooks/images/
@y
[image render hook]: /render-hooks/images/
@z

@x
###### parser.autoHeadingIDType
@y
###### parser.autoHeadingIDType
@z

@x
(`string`) The strategy used to automatically generate heading `id` attributes, one of `github`, `github-ascii` or `blackfriday`.
@y
(`string`) The strategy used to automatically generate heading `id` attributes, one of `github`, `github-ascii` or `blackfriday`.
@z

@x
- `github` produces GitHub-compatible `id` attributes
- `github-ascii` drops any non-ASCII characters after accent normalization
- `blackfriday` produces `id` attributes compatible with the Blackfriday Markdown renderer
@y
- `github` produces GitHub-compatible `id` attributes
- `github-ascii` drops any non-ASCII characters after accent normalization
- `blackfriday` produces `id` attributes compatible with the Blackfriday Markdown renderer
@z

@x
This is also the strategy used by the [anchorize](/functions/urls/anchorize) template function. Default is `github`.
@y
This is also the strategy used by the [anchorize](/functions/urls/anchorize) template function. Default is `github`.
@z

@x
###### parser.attribute.block
@y
###### parser.attribute.block
@z

@x
(`bool`) If `true`, enables [Markdown attributes] for block elements. Default is `false`.
@y
(`bool`) If `true`, enables [Markdown attributes] for block elements. Default is `false`.
@z

@x
[Markdown attributes]: /content-management/markdown-attributes/
@y
[Markdown attributes]: /content-management/markdown-attributes/
@z

@x
###### parser.attribute.title
@y
###### parser.attribute.title
@z

@x
(`bool`) If `true`, enables [Markdown attributes] for headings. Default is `true`.
@y
(`bool`) If `true`, enables [Markdown attributes] for headings. Default is `true`.
@z

@x
###### renderHooks.image.enableDefault
@y
###### renderHooks.image.enableDefault
@z

@x
{{< new-in 0.123.0 >}}
@y
{{< new-in 0.123.0 >}}
@z

@x
(`bool`) If `true`, enables Hugo's [embedded image render hook]. Default is `false`.
@y
(`bool`) If `true`, enables Hugo's [embedded image render hook]. Default is `false`.
@z

@x
[embedded image render hook]: /render-hooks/images/#default
@y
[embedded image render hook]: /render-hooks/images/#default
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
###### renderHooks.link.enableDefault
@y
###### renderHooks.link.enableDefault
@z

@x
{{< new-in 0.123.0 >}}
@y
{{< new-in 0.123.0 >}}
@z

@x
(`bool`) If `true`, enables Hugo's [embedded link render hook]. Default is `false`.
@y
(`bool`) If `true`, enables Hugo's [embedded link render hook]. Default is `false`.
@z

@x
[embedded link render hook]: /render-hooks/links/#default
@y
[embedded link render hook]: /render-hooks/links/#default
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
###### renderer.hardWraps
@y
###### renderer.hardWraps
@z

@x
(`bool`) If `true`, Goldmark replaces newline characters within a paragraph with `br` elements. Default is `false`.
@y
(`bool`) If `true`, Goldmark replaces newline characters within a paragraph with `br` elements. Default is `false`.
@z

@x
###### renderer.unsafe
@y
###### renderer.unsafe
@z

@x
(`bool`) If `true`, Goldmark renders raw HTML mixed within the Markdown. This is unsafe unless the content is under your control. Default is `false`.
@y
(`bool`) If `true`, Goldmark renders raw HTML mixed within the Markdown. This is unsafe unless the content is under your control. Default is `false`.
@z

@x
## AsciiDoc
@y
## AsciiDoc
@z

@x
This is the default configuration for the AsciiDoc renderer:
@y
This is the default configuration for the AsciiDoc renderer:
@z

@x
{{< code-toggle config=markup.asciidocExt />}}
@y
{{< code-toggle config=markup.asciidocExt />}}
@z

@x
### AsciiDoc settings explained
@y
### AsciiDoc settings explained
@z

@x
###### attributes
@y
###### attributes
@z

@x
(`map`) A map of key/value pairs, each a document attributes,See Asciidoctor’s [attributes].
@y
(`map`) A map of key/value pairs, each a document attributes,See Asciidoctor’s [attributes].
@z

@x
[attributes]: https://asciidoctor.org/docs/asciidoc-syntax-quick-reference/#attributes-and-substitutions
@y
[attributes]: https://asciidoctor.org/docs/asciidoc-syntax-quick-reference/#attributes-and-substitutions
@z

@x
###### backend
@y
###### backend
@z

@x
(`string`) The backend output file format. Default is `html5`.
@y
(`string`) The backend output file format. Default is `html5`.
@z

@x
###### extensions
@y
###### extensions
@z

@x
(`string array`) An array of enabled extensions, one or more of `asciidoctor-html5s`, `asciidoctor-bibtex`, `asciidoctor-diagram`, `asciidoctor-interdoc-reftext`, `asciidoctor-katex`, `asciidoctor-latex`, `asciidoctor-mathematical`, or `asciidoctor-question`.
@y
(`string array`) An array of enabled extensions, one or more of `asciidoctor-html5s`, `asciidoctor-bibtex`, `asciidoctor-diagram`, `asciidoctor-interdoc-reftext`, `asciidoctor-katex`, `asciidoctor-latex`, `asciidoctor-mathematical`, or `asciidoctor-question`.
@z

@x
{{% note %}}
To mitigate security risks, entries in the extension array may not contain forward slashes (`/`), backslashes (`\`), or periods. Due to this restriction, extensions must be in Ruby's `$LOAD_PATH`.
{{% /note %}}
@y
{{% note %}}
To mitigate security risks, entries in the extension array may not contain forward slashes (`/`), backslashes (`\`), or periods. Due to this restriction, extensions must be in Ruby's `$LOAD_PATH`.
{{% /note %}}
@z

@x
###### failureLevel
@y
###### failureLevel
@z

@x
(`string`) The minimum logging level that triggers a non-zero exit code (failure). Default is `fatal`.
@y
(`string`) The minimum logging level that triggers a non-zero exit code (failure). Default is `fatal`.
@z

@x
###### noHeaderOrFooter
@y
###### noHeaderOrFooter
@z

@x
(`bool`) If `true`, outputs an embeddable document, which excludes the header, the footer, and everything outside the body of the document. Default is `true`.
@y
(`bool`) If `true`, outputs an embeddable document, which excludes the header, the footer, and everything outside the body of the document. Default is `true`.
@z

@x
###### preserveTOC
@y
###### preserveTOC
@z

@x
(`bool`) If `true`, preserves the table of contents (TOC) rendered by Asciidoctor. By default, to make the TOC compatible with existing themes, Hugo removes the TOC rendered by Asciidoctor. To render the TOC, use the [`TableOfContents`] method on a `Page` object in your templates. Default is `false`.
@y
(`bool`) If `true`, preserves the table of contents (TOC) rendered by Asciidoctor. By default, to make the TOC compatible with existing themes, Hugo removes the TOC rendered by Asciidoctor. To render the TOC, use the [`TableOfContents`] method on a `Page` object in your templates. Default is `false`.
@z

@x
[`TableOfContents`]: /methods/page/tableofcontents/
@y
[`TableOfContents`]: /methods/page/tableofcontents/
@z

@x
###### safeMode
@y
###### safeMode
@z

@x
(`string`) The safe mode level, one of `unsafe`, `safe`, `server`, or `secure`. Default is `unsafe`.
@y
(`string`) The safe mode level, one of `unsafe`, `safe`, `server`, or `secure`. Default is `unsafe`.
@z

@x
###### sectionNumbers
@y
###### sectionNumbers
@z

@x
(`bool`) If `true`, numbers each section title. Default is `false`.
@y
(`bool`) If `true`, numbers each section title. Default is `false`.
@z

@x
###### trace
@y
###### trace
@z

@x
(`bool`) If `true`, include backtrace information on errors. Default is `false`.
@y
(`bool`) If `true`, include backtrace information on errors. Default is `false`.
@z

@x
###### verbose
@y
###### verbose
@z

@x
(`bool`)If `true`, verbosely prints processing information and configuration file checks to stderr. Default is `false`.
@y
(`bool`)If `true`, verbosely prints processing information and configuration file checks to stderr. Default is `false`.
@z

@x
###### workingFolderCurrent
@y
###### workingFolderCurrent
@z

@x
(`bool`) If `true`, sets the working directory to be the same as that of the AsciiDoc file being processed, allowing [includes] to work with relative paths. Set to `true` to render diagrams with the [asciidoctor-diagram] extension. Default is `false`.
@y
(`bool`) If `true`, sets the working directory to be the same as that of the AsciiDoc file being processed, allowing [includes] to work with relative paths. Set to `true` to render diagrams with the [asciidoctor-diagram] extension. Default is `false`.
@z

@x
[asciidoctor-diagram]: https://asciidoctor.org/docs/asciidoctor-diagram/
[includes]: https://docs.asciidoctor.org/asciidoc/latest/syntax-quick-reference/#includes
@y
[asciidoctor-diagram]: https://asciidoctor.org/docs/asciidoctor-diagram/
[includes]: https://docs.asciidoctor.org/asciidoc/latest/syntax-quick-reference/#includes
@z

@x
### AsciiDoc configuration example
@y
### AsciiDoc configuration example
@z

@x
{{< code-toggle file=hugo >}}
[markup.asciidocExt]
    extensions = ["asciidoctor-html5s", "asciidoctor-diagram"]
    workingFolderCurrent = true
    [markup.asciidocExt.attributes]
        my-base-url = "https://example.com/"
        my-attribute-name = "my value"
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[markup.asciidocExt]
    extensions = ["asciidoctor-html5s", "asciidoctor-diagram"]
    workingFolderCurrent = true
    [markup.asciidocExt.attributes]
        my-base-url = "https://example.com/"
        my-attribute-name = "my value"
{{< /code-toggle >}}
@z

@x
### AsciiDoc troubleshooting
@y
### AsciiDoc troubleshooting
@z

@x
Run `hugo --logLevel debug` to examine Hugo's call to the Asciidoctor executable:
@y
Run `hugo --logLevel debug` to examine Hugo's call to the Asciidoctor executable:
@z

@x
```txt
INFO 2019/12/22 09:08:48 Rendering book-as-pdf.adoc with C:\Ruby26-x64\bin\asciidoctor.bat using asciidoc args [--no-header-footer -r asciidoctor-html5s -b html5s -r asciidoctor-diagram --base-dir D:\prototypes\hugo_asciidoc_ddd\docs -a outdir=D:\prototypes\hugo_asciidoc_ddd\build -] ...
```
@y
```txt
INFO 2019/12/22 09:08:48 Rendering book-as-pdf.adoc with C:\Ruby26-x64\bin\asciidoctor.bat using asciidoc args [--no-header-footer -r asciidoctor-html5s -b html5s -r asciidoctor-diagram --base-dir D:\prototypes\hugo_asciidoc_ddd\docs -a outdir=D:\prototypes\hugo_asciidoc_ddd\build -] ...
```
@z

@x
## Highlight
@y
## Highlight
@z

@x
This is the default `highlight` configuration. Note that some of these settings can be set per code block, see [Syntax Highlighting](/content-management/syntax-highlighting/).
@y
This is the default `highlight` configuration. Note that some of these settings can be set per code block, see [Syntax Highlighting](/content-management/syntax-highlighting/).
@z

@x
{{< code-toggle config=markup.highlight />}}
@y
{{< code-toggle config=markup.highlight />}}
@z

@x
For `style`, see these galleries:
@y
For `style`, see these galleries:
@z

@x
* [Short snippets](https://xyproto.github.io/splash/docs/all.html)
* [Long snippets](https://xyproto.github.io/splash/docs/longer/all.html)
@y
* [Short snippets](https://xyproto.github.io/splash/docs/all.html)
* [Long snippets](https://xyproto.github.io/splash/docs/longer/all.html)
@z

@x
For CSS, see [Generate Syntax Highlighter CSS](/content-management/syntax-highlighting/#generate-syntax-highlighter-css).
@y
For CSS, see [Generate Syntax Highlighter CSS](/content-management/syntax-highlighting/#generate-syntax-highlighter-css).
@z

@x
## Table of contents
@y
## Table of contents
@z

@x
This is the default configuration for the table of contents, applicable to Goldmark and Asciidoctor:
@y
This is the default configuration for the table of contents, applicable to Goldmark and Asciidoctor:
@z

@x
{{< code-toggle config=markup.tableOfContents />}}
@y
{{< code-toggle config=markup.tableOfContents />}}
@z

@x
###### startLevel
@y
###### startLevel
@z

@x
(`int`) Heading levels less than this value will be excluded from the table of contents. For example, to exclude `h1` elements from the table of contents, set this value to `2`. Default is `2`.
@y
(`int`) Heading levels less than this value will be excluded from the table of contents. For example, to exclude `h1` elements from the table of contents, set this value to `2`. Default is `2`.
@z

@x
###### endLevel
@y
###### endLevel
@z

@x
(`int`) Heading levels greater than this value will be excluded from the table of contents. For example, to exclude `h4`, `h5`, and `h6` elements from the table of contents, set this value to `3`. Default is `3`.
@y
(`int`) Heading levels greater than this value will be excluded from the table of contents. For example, to exclude `h4`, `h5`, and `h6` elements from the table of contents, set this value to `3`. Default is `3`.
@z

@x
###### ordered
@y
###### ordered
@z

@x
(`bool`) If `true`, generates an ordered list instead of an unordered list. Default is `false`.
@y
(`bool`) If `true`, generates an ordered list instead of an unordered list. Default is `false`.
@z
