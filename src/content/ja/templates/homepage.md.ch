%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Homepage template
description: The homepage of a website is often formatted differently than the other pages. For this reason, Hugo makes it easy for you to define your new site's homepage as a unique template.
categories: [templates]
keywords: [homepage]
@y
title: ホームページテンプレート
description: ウェブサイトのホームページというものは、他のページとは異なるフォーマットを採用することがよくあります。このようなことがあるため、Hugo では独自のテンプレートを使ってサイトのホームページを簡単に定義できるようにしています。
categories: [templates]
keywords: [homepage]
@z

@x
Homepage is a `Page` and therefore has all the [page variables][pagevars] and [site variables][sitevars] available for use.
@y
ホームページは一つの `Page` です。
したがって、[ページ変数][pagevars] や [サイト変数][sitevars] がすべて利用できます。
@z

@x
{{% note %}}
The homepage template is the *only* required template for building a site and therefore useful when bootstrapping a new site and template. It is also the only required template if you are developing a single-page website.
{{% /note %}}
@y
{{% note %}}
ホームページテンプレートは、サイト構築の際に *唯一必要となる* テンプレートです。
したがって新たなサイトの構築や別のテンプレートを作り出す際に利用していきます。
また単一ページからなるウェブサイトを開発する際にも、唯一のテンプレートとなります。
{{% /note %}}
@z

@x
{{< youtube ut1xtRZ1QOA >}}
@y
{{< youtube ut1xtRZ1QOA >}}
@z

@x
## Homepage template lookup order
@y
## ホームページテンプレートの適用順 {#homepage-template-lookup-order}
@z

@x
See [Template Lookup](/templates/lookup-order/).
@y
[テンプレートの適用順](/templates/lookup-order/) を参照してください。
@z

@x
## Add content and front matter to the homepage
@y
## ホームページへのコンテントやフロントマターの追加 {#add-content-and-front-matter-to-the-homepage}
@z

@x
The homepage, similar to other [list pages in Hugo][lists], accepts content and front matter from an `_index.md` file. This file should live at the root of your `content` folder (i.e., `content/_index.md`). You can then add body copy and metadata to your homepage the way you would any other content file.
@y
ホームページには、他の [リストページ][lists] と同じように、`_index.md` ファイルを通じてコンテントやフロントマターを含めることができます。
このファイルは `content` フォルダーのルート (つまり `content/_index.md`) に置くことが必要です。
その後は、他のコンテントファイルと同様に、記述内容やメタデータをホームページに加えていくだけです。
@z

@x
See the homepage template below or [Content Organization][contentorg] for more information on the role of `_index.md` in adding content and front matter to list pages.
@y
`_index.md` においてコンテントやフロントマターをリストページに加える方法については、以下のホームページテンプレート例、あるいは [コンテントの構成][contentorg] を参照してください。
@z

@x
## Example homepage template
@y
## ホームページテンプレートの例 {#example-homepage-template}
@z

@x
The following is an example of a homepage template that uses [partial][partials], [base] templates, and a content file at `content/_index.md` to populate the `{{ .Title }}` and `{{ .Content }}` [page variables][pagevars].
@y
以下に示すのはホームページテンプレートの例です。
ここでは [部分テンプレート][partials]、[基本テンプレート][base]、`content/_index.md` というコンテントを使い、[ページ変数][pagevars] `{{ .Title }}` と `{{ .Content }}` を利用しています。
@z

@x
{{< code file=layouts/index.html >}}
{{ define "main" }}
  <main aria-role="main">
    <header class="homepage-header">
      <h1>{{ .Title }}</h1>
      {{ with .Params.subtitle }}
        <span class="subtitle">{{ . }}</span>
      {{ end }}
    </header>
    <div class="homepage-content">
      <!-- Note that the content for index.html, as a sort of list page, will pull from content/_index.md -->
      {{ .Content }}
    </div>
    <div>
      {{ range first 10 .Site.RegularPages }}
        {{ .Render "summary" }}
      {{ end }}
    </div>
  </main>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/index.html >}}
{{ define "main" }}
  <main aria-role="main">
    <header class="homepage-header">
      <h1>{{ .Title }}</h1>
      {{ with .Params.subtitle }}
        <span class="subtitle">{{ . }}</span>
      {{ end }}
    </header>
    <div class="homepage-content">
      <!-- Note that the content for index.html, as a sort of list page, will pull from content/_index.md -->
      {{ .Content }}
    </div>
    <div>
      {{ range first 10 .Site.RegularPages }}
        {{ .Render "summary" }}
      {{ end }}
    </div>
  </main>
{{ end }}
{{< /code >}}
@z

% snip links...
