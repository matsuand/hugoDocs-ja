%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
{{ $currentPage := . }}
<nav class="bg-primary-color-dark pv4 w-100" role="navigation">
@y
{{ $currentPage := . }}
<nav class="bg-primary-color-dark pv4 w-100" role="navigation">
@z

@x
  <div class="center flex-ns flex-wrap items-center justify-start mw9">
@y
  <div class="center flex-ns flex-wrap items-center justify-start mw9">
@z

@x
    <h1 class="dim f3 lh-solid ml0-ns mr0 mr4-l mv0 pl3 pl4-ns">
      <a href="https://gohugo.io/" class="link white">
         HUGO
      </a>
    </h1>
@y
    <h1 class="dim f3 lh-solid ml0-ns mr0 mr4-l mv0 pl3 pl4-ns">
      <a href="{{ .Site.BaseURL }}" class="link white">
         HUGO
         {{ if eq site.Language.Lang "ja" }}
           <sup>{{ print .Site.LanguageCode | markdownify }}</sup>
           <sub>非公式</sub>
         {{ end }}
      </a>
    </h1>
@z

@x
    <ul class="list ma0 pa0 dn dib-l" role="menu">
      {{ range .Site.Menus.global }}
        <li class="f5 dib mr4" role="menuitem">
            {{/* TODO: Create an "Global" active class to show which site one is currently at */}}
          <a href="{{ .URL }}" class="dim link{{ if $currentPage.IsMenuCurrent "global" . }} gray {{else}} light-silver{{ end }}">
            {{ .Name }}
              {{/* using ".Post" from the menu system to determine if we should show an icon for external links */}}
            {{ $post_status := printf "%s" .Post }}
            {{ if eq $post_status "external" }}
              <span class="pl1">
                {{ partial "svg/link-ext.svg" (dict "size" "10") }}
              </span>
            {{ end }}
          </a>
        </li>
      {{ end }}
    </ul>
@y
    <ul class="list ma0 pa0 dn dib-l" role="menu">
      {{ range .Site.Menus.global }}
        <li class="f5 dib mr4" role="menuitem">
            {{/* TODO: Create an "Global" active class to show which site one is currently at */}}
          <a href="{{ .URL }}" class="dim link{{ if $currentPage.IsMenuCurrent "global" . }} gray {{else}} light-silver{{ end }}">
            {{ .Name }}
              {{/* using ".Post" from the menu system to determine if we should show an icon for external links */}}
            {{ $post_status := printf "%s" .Post }}
            {{ if eq $post_status "external" }}
              <span class="pl1">
                {{ partial "svg/link-ext.svg" (dict "size" "10") }}
              </span>
            {{ end }}
          </a>
        </li>
      {{ end }}
    </ul>
@z

@x
    <div class="db dib-ns pl3">
      {{- partial "site-search.html" . -}}
    </div>
@y
    <div class="db dib-ns pl3">
      {{- partial "site-search.html" . -}}
    </div>
@z

@x
    <div class="absolute mt1 mt2-l pr3 right-0 top-0 flex items-start">
      {{- partialCached "social-follow.html" . -}}
    </div>
@y
    <div class="absolute mt1 mt2-l pr3 right-0 top-0 flex items-start">
      {{- partialCached "social-follow.html" . -}}
    </div>
@z

@x
  </div>
</nav>
@y
  </div>
  {{ if eq site.Language.Lang "ja" }}
    <div style="height:0" class="f6 center silver">　　暫定公開中 __THISDATE__ (<a href="https://github.com/gohugoio/hugoDocs/commit/__COMMITHASH__" target="_blank"><font color="#999">__COMMITHASH__ 対応, __COMMITDATE__</font></a>)</div>
  {{ end }}
</nav>
@z
