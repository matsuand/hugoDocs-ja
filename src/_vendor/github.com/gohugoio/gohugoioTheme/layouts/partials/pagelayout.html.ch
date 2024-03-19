%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% i18n 対応

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
