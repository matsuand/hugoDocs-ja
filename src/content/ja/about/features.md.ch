%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% snip 対応

@x
title: Features
description: Hugo's rich and powerful feature set provides the framework and tools to create static sites that build in seconds, often less.
categories: [about]
keywords: []
@y
title: Hugo の機能
description: Hugo の機能は豊富で強力であり、静的サイトの構築に数秒もかからないほどのフレームワークおよびツールを提供します。
categories: [about]
keywords: []
@z

@x
## Framework
@y
## フレームワーク {#framework}
@z

@x
[Multiplatform]
: Install Hugo's single executable on Linux, macOS, Windows, and more.
@y
[Multiplatform]
: Install Hugo's single executable on Linux, macOS, Windows, and more.
@z

@x
[Multilingual]
: Localize your project for each language and region, including translations, images, dates, currencies, numbers, percentages, and collation sequence. Hugo's multilingual framework supports single-host and multihost configurations.
@y
[Multilingual]
: Localize your project for each language and region, including translations, images, dates, currencies, numbers, percentages, and collation sequence. Hugo's multilingual framework supports single-host and multihost configurations.
@z

@x
[Output formats]
: Render each page of your site to one or more output formats, with granular control by page kind, section, and path. While HTML is the default output format, you can add JSON, RSS, CSV, and more. For example, create a REST API to access content.
@y
[Output formats]
: Render each page of your site to one or more output formats, with granular control by page kind, section, and path. While HTML is the default output format, you can add JSON, RSS, CSV, and more. For example, create a REST API to access content.
@z

@x
[Templates]
: Create templates usings variables, functions, and methods to transform your content, resources, and data into a published page. While HTML templates are the most common, you can create templates for any output format.
@y
[Templates]
: Create templates usings variables, functions, and methods to transform your content, resources, and data into a published page. While HTML templates are the most common, you can create templates for any output format.
@z

@x
[Themes]
: Reduce development time and cost by using one of the hundreds of themes contributed by the Hugo community. Themes are available for corporate sites, documentation projects, image portfolios, landing pages, personal and professional blogs, resumes, CVs, and more.
@y
[Themes]
: Reduce development time and cost by using one of the hundreds of themes contributed by the Hugo community. Themes are available for corporate sites, documentation projects, image portfolios, landing pages, personal and professional blogs, resumes, CVs, and more.
@z

@x
[Modules]
: Reduce development time and cost by creating or importing packaged combinations of archetypes, assets, content, data, templates, translation tables, static files, or configuration settings. A module may serve as the basis for a new site, or to augment an existing site.
@y
[Modules]
: Reduce development time and cost by creating or importing packaged combinations of archetypes, assets, content, data, templates, translation tables, static files, or configuration settings. A module may serve as the basis for a new site, or to augment an existing site.
@z

@x
[Privacy]
: Configure the behavior of Hugo's embedded templates and shortcodes to facilitate compliance with regional privacy regulations, including the [GDPR] and [CCPA].
@y
[Privacy]
: Configure the behavior of Hugo's embedded templates and shortcodes to facilitate compliance with regional privacy regulations, including the [GDPR] and [CCPA].
@z

@x
[Security]
: Hugo's security model is based on the premise that template and configuration authors are trusted, but content authors are not. This model enables generation of HTML output safe against code injection. Other protections prevent "shelling out" to arbitrary applications, limit access to specific environment variables, prevent connections to arbitrary remote data sources, and more.
@y
[Security]
: Hugo's security model is based on the premise that template and configuration authors are trusted, but content authors are not. This model enables generation of HTML output safe against code injection. Other protections prevent "shelling out" to arbitrary applications, limit access to specific environment variables, prevent connections to arbitrary remote data sources, and more.
@z

@x
## Content authoring
@y
## Content authoring
@z

@x
[Content formats]
: Create your content using Markdown, HTML, AsciiDoc, Emacs Org Mode, Pandoc, or reStructuredText. Markdown is the default content format, conforming to the [CommonMark] and [GitHub Flavored Markdown] specifications.
@y
[Content formats]
: Create your content using Markdown, HTML, AsciiDoc, Emacs Org Mode, Pandoc, or reStructuredText. Markdown is the default content format, conforming to the [CommonMark] and [GitHub Flavored Markdown] specifications.
@z

@x
[Markdown attributes]
: Apply HTML attributes such as `class` and `id` to Markdown images and block elements including blockquotes, fenced code blocks, headings, horizontal rules, lists, paragraphs, and tables.
@y
[Markdown attributes]
: Apply HTML attributes such as `class` and `id` to Markdown images and block elements including blockquotes, fenced code blocks, headings, horizontal rules, lists, paragraphs, and tables.
@z

@x
[Markdown extensions]
: Leverage the embedded Markdown extensions to create tables, definition lists, footnotes, task lists, inserted text, mark text, subscripts, superscripts, and more.
@y
[Markdown extensions]
: Leverage the embedded Markdown extensions to create tables, definition lists, footnotes, task lists, inserted text, mark text, subscripts, superscripts, and more.
@z

