%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
<footer class="bg-primary-color-dark ph4-ns pt4 relative w-100" role="contentinfo">
    <div class="center flex-ns flex-wrap justify-between mw9 w-90">
      <div class="pb3 pt4 w-100 w-50-ns">
@y
<footer class="bg-primary-color-dark ph4-ns pt4 relative w-100" role="contentinfo">
    <div class="center flex-ns flex-wrap justify-between mw9 w-90">
      <div class="pb3 pt4 w-100 w-50-ns">
@z

@x
         <div class="b f3  light-gray mb3 nested-links tc">
           By the <a href="https://github.com/gohugoio/hugo/graphs/contributors" class="link">Hugo Authors</a><br />
          </div>
@y
         <div class="b f3  light-gray mb3 nested-links tc">
           {{ T "byThe1" }}<a href="https://github.com/gohugoio/hugo/graphs/contributors" class="link">{{ T "hugoAuthors" }}</a>{{ T "byThe2" }}<br />
          </div>
@z

@x
          <div class="center w4">
            <img src="/images/hugo-logo-wide.svg" alt="Hugo Logo">
          </div>
@y
          <div class="center w4">
            <img src="/images/hugo-logo-wide.svg" alt="Hugo Logo">
          </div>
@z

@x
          <ul class="center f6 list ma0 mv3 pa0 tc">
            {{- with .Site.Params.github_repo -}}<li class="dib mr3"><a href="{{ . }}" class="dim link light-gray pv2">File an Issue</a></li>{{- end -}}
            {{- with .Site.Params.forum -}}<li class="dib mr3"><a href="{{ . }}" class="dim link light-gray pv2">Get Help</a></li>{{- end -}}
            {{- with .Site.Params.gitter -}}<li class="dib"><a href="{{ . }}" class="dim link light-gray pv2">Discuss Source Code</a></li>{{- end -}}
          </ul>
@y
          <ul class="center f6 list ma0 mv3 pa0 tc">
            {{- with .Site.Params.github_repo -}}<li class="dib mr3"><a href="{{ . }}" class="dim link light-gray pv2">{{ T "fileAnIssue" }}</a></li>{{- end -}}
            {{- with .Site.Params.forum -}}<li class="dib mr3"><a href="{{ . }}" class="dim link light-gray pv2">{{ T "getHelp" }}</a></li>{{- end -}}
            {{- with .Site.Params.gitter -}}<li class="dib"><a href="{{ . }}" class="dim link light-gray pv2">Discuss Source Code</a></li>{{- end -}}
          </ul>
@z

@x
          <ul class="center f6 list ma0 mv4 pa0 tc">
            <li class="dib mr3"><a href="https://twitter.com/gohugoio" class="dim link light-gray pv2">@GoHugoIO</a></li>
            <li class="dib mr3"><a href="https://twitter.com/spf13" class="dim link light-gray pv2">@spf13</a></li>
            <li class="dib"><a href="https://twitter.com/bepsays" class="dim link light-gray pv2">@bepsays</a></li>
          </ul>
@y
          <ul class="center f6 list ma0 mv4 pa0 tc">
            <li class="dib mr3"><a href="https://twitter.com/gohugoio" class="dim link light-gray pv2">@GoHugoIO</a></li>
            <li class="dib mr3"><a href="https://twitter.com/spf13" class="dim link light-gray pv2">@spf13</a></li>
            <li class="dib"><a href="https://twitter.com/bepsays" class="dim link light-gray pv2">@bepsays</a></li>
          </ul>
@z

@x
          {{ with  getenv "REPOSITORY_URL" -}}
          <p class="center f6 tc w-70"><a href="https://www.netlify.com"><img src="/images/netlify-dark.svg" alt="Netlify badge"></a></p>
          {{- end }}
@y
          {{ with  getenv "REPOSITORY_URL" -}}
          <p class="center f6 tc w-70"><a href="https://www.netlify.com"><img src="/images/netlify-dark.svg" alt="Netlify badge"></a></p>
          {{- end }}
@z

@x
      </div>
@y
      </div>
@z

@x
      <div class="w-100 w-50-l"> 
        {{ partial "home-page-sections/sponsors.html" (dict "cx" .  "gtag" "footer" "classes_section" "pb3 w-100" "classes_copy" "f7 w-90-ns") }}
      </div>
@y
      <div class="w-100 w-50-l"> 
        {{ partial "home-page-sections/sponsors.html" (dict "cx" .  "gtag" "footer" "classes_section" "pb3 w-100" "classes_copy" "f7 w-90-ns") }}
      </div>
@z

@x
    </div>
@y
    </div>
@z

@x
    <div class="f7 gray mb5 mb0-ns ph3 w-100"> 
      <p class="dib mr4">The Hugo logos are copyright © Steve Francia 2013–{{ now.Year }}.</p>
      <p class="dib">The Hugo Gopher is based on an original work by Renée French.</p>
    </div>
@y
    <div class="f7 gray mb5 mb0-ns ph3 w-100"> 
      <p class="dib mr4">The Hugo logos are copyright © Steve Francia 2013–{{ now.Year }}.</p>
      <p class="dib">The Hugo Gopher is based on an original work by Renée French.</p>
    </div>
@z

@x
    <img src="/images/gopher-side_color.svg" alt="" class="absolute-l bottom-0 dn db-l h4 right-0 z-999"/>
@y
    <img src="/images/gopher-side_color.svg" alt="" class="absolute-l bottom-0 dn db-l h4 right-0 z-999"/>
@z

@x
    <div class="bg-primary-color-dark bottom-0 left-0 right-0 dn-l fixed pb3 ph3 pt3 w-100 z-2">
      {{- partial "nav-mobile.html" . -}}
    </div>
@y
    <div class="bg-primary-color-dark bottom-0 left-0 right-0 dn-l fixed pb3 ph3 pt3 w-100 z-2">
      {{- partial "nav-mobile.html" . -}}
    </div>
@z

@x
</footer>
@y
</footer>
@z
