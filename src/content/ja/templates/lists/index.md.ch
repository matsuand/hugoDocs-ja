%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Lists of content in Hugo
linkTitle: List templates
description: Lists have a specific meaning and usage in Hugo when it comes to rendering your site homepage, section page, taxonomy list, or taxonomy terms list.
categories: [templates]
keywords: [lists,sections,rss,taxonomies,terms]
@y
title: Hugo のコンテントリスト
linkTitle: リストテンプレート
description: Lists have a specific meaning and usage in Hugo when it comes to rendering your site homepage, section page, taxonomy list, or taxonomy terms list.
categories: [templates]
keywords: [lists,sections,rss,taxonomies,terms]
@z

@x
## What is a list page template?
@y
## リストページテンプレートとは何か {#what-is-a-list-page-template}
@z

@x
{{< youtube 8b2YTSMdMps >}}
@y
{{< youtube 8b2YTSMdMps >}}
@z

@x
A list page template is a template used to render multiple pieces of content in a single HTML page. The exception to this rule is the homepage, which is still a list but has its own [dedicated template][homepage].
@y
A list page template is a template used to render multiple pieces of content in a single HTML page. The exception to this rule is the homepage, which is still a list but has its own [dedicated template][homepage].
@z

@x
Hugo uses the term *list* in its truest sense; i.e. a sequential arrangement of material, especially in alphabetical or numerical order. Hugo uses list templates on any output HTML page where content is traditionally listed:
@y
Hugo uses the term *list* in its truest sense; i.e. a sequential arrangement of material, especially in alphabetical or numerical order. Hugo uses list templates on any output HTML page where content is traditionally listed:
@z

@x
* [Home page](/templates/homepage)
* [Section pages](/templates/section-templates)
* [Taxonomy pages](/templates/taxonomy-templates)
* [Taxonomy term pages](/templates/taxonomy-templates)
* [RSS feeds](/templates/rss)
* [Sitemaps](/templates/sitemap-template)
@y
* [Home page](/templates/homepage)
* [Section pages](/templates/section-templates)
* [Taxonomy pages](/templates/taxonomy-templates)
* [Taxonomy term pages](/templates/taxonomy-templates)
* [RSS feeds](/templates/rss)
* [Sitemaps](/templates/sitemap-template)
@z

@x
For template lookup order, see [Template Lookup](/templates/lookup-order/).
@y
For template lookup order, see [Template Lookup](/templates/lookup-order/).
@z

@x
The idea of a list page comes from the [hierarchical mental model of the web][mentalmodel] and is best demonstrated visually:
@y
The idea of a list page comes from the [hierarchical mental model of the web][mentalmodel] and is best demonstrated visually:
@z

@x
[![Image demonstrating a hierarchical website sitemap.](site-hierarchy.svg)](site-hierarchy.svg)
@y
[![Image demonstrating a hierarchical website sitemap.](site-hierarchy.svg)](site-hierarchy.svg)
@z

@x
## Add content and front matter to list pages
@y
## Add content and front matter to list pages
@z

@x
Add content and front matter to list pages by creating an _index.md file for `home`, `section`, `taxonomy`, and `term` pages.
@y
Add content and front matter to list pages by creating an _index.md file for `home`, `section`, `taxonomy`, and `term` pages.
@z

@x
The following is an example of a typical Hugo project directory's content:
@y
The following is an example of a typical Hugo project directory's content:
@z

@x
```txt
.
...
├── content
|   ├── posts
|   |   ├── _index.md
|   |   ├── post-01.md
|   |   └── post-02.md
|   └── quote
|   |   ├── quote-01.md
|   |   └── quote-02.md
...
```
@y
```txt
.
...
├── content
|   ├── posts
|   |   ├── _index.md
|   |   ├── post-01.md
|   |   └── post-02.md
|   └── quote
|   |   ├── quote-01.md
|   |   └── quote-02.md
...
```
@z

@x
Using the above example, let's assume you have the following in `content/posts/_index.md`:
@y
Using the above example, let's assume you have the following in `content/posts/_index.md`:
@z

@x
{{< code file=content/posts/_index.md >}}
---
title: My Go Journey
date: 2017-03-23
publishdate: 2017-03-24
---
@y
{{< code file=content/posts/_index.md >}}
---
title: My Go Journey
date: 2017-03-23
publishdate: 2017-03-24
---
@z

