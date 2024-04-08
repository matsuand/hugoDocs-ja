%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
{{ define "main" }}
<div class="w-100 ph4 ph5-ns pb5 pb6-ns pt1 pt3-ns ">
@y
{{ define "main" }}
<div class="w-100 ph4 ph5-ns pb5 pb6-ns pt1 pt3-ns ">
@z

@x
  <article class="cf pa3 pa4-m pa4-l nested-copy-line-height nested-img">
    <h1 class="primary-color-dark">
      {{ .Title }}
    </h1>
    <div class="nested-copy-line-height">
      {{ .Content }}
    </div>
  </article>
@y
  <article class="cf pa3 pa4-m pa4-l nested-copy-line-height nested-img">
    <h1 class="primary-color-dark">
      {{ .Title }}
    </h1>
    <div class="nested-copy-line-height">
      {{ .Content }}
    </div>
  </article>
@z

@x
  <div class="flex flex-wrap">
    {{ $interior_classes := $.Site.Params.flex_box_interior_classes }}
    <section class="flex-ns flex-wrap justify-between w-100 w-80-nsTK v-top">
@y
  <div class="flex flex-wrap">
    {{ $interior_classes := $.Site.Params.flex_box_interior_classes }}
    <section class="flex-ns flex-wrap justify-between w-100 w-80-nsTK v-top">
@z

@x
      {{ $news_items := slice }}
@y
      {{ $news_items := slice }}
@z

@x
      {{/* Get releases from GitHub. */}}
      {{ $u := "https://api.github.com/repos/gohugoio/hugo/releases" }}
      {{ $releases := partial "utilities/get-remote-data.html" $u }}
      {{ $releases = where $releases "draft" false }}
      {{ $releases = where $releases "prerelease" false }}
      {{ range $releases | first 20 }}
        {{ $ctx := dict
          "Date" (.published_at | time.AsTime)
          "Title" (printf "Release %s" .name)
          "Permalink" .html_url
          "Section" "news"
          "Summary" ""
        }}
        {{ $news_items = $news_items | append $ctx }}
      {{ end }}
@y
      {{/* Get releases from GitHub. */}}
      {{ $u := "https://api.github.com/repos/gohugoio/hugo/releases" }}
      {{ $releases := partial "utilities/get-remote-data.html" $u }}
      {{ $releases = where $releases "draft" false }}
      {{ $releases = where $releases "prerelease" false }}
      {{ range $releases | first 20 }}
        {{ $ctx := dict
          "Date" (.published_at | time.AsTime)
          "Title" (printf "Release %s" .name)
          "Permalink" .html_url
          "Section" "news"
          "Summary" ""
        }}
        {{ $news_items = $news_items | append $ctx }}
      {{ end }}
@z

@x
      {{/* Get content pages from news section. */}}
      {{ range .Pages }}
        {{ $ctx := dict
          "Date" .Date
          "Title" .Title
          "RelPermalink" .RelPermalink
          "Section" "news"
          "Summary" .Summary
          "Params" (dict "description" .Description)
        }}
        {{ $news_items = $news_items | append $ctx }}
      {{ end }}
@y
      {{/* Get content pages from news section. */}}
      {{ range .Pages }}
        {{ $ctx := dict
          "Date" .Date
          "Title" .Title
          "RelPermalink" .RelPermalink
          "Section" "news"
          "Summary" .Summary
          "Params" (dict "description" .Description)
        }}
        {{ $news_items = $news_items | append $ctx }}
      {{ end }}
@z

@x
      {{/* Sort by date (descending) and render. */}}
      {{ range sort $news_items "Date" "desc" }}
        {{ partial "boxes-section-summaries.html" (dict "context" . "classes" $interior_classes "fullcontent" false) }}
      {{ end }}
@y
      {{/* Sort by date (descending) and render. */}}
      {{ range sort $news_items "Date" "desc" }}
        {{ partial "boxes-section-summaries.html" (dict "context" . "classes" $interior_classes "fullcontent" false) }}
      {{ end }}
@z

@x
    </section>
  </div>
@y
    </section>
  </div>
@z

@x
</div>
{{ end }}
@y
</div>
{{ end }}
@z
