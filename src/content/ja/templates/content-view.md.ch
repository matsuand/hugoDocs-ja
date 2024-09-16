%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Content view templates
description: Hugo can render alternative views of your content, useful in list and summary views.
categories: [templates]
keywords: []
@y
title: コンテントビューテンプレート
description: Hugo can render alternative views of your content, useful in list and summary views.
categories: [templates]
keywords: []
@z

@x
The following are common use cases for content views:
@y
The following are common use cases for content views:
@z

@x
* You want content of every type to be shown on the home page but only with limited [summary views][summaries].
* You only want a bulleted list of your content in a [taxonomy template]. Views make this very straightforward by delegating the rendering of each different type of content to the content itself.
@y
* You want content of every type to be shown on the home page but only with limited [summary views][summaries].
* You only want a bulleted list of your content in a [taxonomy template]. Views make this very straightforward by delegating the rendering of each different type of content to the content itself.
@z

@x
## Create a content view
@y
## Create a content view
@z

@x
To create a new view, create a template in each of your different content type directories with the view name. The following example contains an "li" view and a "summary" view for the `posts` and `project` content types. As you can see, these sit next to the [single template], `single.html`. You can even provide a specific view for a given type and continue to use the `_default/single.html` for the primary view.
@y
To create a new view, create a template in each of your different content type directories with the view name. The following example contains an "li" view and a "summary" view for the `posts` and `project` content types. As you can see, these sit next to the [single template], `single.html`. You can even provide a specific view for a given type and continue to use the `_default/single.html` for the primary view.
@z

@x
```txt
  ▾ layouts/
    ▾ posts/
        li.html
        single.html
        summary.html
    ▾ project/
        li.html
        single.html
      summary.html
```
@y
```txt
  ▾ layouts/
    ▾ posts/
        li.html
        single.html
        summary.html
    ▾ project/
        li.html
        single.html
      summary.html
```
@z

@x
## Which template will be rendered?
@y
## Which template will be rendered?
@z

@x
The following is the lookup order for content views ordered by specificity.
@y
The following is the lookup order for content views ordered by specificity.
@z

@x
1. `/layouts/<TYPE>/<VIEW>.html`
1. `/layouts/<SECTION>/<VIEW>.html`
1. `/layouts/_default/<VIEW>.html`
1. `/themes/<THEME>/layouts/<TYPE>/<VIEW>.html`
1. `/themes/<THEME>/layouts/<SECTION>/<VIEW>.html`
1. `/themes/<THEME>/layouts/_default/<VIEW>.html`
@y
1. `/layouts/<TYPE>/<VIEW>.html`
1. `/layouts/<SECTION>/<VIEW>.html`
1. `/layouts/_default/<VIEW>.html`
1. `/themes/<THEME>/layouts/<TYPE>/<VIEW>.html`
1. `/themes/<THEME>/layouts/<SECTION>/<VIEW>.html`
1. `/themes/<THEME>/layouts/_default/<VIEW>.html`
@z

@x
## Example: content view inside a list
@y
## Example: content view inside a list
@z

@x
### `list.html`
@y
### `list.html`
@z

@x
In this example, `.Render` is passed into the template to call the [render function][render]. `.Render` is a special function that instructs content to render itself with the view template provided as the first argument. In this case, the template is going to render the `summary.html` view that follows:
@y
In this example, `.Render` is passed into the template to call the [render function][render]. `.Render` is a special function that instructs content to render itself with the view template provided as the first argument. In this case, the template is going to render the `summary.html` view that follows:
@z

@x
{{< code file=layouts/_default/list.html >}}
<main id="main">
  <div>
    <h1 id="title">{{ .Title }}</h1>
    {{ range .Pages }}
      {{ .Render "summary" }}
    {{ end }}
  </div>
</main>
{{< /code >}}
@y
{{< code file=layouts/_default/list.html >}}
<main id="main">
  <div>
    <h1 id="title">{{ .Title }}</h1>
    {{ range .Pages }}
      {{ .Render "summary" }}
    {{ end }}
  </div>
</main>
{{< /code >}}
@z

@x
### `summary.html`
@y
### `summary.html`
@z

@x
Hugo passes the `Page` object to the following `summary.html` view template.
@y
Hugo passes the `Page` object to the following `summary.html` view template.
@z

@x
{{< code file=layouts/_default/summary.html >}}
<article class="post">
  <header>
    <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
    <div class="post-meta">{{ .Date.Format "Mon, Jan 2, 2006" }} - {{ .FuzzyWordCount }} Words </div>
  </header>
  {{ .Summary }}
  <footer>
  <a href='{{ .RelPermalink }}'>Read&nbsp;more&nbsp;&raquo;</a>
  </footer>
</article>
{{< /code >}}
@y
{{< code file=layouts/_default/summary.html >}}
<article class="post">
  <header>
    <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
    <div class="post-meta">{{ .Date.Format "Mon, Jan 2, 2006" }} - {{ .FuzzyWordCount }} Words </div>
  </header>
  {{ .Summary }}
  <footer>
  <a href='{{ .RelPermalink }}'>Read&nbsp;more&nbsp;&raquo;</a>
  </footer>
</article>
{{< /code >}}
@z

@x
### `li.html`
@y
### `li.html`
@z

@x
Continuing on the previous example, we can change our render function to use a smaller `li.html` view by changing the argument in the call to the `.Render` function (i.e., `{{ .Render "li" }}`).
@y
Continuing on the previous example, we can change our render function to use a smaller `li.html` view by changing the argument in the call to the `.Render` function (i.e., `{{ .Render "li" }}`).
@z

@x
{{< code file=layouts/_default/li.html >}}
<li>
  <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
  <div class="meta">{{ .Date.Format "Mon, Jan 2, 2006" }}</div>
</li>
{{< /code >}}
@y
{{< code file=layouts/_default/li.html >}}
<li>
  <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
  <div class="meta">{{ .Date.Format "Mon, Jan 2, 2006" }}</div>
</li>
{{< /code >}}
@z

@x
[render]: /methods/page/render/
[single template]: /templates/types/#single
[summaries]: /content-management/summaries/
[taxonomy template]: /templates/types/#taxonomy
@y
[render]: /methods/page/render/
[single template]: /templates/types/#single
[summaries]: /content-management/summaries/
[taxonomy template]: /templates/types/#taxonomy
@z