@x
I decided to start learning Go in March 2017.
@y
I decided to start learning Go in March 2017.
@z

@x
Follow my journey through this new blog.
{{< /code >}}
@y
Follow my journey through this new blog.
{{< /code >}}
@z

@x
You can now access this `_index.md`'s' content in your list template:
@y
You can now access this `_index.md`'s' content in your list template:
@z

@x
{{< code file=layouts/_default/list.html >}}
{{ define "main" }}
  <main>
    <article>
      <header>
        <h1>{{ .Title }}</h1>
      </header>
      <!-- "{{ .Content }}" pulls from the Markdown content of the corresponding _index.md -->
      {{ .Content }}
    </article>
    <ul>
      <!-- Ranges through content/posts/*.md -->
      {{ range .Pages }}
        <li>
          <a href="{{ .RelPermalink }}">{{ .Date.Format "2006-01-02" }} | {{ .LinkTitle }}</a>
        </li>
      {{ end }}
    </ul>
  </main>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/list.html >}}
{{ define "main" }}
  <main>
    <article>
      <header>
        <h1>{{ .Title }}</h1>
      </header>
      <!-- "{{ .Content }}" pulls from the Markdown content of the corresponding _index.md -->
      {{ .Content }}
    </article>
    <ul>
      <!-- Ranges through content/posts/*.md -->
      {{ range .Pages }}
        <li>
          <a href="{{ .RelPermalink }}">{{ .Date.Format "2006-01-02" }} | {{ .LinkTitle }}</a>
        </li>
      {{ end }}
    </ul>
  </main>
{{ end }}
{{< /code >}}
@z

@x
This above will output the following HTML:
@y
This above will output the following HTML:
@z

@x
{{< code file=example.com/posts/index.html >}}
<!--top of your baseof code-->
<main>
  <article>
    <header>
      <h1>My Go Journey</h1>
    </header>
    <p>I decided to start learning Go in March 2017.</p>
    <p>Follow my journey through this new blog.</p>
  </article>
  <ul>
    <li><a href="/posts/post-01/">Post 1</a></li>
    <li><a href="/posts/post-02/">Post 2</a></li>
  </ul>
</main>
<!--bottom of your baseof-->
{{< /code >}}
@y
{{< code file=example.com/posts/index.html >}}
<!--top of your baseof code-->
<main>
  <article>
    <header>
      <h1>My Go Journey</h1>
    </header>
    <p>I decided to start learning Go in March 2017.</p>
    <p>Follow my journey through this new blog.</p>
  </article>
  <ul>
    <li><a href="/posts/post-01/">Post 1</a></li>
    <li><a href="/posts/post-02/">Post 2</a></li>
  </ul>
</main>
<!--bottom of your baseof-->
{{< /code >}}
@z

@x
### List pages without `_index.md`
@y
### List pages without `_index.md`
@z

@x
You do *not* have to create an `_index.md` file for every list page (i.e. section, taxonomy, taxonomy terms, etc) or the homepage. If Hugo does not find an `_index.md` within the respective content section when rendering a list template, the page will be created but with no `{{ .Content }}` and only the default values for `.Title` etc.
@y
You do *not* have to create an `_index.md` file for every list page (i.e. section, taxonomy, taxonomy terms, etc) or the homepage. If Hugo does not find an `_index.md` within the respective content section when rendering a list template, the page will be created but with no `{{ .Content }}` and only the default values for `.Title` etc.
@z

@x
Using this same `layouts/_default/list.html` template and applying it to the `quotes` section above will render the following output. Note that `quotes` does not have an `_index.md` file to pull from:
@y
Using this same `layouts/_default/list.html` template and applying it to the `quotes` section above will render the following output. Note that `quotes` does not have an `_index.md` file to pull from:
@z

@x
{{< code file=example.com/quote/index.html >}}
<!--baseof-->
<main>
  <article>
    <header>
      <!-- Hugo assumes that .Title is the name of the section since there is no _index.md content file from which to pull a "title:" field -->
      <h1>Quotes</h1>
    </header>
  </article>
  <ul>
    <li><a href="https://example.org/quote/quotes-01/">Quote 1</a></li>
    <li><a href="https://example.org/quote/quotes-02/">Quote 2</a></li>
  </ul>
</main>
<!--baseof-->
{{< /code >}}
@y
{{< code file=example.com/quote/index.html >}}
<!--baseof-->
<main>
  <article>
    <header>
      <!-- Hugo assumes that .Title is the name of the section since there is no _index.md content file from which to pull a "title:" field -->
      <h1>Quotes</h1>
    </header>
  </article>
  <ul>
    <li><a href="https://example.org/quote/quotes-01/">Quote 1</a></li>
    <li><a href="https://example.org/quote/quotes-02/">Quote 2</a></li>
  </ul>
</main>
<!--baseof-->
{{< /code >}}
@z

@x
{{% note %}}
By default, Hugo capitalizes and pluralizes automatic list titles including section, taxonomy, and term pages. You can disable these transformations by setting [`capitalizeListTitles`] and [`pluralizeListTitles`] in your site configuration.
@y
{{% note %}}
By default, Hugo capitalizes and pluralizes automatic list titles including section, taxonomy, and term pages. You can disable these transformations by setting [`capitalizeListTitles`] and [`pluralizeListTitles`] in your site configuration.
@z

@x
You can change the capitalization style in your site configuration to one of `ap`, `chicago`, `go`, `firstupper`, or `none`. See [details].
@y
You can change the capitalization style in your site configuration to one of `ap`, `chicago`, `go`, `firstupper`, or `none`. See [details].
@z

@x
[`capitalizeListTitles`]: /getting-started/configuration/#capitalizelisttitles
[`pluralizeListTitles`]: /getting-started/configuration/#pluralizelisttitles
[details]: /getting-started/configuration/#configure-title-case
{{% /note %}}
@y
[`capitalizeListTitles`]: /getting-started/configuration/#capitalizelisttitles
[`pluralizeListTitles`]: /getting-started/configuration/#pluralizelisttitles
[details]: /getting-started/configuration/#configure-title-case
{{% /note %}}
@z

@x
## Example list templates
@y
## Example list templates
@z

@x
### Section template
@y
### Section template
@z

@x
This list template has been modified slightly from a template originally used in [spf13.com](https://spf13.com/). It makes use of [partial templates][partials] for the chrome of the rendered page rather than using a [base template][base]. The examples that follow also use the [content view templates][views] `li.html` or `summary.html`.
@y
This list template has been modified slightly from a template originally used in [spf13.com](https://spf13.com/). It makes use of [partial templates][partials] for the chrome of the rendered page rather than using a [base template][base]. The examples that follow also use the [content view templates][views] `li.html` or `summary.html`.
@z

@x
{{< code file=layouts/section/posts.html >}}
{{ partial "header.html" . }}
{{ partial "subheader.html" . }}
<main>
  <div>
    <h1>{{ .Title }}</h1>
    <ul>
      <!-- Renders the li.html content view for each content/posts/*.md -->
      {{ range .Pages }}
        {{ .Render "li" }}
      {{ end }}
    </ul>
  </div>
</main>
{{ partial "footer.html" . }}
{{< /code >}}
@y
{{< code file=layouts/section/posts.html >}}
{{ partial "header.html" . }}
{{ partial "subheader.html" . }}
<main>
  <div>
    <h1>{{ .Title }}</h1>
    <ul>
      <!-- Renders the li.html content view for each content/posts/*.md -->
      {{ range .Pages }}
        {{ .Render "li" }}
      {{ end }}
    </ul>
  </div>
</main>
{{ partial "footer.html" . }}
{{< /code >}}
@z

@x
### Taxonomy template
@y
### Taxonomy template
@z

@x
{{< code file=layouts/_default/taxonomy.html >}}
{{ define "main" }}
<main>
  <div>
    <h1>{{ .Title }}</h1>
    <!-- ranges through each of the content files associated with a particular taxonomy term and renders the summary.html content view -->
    {{ range .Pages }}
      {{ .Render "summary" }}
    {{ end }}
  </div>
</main>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/taxonomy.html >}}
{{ define "main" }}
<main>
  <div>
    <h1>{{ .Title }}</h1>
    <!-- ranges through each of the content files associated with a particular taxonomy term and renders the summary.html content view -->
    {{ range .Pages }}
      {{ .Render "summary" }}
    {{ end }}
  </div>
</main>
{{ end }}
{{< /code >}}
@z

@x
## Sort content
@y
## Sort content
@z

@x
By default, Hugo sorts page collections by:
@y
By default, Hugo sorts page collections by:
@z

@x
1. Page [weight]
2. Page [date] (descending)
3. Page [linkTitle], falling back to page [title]
4. Page file path if the page is backed by a file
@y
1. Page [weight]
2. Page [date] (descending)
3. Page [linkTitle], falling back to page [title]
4. Page file path if the page is backed by a file
@z

@x
[date]: /methods/page/date/
[weight]: /methods/page/weight/
[linkTitle]: /methods/page/linktitle/
[title]: /methods/page/title/
@y
[date]: /methods/page/date/
[weight]: /methods/page/weight/
[linkTitle]: /methods/page/linktitle/
[title]: /methods/page/title/
@z

@x
Change the sort order using any of the methods below.
@y
Change the sort order using any of the methods below.
@z

@x
{{< list-pages-in-section path=/methods/pages filter=methods_pages_sort filterType=include titlePrefix=. omitElementIDs=true >}}
@y
{{< list-pages-in-section path=/methods/pages filter=methods_pages_sort filterType=include titlePrefix=. omitElementIDs=true >}}
@z

@x
## Group content
@y
## Group content
@z

@x
Group your content by field, parameter, or date using any of the methods below.
@y
Group your content by field, parameter, or date using any of the methods below.
@z

@x
{{< list-pages-in-section path=/methods/pages filter=methods_pages_group filterType=include titlePrefix=. omitElementIDs=true >}}
@y
{{< list-pages-in-section path=/methods/pages filter=methods_pages_group filterType=include titlePrefix=. omitElementIDs=true >}}
@z

@x
## Filtering and limiting lists
@y
## Filtering and limiting lists
@z

@x
Sometimes you only want to list a subset of the available content. A
common is to only display posts from [main sections]
on the blog's homepage.
@y
Sometimes you only want to list a subset of the available content. A
common is to only display posts from [main sections]
on the blog's homepage.
@z

@x
See the documentation on [`where`] and
[`first`] for further details.
@y
See the documentation on [`where`] and
[`first`] for further details.
@z

@x
[base]: /templates/base/
[bepsays]: https://bepsays.com/en/2016/12/19/hugo-018/
[directorystructure]: /getting-started/directory-structure/
[`Format` function]: /methods/time/format/
[front matter]: /content-management/front-matter/
[getpage]: /methods/page/getpage/
[homepage]: /templates/homepage/
[mentalmodel]: https://webstyleguide.com/wsg3/3-information-architecture/3-site-structure.html
[partials]: /templates/partials/
[RSS 2.0]: https://cyber.harvard.edu/rss/rss.html
[rss]: /templates/rss/
[sections]: /content-management/sections/
[sectiontemps]: /templates/section-templates/
[taxlists]: /templates/taxonomy-templates/#taxonomy-templates
[taxterms]: /templates/taxonomy-templates/#term-templates
[taxvars]: /methods/taxonomy/
[views]: /templates/views/
[`where`]: /functions/collections/where/
[`first`]: /functions/collections/first/
[main sections]: /methods/site/mainsections/
[`time.Format`]: /functions/time/format/
@y
[base]: /templates/base/
[bepsays]: https://bepsays.com/en/2016/12/19/hugo-018/
[directorystructure]: /getting-started/directory-structure/
[`Format` function]: /methods/time/format/
[front matter]: /content-management/front-matter/
[getpage]: /methods/page/getpage/
[homepage]: /templates/homepage/
[mentalmodel]: https://webstyleguide.com/wsg3/3-information-architecture/3-site-structure.html
[partials]: /templates/partials/
[RSS 2.0]: https://cyber.harvard.edu/rss/rss.html
[rss]: /templates/rss/
[sections]: /content-management/sections/
[sectiontemps]: /templates/section-templates/
[taxlists]: /templates/taxonomy-templates/#taxonomy-templates
[taxterms]: /templates/taxonomy-templates/#term-templates
[taxvars]: /methods/taxonomy/
[views]: /templates/views/
[`where`]: /functions/collections/where/
[`first`]: /functions/collections/first/
[main sections]: /methods/site/mainsections/
[`time.Format`]: /functions/time/format/
@z
