%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% stylesheet 対応 (workaround..)

@x
  {{ if  $isDev }}
  <script type="text/javascript" src="{{ .RelPermalink }}" crossorigin="anonymous" defer></script>
  {{ else }}
  <script type="text/javascript" src="{{ .RelPermalink }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous" defer></script>
  {{ end }}
  {{ $.Scratch.Set "scripts" . }}    
@y
  {{ $link := .RelPermalink }}
  {{ if  $isDev }}
  <script type="text/javascript" src="{{ replace $link "/hugoDocs-ja/en" "" }}" crossorigin="anonymous" defer></script>
  {{ else }}
  <script type="text/javascript" src="{{ replace $link "/hugoDocs-ja/en" "" }}" integrity="{{ .Data.Integrity }}" crossorigin="anonymous" defer></script>
  {{ end }}
  {{ $.Scratch.Set "scripts" . }}    
@z
