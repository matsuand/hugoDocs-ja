%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
<header class="flex-none w-100">
  {{ if in (slice "functions" "methods") .Type }}
    {{ with .FirstSection }}
      <a href="{{ .RelPermalink }}" class="f6 fw8 mb0 link mid-gray dim mr3">
        {{ humanize .Title | upper }}
      </a>
    {{ end }}
@y
<header class="flex-none w-100">
  {{ if in (slice "functions" "methods") .Type }}
    {{ with .FirstSection }}
      <a href="{{ .RelPermalink }}" class="f6 fw8 mb0 link mid-gray dim mr3">
        {{ humanize .Title | upper }}
      </a>
    {{ end }}
@z

@x
    {{ with .CurrentSection }}
      <a href="{{ .RelPermalink }}" class="f6 fw8 mb0 link mid-gray dim mr3">
        {{ humanize .Title | upper }}
      </a>
    {{ end }}
@y
    {{ with .CurrentSection }}
      <a href="{{ .RelPermalink }}" class="f6 fw8 mb0 link mid-gray dim mr3">
        {{ humanize .Title | upper }}
      </a>
    {{ end }}
@z

@x
  {{ else }}
    {{ range .Params.categories }}
      <a href="{{ "/categories/" | relLangURL }}{{ . | urlize }}" class="f6 fw8 mb0 link mid-gray dim mr3">
        {{ humanize . | upper }}
      </a>
    {{ end }}
  {{ end }}
@y
  {{ else }}
    {{ range .Params.categories }}
      <a href="{{ "/categories/" | relLangURL }}{{ . | urlize }}" class="f6 fw8 mb0 link mid-gray dim mr3">
        {{ if ne site.Language.Lang "en" }}
        {{   i18n (humanize . | upper) }}
        {{ else }}
        {{ humanize . | upper }}
        {{ end }}
      </a>
    {{ end }}
  {{ end }}
@z

@x
  <h1 class="lh-title mb3 mv0 pt3 primary-color-dark">
    {{ .Title }}
  </h1>
</header>
@y
  <h1 class="lh-title mb3 mv0 pt3 primary-color-dark">
    {{ .Title }}
  </h1>
</header>
@z

@x
<aside class="bt bw1 pt3 mt2 mid-gray b--mid-gray fn w-100">
  {{ with .Params.description }}
    <div class="mb4 f4 fw4 lh-copy">
      {{ . | markdownify }}
    </div>
  {{ end }}
@y
<aside class="bt bw1 pt3 mt2 mid-gray b--mid-gray fn w-100">
  {{ with .Params.description }}
    <div class="mb4 f4 fw4 lh-copy">
      {{ . | markdownify }}
    </div>
  {{ end }}
@z

@x
  <!--
  NOTE: Removed to test builds without it.
  partial "components/author-github-data" (dict "context" . "size" "110") -->
</aside>
@y
  <!--
  NOTE: Removed to test builds without it.
  partial "components/author-github-data" (dict "context" . "size" "110") -->
</aside>
@z

@x
{{ with .Params.featured_image_path }}
  <img src="{{ . }}" alt="Featured Image for {{ $.Title }}" class="mw-100">
{{ end }}
@y
{{ with .Params.featured_image_path }}
  <img src="{{ . }}" alt="Featured Image for {{ $.Title }}" class="mw-100">
{{ end }}
@z

@x
<div class="prose" id="prose">
  <div class="mb4">
    {{- partial "docs/functions-signatures.html" . -}}
    {{- partial "docs/functions-return-type.html" . -}}
    {{- partial "docs/functions-aliases.html" . -}}
  </div>
  {{ .Content }}
</div>
@y
<div class="prose" id="prose">
  <div class="mb4">
    {{- partial "docs/functions-signatures.html" . -}}
    {{- partial "docs/functions-return-type.html" . -}}
    {{- partial "docs/functions-aliases.html" . -}}
  </div>
  {{ .Content }}
</div>
@z
