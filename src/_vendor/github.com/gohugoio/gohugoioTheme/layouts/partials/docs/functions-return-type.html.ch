%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
{{- with .Params.action.returnType }}
  <p class="fw7 primary-color-dark">Returns</p>
  <pre class="f5 ph3 pv2 bg-light-gray" style="border-left:4px solid #0594CB;">
    {{- . -}}
  </pre>
{{- end -}}
@y
{{- with .Params.action.returnType }}
  <p class="fw7 primary-color-dark">{{ T "returns" }}</p>
  <pre class="f5 ph3 pv2 bg-light-gray" style="border-left:4px solid #0594CB;">
    {{- . -}}
  </pre>
{{- end -}}
@z
