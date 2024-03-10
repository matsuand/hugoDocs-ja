%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Table of contents
description: Hugo can automatically parse Markdown content and create a Table of Contents you can use in your templates.
categories: [content management]
keywords: [table of contents, toc]
menu:
  docs:
    parent: content-management
    weight: 210
weight: 210
toc: true
aliases: [/extras/toc/]
---
@y
---
title: Table of contents
description: Hugo can automatically parse Markdown content and create a Table of Contents you can use in your templates.
categories: [content management]
keywords: [table of contents, toc]
menu:
  docs:
    parent: content-management
    weight: 210
weight: 210
toc: true
aliases: [/extras/toc/]
---
@z

@x
{{% note %}}
@y
{{% note %}}
@z

@x
Previously, there was no out-of-the-box way to specify which heading levels you want the TOC to render. [See the related GitHub discussion (#1778)](https://github.com/gohugoio/hugo/issues/1778). As such, the resulting `<nav id="TableOfContents"><ul></ul></nav>` was going to start at `<h1>` when pulling from `{{ .Content }}`.
@y
Previously, there was no out-of-the-box way to specify which heading levels you want the TOC to render. [See the related GitHub discussion (#1778)](https://github.com/gohugoio/hugo/issues/1778). As such, the resulting `<nav id="TableOfContents"><ul></ul></nav>` was going to start at `<h1>` when pulling from `{{ .Content }}`.
@z

@x
Hugo [v0.60.0](https://github.com/gohugoio/hugo/releases/tag/v0.60.0) made a switch to [Goldmark](https://github.com/yuin/goldmark/) as the default library for Markdown which has improved and configurable implementation of TOC. Take a look at [how to configure TOC](/getting-started/configuration-markup/#table-of-contents) for Goldmark renderer.
@y
Hugo [v0.60.0](https://github.com/gohugoio/hugo/releases/tag/v0.60.0) made a switch to [Goldmark](https://github.com/yuin/goldmark/) as the default library for Markdown which has improved and configurable implementation of TOC. Take a look at [how to configure TOC](/getting-started/configuration-markup/#table-of-contents) for Goldmark renderer.
@z

@x
{{% /note %}}
@y
{{% /note %}}
@z

@x
## Usage
@y
## Usage
@z

@x
Create your Markdown the way you normally would with the appropriate headings. Here is some example content:
@y
Create your Markdown the way you normally would with the appropriate headings. Here is some example content:
@z

@x
```md
<!-- Your front matter up here -->
@y
```md
<!-- Your front matter up here -->
@z

@x
## Introduction
@y
## Introduction
@z

@x
One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin.
@y
One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin.
@z

@x
## My Heading
@y
## My Heading
@z

@x
He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment.
@y
He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment.
@z

@x
### My Subheading
@y
### My Subheading
@z

@x
A collection of textile samples lay spread out on the table - Samsa was a traveling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look out the window at the dull weather. Drops
```
@y
A collection of textile samples lay spread out on the table - Samsa was a traveling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look out the window at the dull weather. Drops
```
@z

@x
Hugo will take this Markdown and create a table of contents from `## Introduction`, `## My Heading`, and `### My Subheading` and then store it in the [page variable][pagevars]`.TableOfContents`.
@y
Hugo will take this Markdown and create a table of contents from `## Introduction`, `## My Heading`, and `### My Subheading` and then store it in the [page variable][pagevars]`.TableOfContents`.
@z

@x
The built-in `.TableOfContents` variables outputs a `<nav id="TableOfContents">` element with a child `<ul>`, whose child `<li>` elements begin with appropriate HTML headings. See [the available settings](/getting-started/configuration-markup/#table-of-contents) to configure what heading levels you want to include in TOC.
@y
The built-in `.TableOfContents` variables outputs a `<nav id="TableOfContents">` element with a child `<ul>`, whose child `<li>` elements begin with appropriate HTML headings. See [the available settings](/getting-started/configuration-markup/#table-of-contents) to configure what heading levels you want to include in TOC.
@z

@x
## Template example: basic TOC
@y
## Template example: basic TOC
@z

@x
The following is an example of a very basic [single page template]:
@y
The following is an example of a very basic [single page template]:
@z

@x
{{< code file=layout/_default/single.html >}}
{{ define "main" }}
  <main>
    <article>
      <header>
        <h1>{{ .Title }}</h1>
      </header>
      {{ .Content }}
    </article>
    <aside>
      {{ .TableOfContents }}
    </aside>
  </main>
{{ end }}
{{< /code >}}
@y
{{< code file=layout/_default/single.html >}}
{{ define "main" }}
  <main>
    <article>
      <header>
        <h1>{{ .Title }}</h1>
      </header>
      {{ .Content }}
    </article>
    <aside>
      {{ .TableOfContents }}
    </aside>
  </main>
{{ end }}
{{< /code >}}
@z

@x
## Template example: TOC partial
@y
## Template example: TOC partial
@z

@x
The following is a [partial template][partials] that adds slightly more logic for page-level control over your table of contents. It assumes you are using a `toc` field in your content's [front matter] that, unless specifically set to `false`, will add a TOC to any page with a `.WordCount` (see [Page Variables][pagevars]) greater than 400. This example also demonstrates how to use [conditionals] in your templating:
@y
The following is a [partial template][partials] that adds slightly more logic for page-level control over your table of contents. It assumes you are using a `toc` field in your content's [front matter] that, unless specifically set to `false`, will add a TOC to any page with a `.WordCount` (see [Page Variables][pagevars]) greater than 400. This example also demonstrates how to use [conditionals] in your templating:
@z

@x
{{< code file=layouts/partials/toc.html >}}
{{ if and (gt .WordCount 400 ) (.Params.toc) }}
<aside>
    <header>
    <h2>{{ .Title }}</h2>
    </header>
    {{ .TableOfContents }}
</aside>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/partials/toc.html >}}
{{ if and (gt .WordCount 400 ) (.Params.toc) }}
<aside>
    <header>
    <h2>{{ .Title }}</h2>
    </header>
    {{ .TableOfContents }}
</aside>
{{ end }}
{{< /code >}}
@z

@x
{{% note %}}
With the preceding example, even pages with > 400 words *and* `toc` not set to `false` will not render a table of contents if there are no headings in the page for the `{{ .TableOfContents }}` variable to pull from.
{{% /note %}}
@y
{{% note %}}
With the preceding example, even pages with > 400 words *and* `toc` not set to `false` will not render a table of contents if there are no headings in the page for the `{{ .TableOfContents }}` variable to pull from.
{{% /note %}}
@z

@x
## Usage with AsciiDoc
@y
## Usage with AsciiDoc
@z

@x
Hugo supports table of contents with AsciiDoc content format.
@y
Hugo supports table of contents with AsciiDoc content format.
@z

@x
In the header of your content file, specify the AsciiDoc TOC directives necessary to ensure that the table of contents is generated. Hugo will use the generated TOC to populate the page variable `.TableOfContents` in the same way as described for Markdown. See example below:
@y
In the header of your content file, specify the AsciiDoc TOC directives necessary to ensure that the table of contents is generated. Hugo will use the generated TOC to populate the page variable `.TableOfContents` in the same way as described for Markdown. See example below:
@z

@x
```asciidoc
// <!-- Your front matter up here -->
:toc:
// Set toclevels to be at least your hugo [markup.tableOfContents.endLevel] configuration key
:toclevels: 4
@y
```asciidoc
// <!-- Your front matter up here -->
:toc:
// Set toclevels to be at least your hugo [markup.tableOfContents.endLevel] configuration key
:toclevels: 4
@z

@x
== Introduction
@y
== Introduction
@z

@x
One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin.
@y
One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin.
@z

@x
== My Heading
@y
== My Heading
@z

@x
He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment.
@y
He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment.
@z

@x
=== My Subheading
@y
=== My Subheading
@z

@x
A collection of textile samples lay spread out on the table - Samsa was a traveling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look out the window at the dull weather. Drops
```
@y
A collection of textile samples lay spread out on the table - Samsa was a traveling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look out the window at the dull weather. Drops
```
@z

@x
Hugo will take this AsciiDoc and create a table of contents store it in the page variable `.TableOfContents`, in the same as described for Markdown.
@y
Hugo will take this AsciiDoc and create a table of contents store it in the page variable `.TableOfContents`, in the same as described for Markdown.
@z

@x
[conditionals]: /templates/introduction/#conditional-blocks
[front matter]: /content-management/front-matter/
[pagevars]: /methods/page/
[partials]: /templates/partials/
[single page template]: /templates/single-page-templates/
@y
[conditionals]: /templates/introduction/#conditional-blocks
[front matter]: /content-management/front-matter/
[pagevars]: /methods/page/
[partials]: /templates/partials/
[single page template]: /templates/single-page-templates/
@z
