%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
{{- with .Params.action.signatures }}
  <p class="fw7 primary-color-dark">Syntax</p>
  {{- range . }}
    {{- $signature := . }}
    {{- if $.Params.function.returnType }}
      {{- $signature = printf "%s ⟼ %s" . $.Params.function.returnType }}
    {{- end }}
    <pre class="f5 ph3 pv2 bg-light-gray overflow-x-auto" style="border-left:4px solid #0594CB;">
      {{- $signature -}}
    </pre>
  {{- end }}
{{- end -}}
@y
{{- with .Params.action.signatures }}
  <p class="fw7 primary-color-dark">{{ T "syntax" }}</p>
  {{- range . }}
    {{- $signature := . }}
    {{- if $.Params.function.returnType }}
      {{- $signature = printf "%s ⟼ %s" . $.Params.function.returnType }}
    {{- end }}
    <pre class="f5 ph3 pv2 bg-light-gray overflow-x-auto" style="border-left:4px solid #0594CB;">
      {{- $signature -}}
    </pre>
  {{- end }}
{{- end -}}
@z
