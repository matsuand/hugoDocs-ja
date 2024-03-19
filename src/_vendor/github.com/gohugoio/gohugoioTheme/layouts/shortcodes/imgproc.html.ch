%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% stylesheet 対応 (workaround..)
%   RelPermalink から Permalink に変更
%   イメージの場合 en を参照する
@x
        <figure style="padding: 0.25rem; margin: 2rem 0; background-color: #cccc">
          <img style="max-width: 100%; width: auto; height: auto;" src="{{ .RelPermalink }}" width="{{ .Width }}" height="{{ .Height }}" alt="">
@y
        <figure style="padding: 0.25rem; margin: 2rem 0; background-color: #cccc">
          {{ $link := .Permalink }}
          <img style="max-width: 100%; width: auto; height: auto;" src="{{ $link }}" width="{{ .Width }}" height="{{ .Height }}" alt="{{ .Permalink }}">
@z
