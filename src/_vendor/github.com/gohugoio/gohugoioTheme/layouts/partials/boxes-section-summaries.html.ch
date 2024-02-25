%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% i18n 対応

@x
<div class="relative {{ .classes }} weight-{{ .context.Weight }}">
  <div class="bg-white mb2 pa3 pa4-l gray">
@y
<div class="relative {{ .classes }} weight-{{ .context.Weight }}">
  <div class="bg-white mb2 pa3 pa4-l gray">
@z

@x
    {{ $href := .context.RelPermalink }}
    {{ if eq .context.Section "news" }}
      {{ $href = .context.Permalink }}
      <time class="f6 db" datetime="{{ .context.Date.Format `2006-01-02T15:04:05Z07:00` }}">
        {{ .context.Date.Format "January 2, 2006" }}
      </time>
    {{ end }}
@y
    {{ $href := .context.RelPermalink }}
    {{ if eq .context.Section "news" }}
      {{ $href = .context.Permalink }}
      <time class="f6 db" datetime="{{ .context.Date.Format `2006-01-02T15:04:05Z07:00` }}">
        {{ .context.Date.Format "January 2, 2006" }}
      </time>
    {{ end }}
@z

@x
    <h1 class="near-black f3">
      <a href="{{ $href }}" class="link primary-color dim">
        {{ .context.Title }}
      </a>
    </h1>
    <div class="lh-copy links">
      {{ if eq .context.Section "commands" }}
        {{ replaceRE `(?s).*?##\s.*?\n\n(.*?)\n.*` "$1" .context.RawContent  }}
      {{ else }}
@y
    <h1 class="near-black f3">
      <a href="{{ $href }}" class="link primary-color dim">
        {{ .context.Title }}
      </a>
    </h1>
    <div class="lh-copy links">
      {{ if eq .context.Section "commands" }}
        {{ replaceRE `(?s).*?##\s.*?\n\n(.*?)\n.*` "$1" .context.RawContent  }}
      {{ else }}
@z

@x
        {{ if in (slice "functions" "methods") .context.Type }}
          {{ with $signature := index .context.Params.action.signatures 0 }}
            {{ if $.context.Params.action.returnType }}
              {{ $signature = printf "%s ⟼ %s" $signature $.context.Params.action.returnType }}
            {{ end }}
            <pre class="f6 mb3 ph3 pv2 bg-light-gray overflow-x-auto">
              {{- $signature -}}
            </pre>
          {{ end }}
        {{ end }}
@y
        {{ if in (slice "functions" "methods") .context.Type }}
          {{ with $signature := index .context.Params.action.signatures 0 }}
            {{ if $.context.Params.action.returnType }}
              {{ $signature = printf "%s ⟼ %s" $signature $.context.Params.action.returnType }}
            {{ end }}
            <pre class="f6 mb3 ph3 pv2 bg-light-gray overflow-x-auto">
              {{- $signature -}}
            </pre>
          {{ end }}
        {{ end }}
@z

@x
        {{ if .context.Params.description  }}
          {{ .context.Params.description | markdownify }}
        {{ else }}
          {{ .context.Summary  }}
        {{ end }}
@y
        {{ if .context.Params.description  }}
          {{ .context.Params.description | markdownify }}
        {{ else }}
          {{ .context.Summary  }}
        {{ end }}
@z

@x {{ i18n "readMore" }}
      {{ end }}
      <a href="{{ $href }}" class="f6 mt2 db link primary-color dim">
        Read More &raquo;
      </a>
    </div>
@y
      {{ end }}
      <a href="{{ $href }}" class="f6 mt2 db link primary-color dim">
        {{ i18n "readMore" }} &raquo;
      </a>
    </div>
@z

@x
  </div>
</div>
@y
  </div>
</div>
@z
