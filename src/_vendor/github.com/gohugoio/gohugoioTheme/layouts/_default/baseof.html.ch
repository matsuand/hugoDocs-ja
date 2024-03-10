%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% stylesheet 対応 (workaround..)

@x
      {{ else }}
        <link
          rel="stylesheet"
          href="{{ .RelPermalink }}"
          integrity="{{ .Data.Integrity }}"
          crossorigin="anonymous" />
@y
      {{ else }}
        {{ $link := .RelPermalink }}
        <link
          rel="stylesheet"
          href="{{ replace $link "/hugoDocs-ja/en" "" }}"
          integrity="{{ .Data.Integrity }}"
          crossorigin="anonymous" />
@z
