%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
{{- printf "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?>" | safeHTML }}
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
  <channel>
    <title>Hugo News</title>
    <description>Recent news about Hugo, a static site generator written in Go, optimized for speed and designed for flexibility.</description>
    <link>{{ .Permalink }}</link>
    <generator>Hugo {{ hugo.Version }}</generator>
    <language>{{ or site.Language.LanguageCode site.Language.Lang }}</language>
    {{- with site.Copyright }}
      <copyright>{{ . }}</copyright>
    {{- end }}
    {{- with .OutputFormats.Get "RSS" }}
      {{ printf "<atom:link href=%q rel=\"self\" type=%q />" .Permalink .MediaType | safeHTML }}
    {{- end }}
@y
{{- printf "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?>" | safeHTML }}
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
  <channel>
    <title>Hugo News</title>
    <description>Recent news about Hugo, a static site generator written in Go, optimized for speed and designed for flexibility.</description>
    <link>{{ .Permalink }}</link>
    <generator>Hugo {{ hugo.Version }}</generator>
    <language>{{ or site.Language.LanguageCode site.Language.Lang }}</language>
    {{- with site.Copyright }}
      <copyright>{{ . }}</copyright>
    {{- end }}
    {{- with .OutputFormats.Get "RSS" }}
      {{ printf "<atom:link href=%q rel=\"self\" type=%q />" .Permalink .MediaType | safeHTML }}
    {{- end }}
@z

@x
    {{- $news_items := slice }}
@y
    {{- $news_items := slice }}
@z

@x
    {{- /* Get releases from GitHub. */}}
    {{- $u := "https://api.github.com/repos/gohugoio/hugo/releases" }}
    {{- $releases := partial "utilities/get-remote-data.html" $u }}
    {{- $releases = where $releases "draft" false }}
    {{- $releases = where $releases "prerelease" false }}
    {{- range $releases | first 20 }}
      {{- $summary := printf
        "Hugo %s was released on %s. See [release notes](%s) for details."
        .tag_name
        (.published_at | time.AsTime | time.Format "2 Jan 2006")
        .html_url
      }}
      {{- $ctx := dict
        "PublishDate" (.published_at | time.AsTime)
        "Title" (printf "Release %s" .name)
        "Permalink" .html_url
        "Section" "news"
        "Summary" ($summary | $.Page.RenderString)
      }}
      {{- $news_items = $news_items | append $ctx }}
    {{- end }}
@y
    {{- /* Get releases from GitHub. */}}
    {{- $u := "https://api.github.com/repos/gohugoio/hugo/releases" }}
    {{- $releases := partial "utilities/get-remote-data.html" $u }}
    {{- $releases = where $releases "draft" false }}
    {{- $releases = where $releases "prerelease" false }}
    {{- range $releases | first 20 }}
      {{- $summary := printf
        "Hugo %s was released on %s. See [release notes](%s) for details."
        .tag_name
        (.published_at | time.AsTime | time.Format "2 Jan 2006")
        .html_url
      }}
      {{- $ctx := dict
        "PublishDate" (.published_at | time.AsTime)
        "Title" (printf "Release %s" .name)
        "Permalink" .html_url
        "Section" "news"
        "Summary" ($summary | $.Page.RenderString)
      }}
      {{- $news_items = $news_items | append $ctx }}
    {{- end }}
@z

@x
    {{- /* Get content pages from news section. */}}
    {{- range .Pages }}
      {{- $ctx := dict
        "PublishDate" .PublishDate
        "Title" .Title
        "RelPermalink" .RelPermalink
        "Section" "news"
        "Summary" .Summary
        "Params" (dict "description" .Description)
      }}
      {{- $news_items = $news_items | append $ctx }}
    {{- end }}
    {{- /* Sort, limit, and render lastBuildDate. */}}
    {{- $limit := cond (gt site.Config.Services.RSS.Limit 1) site.Config.Services.RSS.Limit 999 }}
    {{- $news_items = sort $news_items "PublishDate" "desc" | first $limit }}
    <lastBuildDate>{{ (index $news_items 0).PublishDate.Format "Mon, 02 Jan 2006 15:04:05 -0700" | safeHTML }}</lastBuildDate>
@y
    {{- /* Get content pages from news section. */}}
    {{- range .Pages }}
      {{- $ctx := dict
        "PublishDate" .PublishDate
        "Title" .Title
        "RelPermalink" .RelPermalink
        "Section" "news"
        "Summary" .Summary
        "Params" (dict "description" .Description)
      }}
      {{- $news_items = $news_items | append $ctx }}
    {{- end }}
    {{- /* Sort, limit, and render lastBuildDate. */}}
    {{- $limit := cond (gt site.Config.Services.RSS.Limit 1) site.Config.Services.RSS.Limit 999 }}
    {{- $news_items = sort $news_items "PublishDate" "desc" | first $limit }}
    <lastBuildDate>{{ (index $news_items 0).PublishDate.Format "Mon, 02 Jan 2006 15:04:05 -0700" | safeHTML }}</lastBuildDate>
@z

@x
    {{- /* Render items. */}}
    {{- range $news_items }}
      <item>
        <title>{{ .Title }}</title>
        <link>{{ .Permalink }}</link>
        <pubDate>{{ .PublishDate.Format "Mon, 02 Jan 2006 15:04:05 -0700" | safeHTML }}</pubDate>
        <guid>{{ .Permalink }}</guid>
        <description>{{ .Summary | transform.XMLEscape | safeHTML }}</description>
      </item>
    {{- end }}
  </channel>
</rss>
@y
    {{- /* Render items. */}}
    {{- range $news_items }}
      <item>
        <title>{{ .Title }}</title>
        <link>{{ .Permalink }}</link>
        <pubDate>{{ .PublishDate.Format "Mon, 02 Jan 2006 15:04:05 -0700" | safeHTML }}</pubDate>
        <guid>{{ .Permalink }}</guid>
        <description>{{ .Summary | transform.XMLEscape | safeHTML }}</description>
      </item>
    {{- end }}
  </channel>
</rss>
@z
