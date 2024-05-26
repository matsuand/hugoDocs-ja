%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Content formats
description: Create your content using Markdown, HTML, Emacs Org Mode, AsciiDoc, Pandoc, or reStructuredText.
categories: [content management]
keywords: [markdown,asciidoc,pandoc,content format]
@y
title: コンテントフォーマット
description: Create your content using Markdown, HTML, Emacs Org Mode, AsciiDoc, Pandoc, or reStructuredText.
categories: [content management]
keywords: [markdown,asciidoc,pandoc,content format]
@z

@x
## Introduction
@y
## はじめに {#introduction}
@z

@x
You may mix content formats throughout your site. For example:
@y
You may mix content formats throughout your site. For example:
@z

% snip text...

@x
Regardless of content format, all content must have [front matter], preferably including both `title` and `date`.
@y
Regardless of content format, all content must have [front matter], preferably including both `title` and `date`.
@z

@x
Hugo selects the content renderer based on the `markup` identifier in front matter, falling back to the file extension. See the [classification](#classification) table below for a list of markup identifiers and recognized file extensions.
@y
Hugo selects the content renderer based on the `markup` identifier in front matter, falling back to the file extension. See the [classification](#classification) table below for a list of markup identifiers and recognized file extensions.
@z

@x
## Formats
@y
## フォーマット {#formats}
@z

@x
### Markdown
@y
### Markdown
@z

@x
Create your content in [Markdown] preceded by front matter.
@y
Create your content in [Markdown] preceded by front matter.
@z

@x
Markdown is Hugo's default content format. Hugo natively renders Markdown to HTML using [Goldmark]. Goldmark is fast and conforms to the [CommonMark] and [GitHub Flavored Markdown] specifications. You can [configure Goldmark] in your site configuration.
@y
Markdown is Hugo's default content format. Hugo natively renders Markdown to HTML using [Goldmark]. Goldmark is fast and conforms to the [CommonMark] and [GitHub Flavored Markdown] specifications. You can [configure Goldmark] in your site configuration.
@z

@x
Hugo provides custom Markdown features including:
@y
Hugo provides custom Markdown features including:
@z

@x
[Attributes]
: Apply HTML attributes such as `class` and `id` to Markdown images and block elements including blockquotes, fenced code blocks, headings, horizontal rules, lists, paragraphs, and tables.
@y
[Attributes]
: Apply HTML attributes such as `class` and `id` to Markdown images and block elements including blockquotes, fenced code blocks, headings, horizontal rules, lists, paragraphs, and tables.
@z

@x
[Extensions]
: Leverage the embedded Markdown extensions to create tables, definition lists, footnotes, task lists, inserted text, mark text, subscripts, superscripts, and more.
@y
[Extensions]
: Leverage the embedded Markdown extensions to create tables, definition lists, footnotes, task lists, inserted text, mark text, subscripts, superscripts, and more.
@z

@x
[Mathematics]
: Include mathematical equations and expressions in Markdown using LaTeX or TeX typesetting syntax.
@y
[Mathematics]
: Include mathematical equations and expressions in Markdown using LaTeX or TeX typesetting syntax.
@z

@x
[Render hooks]
: Override the conversion of Markdown to HTML when rendering fenced code blocks, headings, images, and links. For example, render every standalone image as an HTML `figure` element.
@y
[Render hooks]
: Override the conversion of Markdown to HTML when rendering fenced code blocks, headings, images, and links. For example, render every standalone image as an HTML `figure` element.
@z

@x
### HTML
@y
### HTML
@z

@x
Create your content in [HTML] preceded by front matter. The content is typically what you would place within an HTML document's `body` or `main` element.
@y
Create your content in [HTML] preceded by front matter. The content is typically what you would place within an HTML document's `body` or `main` element.
@z

@x
### Emacs Org Mode
@y
### Emacs Org Mode
@z

@x
Create your content in the [Emacs Org Mode] format preceded by front matter. You can use Org Mode keywords for front matter. See [details](/content-management/front-matter/#emacs-org-mode)).
@y
Create your content in the [Emacs Org Mode] format preceded by front matter. You can use Org Mode keywords for front matter. See [details](/content-management/front-matter/#emacs-org-mode)).
@z

@x
### AsciiDoc
@y
### AsciiDoc
@z

@x
Create your content in the [AsciiDoc] format preceded by front matter. Hugo renders AsciiDoc content to HTML using the Asciidoctor executable. You must install Asciidoctor and its dependencies (Ruby) to use the AsciiDoc content format.
@y
Create your content in the [AsciiDoc] format preceded by front matter. Hugo renders AsciiDoc content to HTML using the Asciidoctor executable. You must install Asciidoctor and its dependencies (Ruby) to use the AsciiDoc content format.
@z

@x
You can [configure the AsciiDoc renderer] in your site configuration.
@y
You can [configure the AsciiDoc renderer] in your site configuration.
@z

@x
In its default configuration, Hugo passes these CLI flags when calling the Asciidoctor executable:
@y
In its default configuration, Hugo passes these CLI flags when calling the Asciidoctor executable:
@z

% snip text...

@x
The CLI flags passed to the Asciidoctor executable depend on configuration. You may inspect the flags when building your site:
@y
The CLI flags passed to the Asciidoctor executable depend on configuration. You may inspect the flags when building your site:
@z

% snip text...

@x
### Pandoc
@y
### Pandoc
@z

@x
Create your content in the [Pandoc] format preceded by front matter. Hugo renders Pandoc content to HTML using the Pandoc executable. You must install Pandoc to use the Pandoc content format.
@y
Create your content in the [Pandoc] format preceded by front matter. Hugo renders Pandoc content to HTML using the Pandoc executable. You must install Pandoc to use the Pandoc content format.
@z

@x
Hugo passes these CLI flags when calling the Pandoc executable:
@y
Hugo passes these CLI flags when calling the Pandoc executable:
@z

% snip text...

@x
### reStructuredText
@y
### reStructuredText
@z

@x
Create your content in the [reStructuredText] format preceded by front matter. Hugo renders reStructuredText content to HTML using [Docutils], specifically rst2html. You must install Docutils and its dependencies (Python) to use the reStructuredText content format.
@y
Create your content in the [reStructuredText] format preceded by front matter. Hugo renders reStructuredText content to HTML using [Docutils], specifically rst2html. You must install Docutils and its dependencies (Python) to use the reStructuredText content format.
@z

@x
Hugo passes these CLI flags when calling the rst2html executable:
@y
Hugo passes these CLI flags when calling the rst2html executable:
@z

% snip text...

@x
## Classification
@y
## Classification
@z

@x
Content format|Media type|Identifier|File extensions
:--|:--|:--|:--
Markdown|`text/markdown`|`markdown`|`markdown`,`md`, `mdown`
HTML|`text/html`|`html`|`htm`, `html`
Emacs Org Mode|`text/org`|`org`|`org`
AsciiDoc|`text/asciidoc`|`asciidoc`|`ad`, `adoc`, `asciidoc`
Pandoc|`text/pandoc`|`pandoc`|`pandoc`, `pdc`
reStructuredText|`text/rst`|`rst`|`rst`
@y
コンテントフォーマット|メディアタイプ|識別子|ファイル拡張子
:--|:--|:--|:--
Markdown|`goldmark`|`md`, `mdown`, `markdown`|`md`, `mdown`, `markdown`
HTML|`html`|`htm`|`html`, `htm`
Emacs Org Mode|`org`||`org`
AsciiDoc|`asciidocext`|`adoc`, `ad`|`adoc`, `ad`
Pandoc|`pandoc`|`pdc`|`pandoc`, `pdc`
reStructuredText|`rst`||`rst`
@z

@x
When converting content to HTML, Hugo uses:
@y
When converting content to HTML, Hugo uses:
@z

@x
- Native renderers for Markdown, HTML, and Emacs Org mode
- External renderers for AsciiDoc, Pandoc, and reStructuredText
@y
- Native renderers for Markdown, HTML, and Emacs Org mode
- External renderers for AsciiDoc, Pandoc, and reStructuredText
@z

@x
Native renderers are faster than external renderers.
@y
Native renderers are faster than external renderers.
@z

% snip links...
