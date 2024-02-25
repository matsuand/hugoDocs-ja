%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
{{- $heading := "See also" }}
{{- $related := site.RegularPages.Related . | first 5 }}
@y
{{- $heading := "関連項目" }}
{{- $related := site.RegularPages.Related . | first 5 }}
@z

@x
{{- if in (slice "functions" "methods") .Type }}
  {{- $related = slice }}
  {{- range .Params.action.related }}
    {{- with site.GetPage (lower .) }}
      {{- $related = $related | append . }}
    {{- else }}
      {{- errorf "The 'related' partial was unable to get page %s" . }}
    {{- end }}
  {{- end }}
{{- end }}
@y
{{- if in (slice "functions" "methods") .Type }}
  {{- $related = slice }}
  {{- range .Params.action.related }}
    {{- with site.GetPage (lower .) }}
      {{- $related = $related | append . }}
    {{- else }}
      {{- errorf "The 'related' partial was unable to get page %s" . }}
    {{- end }}
  {{- end }}
{{- end }}
@z

@x
{{- with $related }}
  <h2>{{ $heading }}</h2>
  <ul>
    {{- range . }}
      <li><a href="{{ .RelPermalink }}">{{ .Title }}</a></li>
    {{- end }}
  </ul>
{{- end }}
@y
{{- with $related }}
  <h2>{{ $heading }}</h2>
  <ul>
    {{- range . }}
      <li><a href="{{ .RelPermalink }}">{{ .Title }}</a></li>
    {{- end }}
  </ul>
{{- end }}
@z
