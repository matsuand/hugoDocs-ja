%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x i18n 対応
    {{ range .Params.categories }}
      <a href="{{ "/categories/" | relLangURL }}{{ . | urlize }}" class="f6 fw8 mb0 link mid-gray dim mr3">
        {{ humanize . | upper }}
      </a>
@y
    {{ range .Params.categories }}
      <a href="{{ "/categories/" | relLangURL }}{{ . | urlize }}" class="f6 fw8 mb0 link mid-gray dim mr3">
        {{ if ne site.Language.Lang "en" }}
        {{   i18n (humanize . | upper) }}
        {{ else }}
        {{ humanize . | upper }}
        {{ end }}
      </a>
@z
