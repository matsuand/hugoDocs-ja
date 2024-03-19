%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% git リポジトリ対応／.ch 対応

@x
			<th class="pv2 ph3 tl f6 fw6 ttu">LastMod</th>
			<th class="pv2 ph3 tl f6 fw6 ttu">Link</th>
			<th class="pv2 ph3 tl f6 fw6 ttu">GitHub</th>
@y
			<th class="pv2 ph3 tl f6 fw6 ttu">LastMod</th>
			<th class="pv2 ph3 tl f6 fw6 ttu">Link</th>
			<th class="pv2 ph3 tl f6 fw6 ttu">GitHub</th>
@z

@x
			<td class="pv2 ph3">{{ .Lastmod.Format "2006-01-02" }}</td>
			<td class="pv2 ph3">
				<a href="{{ .Permalink }}">{{ .Title }}</a>
			</td>
			<td class="pv2 ph3">
				<a href="{{ .Site.Params.ghrepo }}blob/master/content/{{ .Language.Lang }}/{{ .File.Path }}">
					{{ with .GitInfo }}{{ .Subject }}{{ else }}Source{{ end }}
				</a>
			</td>
@y
			<td class="pv2 ph3">{{ .Lastmod.Format "2006-01-02" }}</td>
			<td class="pv2 ph3">
				<a href="{{ .Permalink }}">{{ .Title }}</a>
			</td>
			<td class="pv2 ph3">
				<a href="{{ .Site.Params.ghrepo }}blob/main/src/content/{{ .Language.Lang }}/{{ .File.Path }}.ch">
					{{ with .GitInfo }}{{ .Subject }}{{ else }}Source{{ end }}
				</a>
			</td>
@z
