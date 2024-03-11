%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% stylesheet 対応 (workaround..)

@x
        <figure style="padding: 0.25rem; margin: 2rem 0; background-color: #cccc">
          <img style="max-width: 100%; width: auto; height: auto;" src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
@y
        {{ $link := .RelPermalink }}
        <figure style="padding: 0.25rem; margin: 2rem 0; background-color: #cccc">
          <img style="max-width: 100%; width: auto; height: auto;" src="{{ replace $link "/hugoDocs-ja/en" "" }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
@z