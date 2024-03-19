%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% i18n 対応

@x (T "alias"), (T "aliases")
{{- with .Params.action.aliases }}
  {{- $label := "Alias" }}
  {{- if gt (len .) 1 }}
    {{- $label = "Aliases" }}
  {{- end }}
  <p class="fw7 primary-color-dark">{{ $label }}</p>
  {{- range . }}
    <pre class="f5 ph3 pv2 bg-light-gray" style="border-left:4px solid #0594CB;">
      {{- . -}}
    </pre>
  {{- end }}
{{- end -}}
@y
{{- with .Params.action.aliases }}
  {{- $label := (T "alias") }}
  {{- if gt (len .) 1 }}
    {{- $label = (T "aliases") }}
  {{- end }}
  <p class="fw7 primary-color-dark">{{ $label }}</p>
  {{- range . }}
    <pre class="f5 ph3 pv2 bg-light-gray" style="border-left:4px solid #0594CB;">
      {{- . -}}
    </pre>
  {{- end }}
{{- end -}}
@z
