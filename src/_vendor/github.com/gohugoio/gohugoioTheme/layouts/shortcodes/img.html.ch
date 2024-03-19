%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% stylesheet 対応 (workaround..)

@x
{{- /* Render. */}}
{{- if $example }}
  <p>Original</p>
  <img class='di ba b--black-20' style="width: initial;" src="{{ $i.RelPermalink }}" alt="{{ $alt }}">
  <p>Processed</p>
  <img class='di ba b--black-20' style="width: initial;" src="{{ $fi.RelPermalink }}" alt="{{ $alt }}">
{{- else -}}
  <img class='di' style="width: initial;" src="{{ $fi.RelPermalink }}" alt="{{ $alt }}">
{{- end }}
@y
{{- /* Render. */}}
{{ $flink := (replace $fi.RelPermalink "/hugoDocs-ja/en" "" ) }}
{{- if $example }}
  <p>Original</p>
  {{ $link := (replace $i.RelPermalink "/hugoDocs-ja/en" "" ) }}
  <img class='di ba b--black-20' style="width: initial;" src="{{ $link }}" alt="{{ $alt }}">
  <p>Processed</p>
  <img class='di ba b--black-20' style="width: initial;" src="{{ $flink }}" alt="{{ $alt }}">
{{- else -}}
  <img class='di' style="width: initial;" src="{{ $flink }}" alt="{{ $alt }}">
{{- end }}
@z

