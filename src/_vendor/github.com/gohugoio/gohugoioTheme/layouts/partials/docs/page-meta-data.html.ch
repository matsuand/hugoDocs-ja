%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
<h6 class="f6 dark-gray mb2">
  Last updated: {{ .Lastmod.Format "January 2, 2006" }}{{ with .GitInfo }}: <a class="hide-child link primary-color" href="{{$.Site.Params.ghrepo}}commit/{{ .Hash }}">{{ .Subject }} ({{ .AbbreviatedHash }})</a>{{end }}
</h6>
@y
<h6 class="f6 dark-gray mb2">
  最終更新日付: {{ .Lastmod.Format "2006/01/01" }}{{ with .GitInfo }}: <a class="hide-child link primary-color" href="{{$.Site.Params.ghrepo}}commit/{{ .Hash }}">{{ .Subject }} ({{ .AbbreviatedHash }})</a>{{end }}
</h6>
@z
