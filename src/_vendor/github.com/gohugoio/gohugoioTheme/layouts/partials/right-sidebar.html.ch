%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
<aside class="right-0 f6 pv4 pv0-ns ph4-l nested-list-reset nested-copy-line-height">
  <div class="nested-links">
    {{- partial "previous-next-links-in-section.html" . }}
  </div>
@y
<aside class="right-0 f6 pv4 pv0-ns ph4-l nested-list-reset nested-copy-line-height">
  <div class="nested-links">
    {{- partial "previous-next-links-in-section.html" . }}
  </div>
@z

@x
  {{- /* Table of contents is visible if toc = true in front matter. */}}
	{{- if .Params.toc }}
    <div class="nested-links">
      <p class="f5 fw8 mid-gray mb0">On this page</p>
      {{- .TableOfContents }}
    </div>
	{{- end }}
@y
  {{- /* Table of contents is visible if toc = true in front matter. */}}
	{{- if .Params.toc }}
    <div class="nested-links">
      <p class="f5 fw8 mid-gray mb0">{{ T "onThisPage" }}</p>
      {{- .TableOfContents }}
    </div>
	{{- end }}
@z

@x
  {{- /* Section menu for single pages is visible if showSectionMenu = true in top level section page. */}}
  {{- if .FirstSection.Params.showSectionMenu  }}
    {{- with .CurrentSection.RegularPages }}
      <p class="mb0"><a class="link f5 fw8 mid-gray" href="{{ $.CurrentSection.RelPermalink }}">In this section</a></p>
      <nav>
        <ul>
          {{- range . }}
            <li>
              <a style="padding: 2px 5px;" class="dib link hover-bg-black-40 hover-white blue nl1" href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
            </li>
          {{- end }}
        </ul>
      </nav>
    {{- end }}
  {{- end }}
</aside>
@y
  {{- /* Section menu for single pages is visible if showSectionMenu = true in top level section page. */}}
  {{- if .FirstSection.Params.showSectionMenu  }}
    {{- with .CurrentSection.RegularPages }}
      <p class="mb0"><a class="link f5 fw8 mid-gray" href="{{ $.CurrentSection.RelPermalink }}">{{ T "inThisSection" }}</a></p>
      <nav>
        <ul>
          {{- range . }}
            <li>
              <a style="padding: 2px 5px;" class="dib link hover-bg-black-40 hover-white blue nl1" href="{{ .RelPermalink }}">{{ .LinkTitle }}</a>
            </li>
          {{- end }}
        </ul>
      </nav>
    {{- end }}
  {{- end }}
</aside>
@z
