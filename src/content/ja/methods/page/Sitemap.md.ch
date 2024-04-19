%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Sitemap
description: Returns the sitemap settings for the given page as defined in front matter, falling back to the sitemap settings as defined in the site configuration.
categories: []
keywords: []
action:
  related: []
  returnType: config.SitemapConfig
  signatures: [PAGE.Sitemap]
toc: true
---
@y
---
title: Sitemap
description: Returns the sitemap settings for the given page as defined in front matter, falling back to the sitemap settings as defined in the site configuration.
categories: []
keywords: []
action:
  related: []
  returnType: config.SitemapConfig
  signatures: [PAGE.Sitemap]
toc: true
---
@z

@x
Access to the `Sitemap` method on a `Page` object is restricted to [sitemap templates].
@y
Access to the `Sitemap` method on a `Page` object is restricted to [sitemap templates].
@z

@x
## Methods
@y
## Methods
@z

@x
changefreq
: (`string`) How frequently a page is likely to change. Valid values are `always`, `hourly`, `daily`, `weekly`, `monthly`, `yearly`, and `never`. With the default value of `""` Hugo will omit this field from the sitemap. See [details](https://www.sitemaps.org/protocol.html#changefreqdef).
@y
changefreq
: (`string`) How frequently a page is likely to change. Valid values are `always`, `hourly`, `daily`, `weekly`, `monthly`, `yearly`, and `never`. With the default value of `""` Hugo will omit this field from the sitemap. See [details](https://www.sitemaps.org/protocol.html#changefreqdef).
@z

@x
```go-html-template
{{ .Sitemap.ChangeFreq }}
```
@y
```go-html-template
{{ .Sitemap.ChangeFreq }}
```
@z

@x
disable {{< new-in 0.125.0 >}}
: (`bool`) Whether to disable page inclusion. Default is `false`. Set to `true` in front matter to exclude the page.
@y
disable {{< new-in 0.125.0 >}}
: (`bool`) Whether to disable page inclusion. Default is `false`. Set to `true` in front matter to exclude the page.
@z

@x
```go-html-template
{{ .Sitemap.Disable }}
```
@y
```go-html-template
{{ .Sitemap.Disable }}
```
@z

@x
priority
: (`float`) The priority of a page relative to any other page on the site. Valid values range from 0.0 to 1.0.  With the default value of `-1` Hugo will omit this field from the sitemap. See [details](https://www.sitemaps.org/protocol.html#priority).
@y
priority
: (`float`) The priority of a page relative to any other page on the site. Valid values range from 0.0 to 1.0.  With the default value of `-1` Hugo will omit this field from the sitemap. See [details](https://www.sitemaps.org/protocol.html#priority).
@z

@x
```go-html-template
{{ .Sitemap.Priority }}
```
@y
```go-html-template
{{ .Sitemap.Priority }}
```
@z

@x
## Example
@y
## Example
@z

@x
With this site configuration:
@y
With this site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[sitemap]
changeFreq = 'monthly'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[sitemap]
changeFreq = 'monthly'
{{< /code-toggle >}}
@z

@x
And this content:
@y
And this content:
@z

@x
{{< code-toggle file=content/news.md fm=true >}}
title = 'News'
[sitemap]
changeFreq = 'hourly'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/news.md fm=true >}}
title = 'News'
[sitemap]
changeFreq = 'hourly'
{{< /code-toggle >}}
@z

@x
And this simplistic sitemap template:
@y
And this simplistic sitemap template:
@z

@x
{{< code file=layouts/_default/sitemap.xml >}}
{{ printf "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?>" | safeHTML }}
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
  xmlns:xhtml="http://www.w3.org/1999/xhtml">
  {{ range .Pages }}
    <url>
      <loc>{{ .Permalink }}</loc>
      {{ if not .Lastmod.IsZero }}
        <lastmod>{{ .Lastmod.Format "2006-01-02T15:04:05-07:00" | safeHTML }}</lastmod>
      {{ end }}
      {{ with .Sitemap.ChangeFreq }}
        <changefreq>{{ . }}</changefreq>
      {{ end }}
    </url>
  {{ end }}
</urlset>
{{< /code >}}
@y
{{< code file=layouts/_default/sitemap.xml >}}
{{ printf "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?>" | safeHTML }}
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
  xmlns:xhtml="http://www.w3.org/1999/xhtml">
  {{ range .Pages }}
    <url>
      <loc>{{ .Permalink }}</loc>
      {{ if not .Lastmod.IsZero }}
        <lastmod>{{ .Lastmod.Format "2006-01-02T15:04:05-07:00" | safeHTML }}</lastmod>
      {{ end }}
      {{ with .Sitemap.ChangeFreq }}
        <changefreq>{{ . }}</changefreq>
      {{ end }}
    </url>
  {{ end }}
</urlset>
{{< /code >}}
@z

@x
The change frequency will be `hourly` for the news page, and `monthly` for other pages.
@y
The change frequency will be `hourly` for the news page, and `monthly` for other pages.
@z

@x
[sitemap templates]: /templates/sitemap-template/
@y
[sitemap templates]: /templates/sitemap-template/
@z
