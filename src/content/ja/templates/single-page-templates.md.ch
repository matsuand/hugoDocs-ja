%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Single page templates
description: The primary view of content in Hugo is the single view. Hugo will render every Markdown file provided with a corresponding single template.
categories: [templates]
keywords: [page, templates]
@y
title: シングルページテンプレート
description: The primary view of content in Hugo is the single view. Hugo will render every Markdown file provided with a corresponding single template.
categories: [templates]
keywords: [page, templates]
@z

@x
## Single page template lookup order
@y
## Single page template lookup order
@z

@x
See [Template Lookup](/templates/lookup-order/).
@y
See [Template Lookup](/templates/lookup-order/).
@z

@x
## Example single page templates
@y
## Example single page templates
@z

@x
{{< code file=layouts/posts/single.html >}}
{{ define "main" }}
  <section id="main">
    <h1 id="title">{{ .Title }}</h1>
    <div>
      <article id="content">
        {{ .Content }}
      </article>
    </div>
  </section>
  <aside id="meta">
    <div>
      <section>
        <h4 id="date"> {{ .Date.Format "Mon Jan 2, 2006" }} </h4>
        <h5 id="wordcount"> {{ .WordCount }} Words</h5>
      </section>
      {{ with .GetTerms "topics" }}
        <ul id="topics">
          {{ range . }}
            <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
          {{ end }}
        </ul>
      {{ end }}
      {{ with .GetTerms "tags" }}
        <ul id="tags">
          {{ range . }}
            <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
          {{ end }}
        </ul>
      {{ end }}
    </div>
    <div>
      {{ with .PrevInSection }}
        <a class="previous" href="{{ .RelPermalink }}"> {{ .LinkTitle }}</a>
      {{ end }}
      {{ with .NextInSection }}
        <a class="next" href="{{ .RelPermalink }}"> {{ .LinkTitle }}</a>
      {{ end }}
    </div>
  </aside>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/posts/single.html >}}
{{ define "main" }}
  <section id="main">
    <h1 id="title">{{ .Title }}</h1>
    <div>
      <article id="content">
        {{ .Content }}
      </article>
    </div>
  </section>
  <aside id="meta">
    <div>
      <section>
        <h4 id="date"> {{ .Date.Format "Mon Jan 2, 2006" }} </h4>
        <h5 id="wordcount"> {{ .WordCount }} Words</h5>
      </section>
      {{ with .GetTerms "topics" }}
        <ul id="topics">
          {{ range . }}
            <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
          {{ end }}
        </ul>
      {{ end }}
      {{ with .GetTerms "tags" }}
        <ul id="tags">
          {{ range . }}
            <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
          {{ end }}
        </ul>
      {{ end }}
    </div>
    <div>
      {{ with .PrevInSection }}
        <a class="previous" href="{{ .RelPermalink }}"> {{ .LinkTitle }}</a>
      {{ end }}
      {{ with .NextInSection }}
        <a class="next" href="{{ .RelPermalink }}"> {{ .LinkTitle }}</a>
      {{ end }}
    </div>
  </aside>
{{ end }}
{{< /code >}}
@z

@x
To easily generate new instances of a content type (e.g., new `.md` files in a section like `project/`) with preconfigured front matter, use [content archetypes][archetypes].
@y
To easily generate new instances of a content type (e.g., new `.md` files in a section like `project/`) with preconfigured front matter, use [content archetypes][archetypes].
@z

@x
[archetypes]: /content-management/archetypes/
[base templates]: /templates/base/
[content type]: /content-management/types/
[directory structure]: /getting-started/directory-structure/
[dry]: https://en.wikipedia.org/wiki/Don%27t_repeat_yourself
[`.format` function]: /methods/time/format/
[front matter]: /content-management/front-matter/
[pagetaxonomy]: /templates/taxonomy-templates/#list-terms-assigned-to-a-page
[partials]: /templates/partials/
[section]: /content-management/sections/
[spf13]: https://spf13.com/
[`with`]: /functions/go-template/with/
@y
[archetypes]: /content-management/archetypes/
[base templates]: /templates/base/
[content type]: /content-management/types/
[directory structure]: /getting-started/directory-structure/
[dry]: https://en.wikipedia.org/wiki/Don%27t_repeat_yourself
[`.format` function]: /methods/time/format/
[front matter]: /content-management/front-matter/
[pagetaxonomy]: /templates/taxonomy-templates/#list-terms-assigned-to-a-page
[partials]: /templates/partials/
[section]: /content-management/sections/
[spf13]: https://spf13.com/
[`with`]: /functions/go-template/with/
@z