@x
[Markdown render hooks]
: Override the conversion of Markdown to HTML when rendering fenced code blocks, headings, images, and links. For example, render every standalone image as an HTML `figure` element.
@y
[Markdown render hooks]
: Override the conversion of Markdown to HTML when rendering fenced code blocks, headings, images, and links. For example, render every standalone image as an HTML `figure` element.
@z

@x
[Diagrams]
: Use fenced code blocks and Markdown render hooks to include diagrams in your content.
@y
[Diagrams]
: Use fenced code blocks and Markdown render hooks to include diagrams in your content.
@z

@x
[Mathematics]
: Include mathematical equations and expressions in Markdown using LaTeX or TeX typesetting syntax.
@y
[Mathematics]
: Include mathematical equations and expressions in Markdown using LaTeX or TeX typesetting syntax.
@z

@x
[Syntax highlighting]
: Syntactically highlight code examples using Hugo's embedded syntax highlighter, enabled by default for fenced code blocks in Markdown. The syntax highlighter supports hundreds of code languages and dozens of styles.
@y
[Syntax highlighting]
: Syntactically highlight code examples using Hugo's embedded syntax highlighter, enabled by default for fenced code blocks in Markdown. The syntax highlighter supports hundreds of code languages and dozens of styles.
@z

@x
[Shortcodes]
: Use Hugo's embedded shortcodes, or create your own, to insert complex content. For example, use shortcodes to include `audio` and `video` elements, render tables from local or remote data sources, insert snippets from other  pages, and more.
@y
[Shortcodes]
: Use Hugo's embedded shortcodes, or create your own, to insert complex content. For example, use shortcodes to include `audio` and `video` elements, render tables from local or remote data sources, insert snippets from other  pages, and more.
@z

@x
## Content management
@y
## Content management
@z

@x
[Taxonomies]
: Classify content to establish simple or complex logical relationships between pages. For example, create an authors taxonomy, and assign one or more authors to each page. Among other uses, the taxonomy system provides an inverted, weighted index to render a list of related pages, ordered by relevance.
@y
[Taxonomies]
: Classify content to establish simple or complex logical relationships between pages. For example, create an authors taxonomy, and assign one or more authors to each page. Among other uses, the taxonomy system provides an inverted, weighted index to render a list of related pages, ordered by relevance.
@z

@x
[Data]
: Augment your content using local or remote data sources including CSV, JSON, TOML, YAML, and XML. For example, create a shortcode to render an HTML table from a remote CSV file.
@y
[Data]
: Augment your content using local or remote data sources including CSV, JSON, TOML, YAML, and XML. For example, create a shortcode to render an HTML table from a remote CSV file.
@z

@x
[Menus]
: Provide rapid access to content via Hugo's menu system, configured automatically, globally, or on a page-by-page basis. The menu system is a key component of Hugo's multilingual architecture.
@y
[Menus]
: Provide rapid access to content via Hugo's menu system, configured automatically, globally, or on a page-by-page basis. The menu system is a key component of Hugo's multilingual architecture.
@z

@x
[URL management]
: Serve any page from any path via global configuration or on a page-by-page basis.
@y
[URL management]
: Serve any page from any path via global configuration or on a page-by-page basis.
@z

@x
## Asset pipelines
@y
## Asset pipelines
@z

@x
[CSS bundling]
: Transpile Sass to CSS, bundle, tree shake, minify, create source maps, perform SRI hashing, and integrate with PostCSS.
@y
[CSS bundling]
: Transpile Sass to CSS, bundle, tree shake, minify, create source maps, perform SRI hashing, and integrate with PostCSS.
@z

@x
[JavaScript bundling]
: Transpile TypeScript and JSX to JavaScript, bundle, tree shake, minify, create source maps, and perform SRI hashing.
@y
[JavaScript bundling]
: Transpile TypeScript and JSX to JavaScript, bundle, tree shake, minify, create source maps, and perform SRI hashing.
@z

@x
[Image processing]
: Convert, resize, crop, rotate,  adjust colors, apply filters, overlay text and images, and extract EXIF data.
@y
[Image processing]
: Convert, resize, crop, rotate,  adjust colors, apply filters, overlay text and images, and extract EXIF data.
@z

@x
## Performance
@y
## Performance
@z

@x
[Caching]
: Reduce build time and cost by rendering a partial template once then cache the result, either globally or within a given context. For example, cache the result of an asset pipeline to prevent reprocessing on every rendered page.
@y
[Caching]
: Reduce build time and cost by rendering a partial template once then cache the result, either globally or within a given context. For example, cache the result of an asset pipeline to prevent reprocessing on every rendered page.
@z

@x
[Segmentation]
: Reduce build time and cost by partitioning your sites into segments. For example, render the home page and the "news section" every hour, and render the entire site once a week.
@y
[Segmentation]
: Reduce build time and cost by partitioning your sites into segments. For example, render the home page and the "news section" every hour, and render the entire site once a week.
@z

@x
[Minification]
: Minify HTML, CSS, and JavaScript to reduce file size, bandwidth consumption, and loading times.
@y
[Minification]
: Minify HTML, CSS, and JavaScript to reduce file size, bandwidth consumption, and loading times.
@z

% snip links...
