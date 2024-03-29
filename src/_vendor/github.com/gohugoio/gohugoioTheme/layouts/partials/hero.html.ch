%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% {{ T "quickStart" }}
% {{ T "siteParamsDescription" }}
@x
<header class="bg-primary-color-dark ph4 tc" role="banner">
  <section class="center pb4 pb5-l ph4-l pt3 pt5-ns w-90 w-60-l">
    <div class="center w-100 w-50-ns">
        <img src="/images/hugo-logo-wide.svg" alt="Hugo Logo">
    </div>
    {{ with .Site.Params.description }}
      <h2 class="f3 f1-l fw4 white-90 m0 lh-title pt2 pb3 pv0-ns">
        {{ . }}
      </h2>
    {{ end }}
    <div class="lh-copy f4 w-90-ns center fw2 silver tc tc-ns">
      {{ .Content }}
    </div>
    <div class="w4 mv4 center">
      <a class="f5 db link grow tc v-mid bg-blue white ba b--blue ph3 pv2 br1" href="/getting-started/quick-start/">Quick Start</a>
    </div>
  </section>
</header>
@y
<header class="bg-primary-color-dark ph4 tc" role="banner">
  <section class="center pb4 pb5-l ph4-l pt3 pt5-ns w-90 w-60-l">
    <div class="center w-100 w-50-ns">
        <img src="/images/hugo-logo-wide.svg" alt="Hugo Logo">
    </div>
    {{ with .Site.Params.description }}
      <h2 class="f3 f1-l fw4 white-90 m0 lh-title pt2 pb3 pv0-ns">
        {{ T "siteParamsDescription" }}
      </h2>
    {{ end }}
    <div class="lh-copy f4 w-90-ns center fw2 silver tc tc-ns">
      {{ .Content }}
    </div>
    <div class="w4 mv4 center">
      <a class="f5 db link grow tc v-mid bg-blue white ba b--blue ph3 pv2 br1" href="/getting-started/quick-start/">{{ T "quickStart" }}</a>
    </div>
  </section>
</header>
@z
