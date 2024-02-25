%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
{{ $section_to_display := .section_to_display  }}
  <div class="w-100 ph4 pb5 pb6-ns pt1 mt4 pt3-ns">
@y
{{ $section_to_display := .section_to_display  }}
  <div class="w-100 ph4 pb5 pb6-ns pt1 mt4 pt3-ns">
@z

@x
  <div class="flex">
    <div class="dn db-l w-20">
        {{ partial "nav-links-docs.html" .context }}
    </div>
@y
  <div class="flex">
    <div class="dn db-l w-20">
        {{ partial "nav-links-docs.html" .context }}
    </div>
@z

@x
    <div class="w-100 w-80-l ph0 ph4-l">
      <article class="w-100 nested-copy-line-height nested-links nested-img">
        <h1 class="primary-color-dark f2">
          {{ with $.context.Data.Singular }}{{ . | humanize }}: {{ end }}{{ .context.Title }}
        </h1>
        <div class="{{ .Site.Params.copyClass }} mid-gray f5 f4-l">
          {{ .context.Content }}
        </div>
      </article>
@y
    <div class="w-100 w-80-l ph0 ph4-l">
      <article class="w-100 nested-copy-line-height nested-links nested-img">
        <h1 class="primary-color-dark f2">
          {{ if eq site.Language.Lang "ja" }}
          {{   with $.context.Data.Singular }}{{ i18n "categoryTitle" }}： {{ end }}
          {{   if in (slice "categories" "commands") .context.Type }}
          {{     i18n (upper .context.Title) }}
          {{   else }}
          {{     .context.Title }}
          {{   end }}
          {{ else }}
          {{   with $.context.Data.Singular }}{{ . | humanize }}: {{ end }}{{ .context.Title }}
          {{ end }}
        </h1>
        <div class="{{ .Site.Params.copyClass }} mid-gray f5 f4-l">
          {{ .context.Content }}
        </div>
      </article>
@z

@x
      <div class="flex flex-wrap">
        {{ $interior_classes := .context.Site.Params.flex_box_interior_classes }}
        <section class="flex-ns flex-wrap justify-between w-100">
          {{ $pages := $section_to_display }}
          {{ if in (slice "functions" "methods") $.context.Type }}
            {{ $pages = $.context.Pages }}
          {{ end }}
          {{ range $pages }}
            {{ partial "boxes-section-summaries.html" (dict "context" . "classes" $interior_classes "fullcontent" true) }}
          {{ end }}
        </section>
      </div>
@y
      <div class="flex flex-wrap">
        {{ $interior_classes := .context.Site.Params.flex_box_interior_classes }}
        <section class="flex-ns flex-wrap justify-between w-100">
          {{ $pages := $section_to_display }}
          {{ if in (slice "functions" "methods") $.context.Type }}
            {{ $pages = $.context.Pages }}
          {{ end }}
          {{ range $pages }}
            {{ partial "boxes-section-summaries.html" (dict "context" . "classes" $interior_classes "fullcontent" true) }}
          {{ end }}
        </section>
      </div>
@z

@x
    </div>
@y
    </div>
@z

@x
  </div>
@y
  </div>
@z

@x
</div>
@y
</div>
@z
