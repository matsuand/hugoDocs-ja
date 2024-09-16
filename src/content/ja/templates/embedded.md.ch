%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Embedded templates
description: Hugo provides embedded templates for common use cases.
categories: [templates]
keywords: []
menu:
  docs:
    parent: templates
    weight: 200
weight: 200
toc: true
aliases: [/templates/internal]
---
@y
---
title: Embedded templates
description: Hugo provides embedded templates for common use cases.
categories: [templates]
keywords: []
menu:
  docs:
    parent: templates
    weight: 200
weight: 200
toc: true
aliases: [/templates/internal]
---
@z

@x
## Disqus
@y
## Disqus
@z

@x
{{% note %}}
To override Hugo's embedded Disqus template, copy the [source code] to a file with the same name in the layouts/partials directory, then call it from your templates using the [`partial`] function:
@y
{{% note %}}
To override Hugo's embedded Disqus template, copy the [source code] to a file with the same name in the layouts/partials directory, then call it from your templates using the [`partial`] function:
@z

@x
`{{ partial "disqus.html" . }}`
@y
`{{ partial "disqus.html" . }}`
@z

@x
[`partial`]: /functions/partials/include/
[source code]: {{% eturl disqus %}}
{{% /note %}}
@y
[`partial`]: /functions/partials/include/
[source code]: {{% eturl disqus %}}
{{% /note %}}
@z

@x
Hugo includes an embedded template for [Disqus], a popular commenting system for both static and dynamic websites. To effectively use Disqus, secure a Disqus "shortname" by [signing up] for the free service.
@y
Hugo includes an embedded template for [Disqus], a popular commenting system for both static and dynamic websites. To effectively use Disqus, secure a Disqus "shortname" by [signing up] for the free service.
@z

@x
[Disqus]: https://disqus.com
[signing up]: https://disqus.com/profile/signup/
@y
[Disqus]: https://disqus.com
[signing up]: https://disqus.com/profile/signup/
@z

@x
To include the embedded template:
@y
To include the embedded template:
@z

@x
```go-html-template
{{ template "_internal/disqus.html" . }}
```
@y
```go-html-template
{{ template "_internal/disqus.html" . }}
```
@z

@x
### Configure Disqus
@y
### Configure Disqus
@z

@x
To use Hugo's Disqus template, first set up a single configuration value:
@y
To use Hugo's Disqus template, first set up a single configuration value:
@z

@x
{{< code-toggle file="hugo" >}}
[services.disqus]
shortname = 'your-disqus-shortname'
{{</ code-toggle >}}
@y
{{< code-toggle file="hugo" >}}
[services.disqus]
shortname = 'your-disqus-shortname'
{{</ code-toggle >}}
@z

@x
Hugo's Disqus template accesses this value with:
@y
Hugo's Disqus template accesses this value with:
@z

@x
```go-html-template
{{ .Site.Config.Services.Disqus.Shortname }}
```
@y
```go-html-template
{{ .Site.Config.Services.Disqus.Shortname }}
```
@z

@x
You can also set the following in the front matter for a given piece of content:
@y
You can also set the following in the front matter for a given piece of content:
@z

@x
- `disqus_identifier`
- `disqus_title`
- `disqus_url`
@y
- `disqus_identifier`
- `disqus_title`
- `disqus_url`
@z

@x
## Google Analytics
@y
## Google Analytics
@z

@x
{{% note %}}
To override Hugo's embedded Google Analytics template, copy the [source code] to a file with the same name in the layouts/partials directory, then call it from your templates using the [`partial`] function:
@y
{{% note %}}
To override Hugo's embedded Google Analytics template, copy the [source code] to a file with the same name in the layouts/partials directory, then call it from your templates using the [`partial`] function:
@z

@x
`{{ partial "google_analytics.html" . }}`
@y
`{{ partial "google_analytics.html" . }}`
@z

@x
[`partial`]: /functions/partials/include/
[source code]: {{% eturl google_analytics %}}
{{% /note %}}
@y
[`partial`]: /functions/partials/include/
[source code]: {{% eturl google_analytics %}}
{{% /note %}}
@z

@x
Hugo includes an embedded template supporting [Google Analytics 4].
@y
Hugo includes an embedded template supporting [Google Analytics 4].
@z

@x
[Google Analytics 4]: https://support.google.com/analytics/answer/10089681
@y
[Google Analytics 4]: https://support.google.com/analytics/answer/10089681
@z

@x
To include the embedded template:
@y
To include the embedded template:
@z

@x
```go-html-template
{{ template "_internal/google_analytics.html" . }}
```
@y
```go-html-template
{{ template "_internal/google_analytics.html" . }}
```
@z

@x
### Configure Google Analytics
@y
### Configure Google Analytics
@z

@x
Provide your tracking ID in your configuration file:
@y
Provide your tracking ID in your configuration file:
@z

@x
{{< code-toggle file=hugo >}}
[services.googleAnalytics]
ID = "G-MEASUREMENT_ID"
{{</ code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[services.googleAnalytics]
ID = "G-MEASUREMENT_ID"
{{</ code-toggle >}}
@z

@x
To use this value in your own template, access the configured ID with `{{ site.Config.Services.GoogleAnalytics.ID }}`.
@y
To use this value in your own template, access the configured ID with `{{ site.Config.Services.GoogleAnalytics.ID }}`.
@z

@x
## Open Graph
@y
## Open Graph
@z

@x
{{% note %}}
To override Hugo's embedded Open Graph template, copy the [source code] to a file with the same name in the layouts/partials directory, then call it from your templates using the [`partial`] function:
@y
{{% note %}}
To override Hugo's embedded Open Graph template, copy the [source code] to a file with the same name in the layouts/partials directory, then call it from your templates using the [`partial`] function:
@z

@x
`{{ partial "opengraph.html" . }}`
@y
`{{ partial "opengraph.html" . }}`
@z

@x
[`partial`]: /functions/partials/include/
[source code]: {{% eturl opengraph %}}
{{% /note %}}
@y
[`partial`]: /functions/partials/include/
[source code]: {{% eturl opengraph %}}
{{% /note %}}
@z

@x
Hugo includes an embedded template for the [Open Graph protocol](https://ogp.me/), metadata that enables a page to become a rich object in a social graph.
This format is used for Facebook and some other sites.
@y
Hugo includes an embedded template for the [Open Graph protocol](https://ogp.me/), metadata that enables a page to become a rich object in a social graph.
This format is used for Facebook and some other sites.
@z

@x
To include the embedded template:
@y
To include the embedded template:
@z

@x
```go-html-template
{{ template "_internal/opengraph.html" . }}
```
@y
```go-html-template
{{ template "_internal/opengraph.html" . }}
```
@z

@x
### Configure Open Graph
@y
### Configure Open Graph
@z

@x
Hugo's Open Graph template is configured using a mix of configuration settings and [front matter](/content-management/front-matter/) on individual pages.
@y
Hugo's Open Graph template is configured using a mix of configuration settings and [front matter](/content-management/front-matter/) on individual pages.
@z

@x
{{< code-toggle file=hugo >}}
[params]
  description = 'Text about my cool site'
  images = ['site-feature-image.jpg']
  title = 'My cool site'
  [params.social]
  facebook_admin = 'jsmith'
[taxonomies]
  series = 'series'
{{</ code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[params]
  description = 'Text about my cool site'
  images = ['site-feature-image.jpg']
  title = 'My cool site'
  [params.social]
  facebook_admin = 'jsmith'
[taxonomies]
  series = 'series'
{{</ code-toggle >}}
@z

@x
{{< code-toggle file=content/blog/my-post.md fm=true >}}
title = "Post title"
description = "Text about this post"
date = 2024-03-08T08:18:11-08:00
images = ["post-cover.png"]
audio = []
videos = []
series = []
tags = []
{{</ code-toggle >}}
@y
{{< code-toggle file=content/blog/my-post.md fm=true >}}
title = "Post title"
description = "Text about this post"
date = 2024-03-08T08:18:11-08:00
images = ["post-cover.png"]
audio = []
videos = []
series = []
tags = []
{{</ code-toggle >}}
@z

@x
Hugo uses the page title and description for the title and description metadata.
The first 6 URLs from the `images` array are used for image metadata.
If [page bundles](/content-management/page-bundles/) are used and the `images` array is empty or undefined, images with file names matching `*feature*`, `*cover*`, or `*thumbnail*` are used for image metadata.
@y
Hugo uses the page title and description for the title and description metadata.
The first 6 URLs from the `images` array are used for image metadata.
If [page bundles](/content-management/page-bundles/) are used and the `images` array is empty or undefined, images with file names matching `*feature*`, `*cover*`, or `*thumbnail*` are used for image metadata.
@z

@x
Various optional metadata can also be set:
@y
Various optional metadata can also be set:
@z

@x
- Date, published date, and last modified data are used to set the published time metadata if specified.
- `audio` and `videos` are URL arrays like `images` for the audio and video metadata tags, respectively.
- The first 6 `tags` on the page are used for the tags metadata.
- The `series` taxonomy is used to specify related "see also" pages by placing them in the same series.
@y
- Date, published date, and last modified data are used to set the published time metadata if specified.
- `audio` and `videos` are URL arrays like `images` for the audio and video metadata tags, respectively.
- The first 6 `tags` on the page are used for the tags metadata.
- The `series` taxonomy is used to specify related "see also" pages by placing them in the same series.
@z

@x
If using YouTube this will produce a og:video tag like `<meta property="og:video" content="url">`. Use the `https://youtu.be/<id>` format with YouTube videos (example: `https://youtu.be/qtIqKaDlqXo`).
@y
If using YouTube this will produce a og:video tag like `<meta property="og:video" content="url">`. Use the `https://youtu.be/<id>` format with YouTube videos (example: `https://youtu.be/qtIqKaDlqXo`).
@z

@x
## Schema
@y
## Schema
@z

@x
{{% note %}}
To override Hugo's embedded Schema template, copy the [source code] to a file with the same name in the layouts/partials directory, then call it from your templates using the [`partial`] function:
@y
{{% note %}}
To override Hugo's embedded Schema template, copy the [source code] to a file with the same name in the layouts/partials directory, then call it from your templates using the [`partial`] function:
@z

@x
`{{ partial "schema.html" . }}`
@y
`{{ partial "schema.html" . }}`
@z

@x
[`partial`]: /functions/partials/include/
[source code]: {{% eturl schema %}}
{{% /note %}}
@y
[`partial`]: /functions/partials/include/
[source code]: {{% eturl schema %}}
{{% /note %}}
@z

@x
Hugo includes an embedded template to render [microdata] `meta` elements within the `head` element of your templates.
@y
Hugo includes an embedded template to render [microdata] `meta` elements within the `head` element of your templates.
@z

@x
[microdata]: https://html.spec.whatwg.org/multipage/microdata.html#microdata
@y
[microdata]: https://html.spec.whatwg.org/multipage/microdata.html#microdata
@z

@x
To include the embedded template:
@y
To include the embedded template:
@z

@x
```go-html-template
{{ template "_internal/schema.html" . }}
```
@y
```go-html-template
{{ template "_internal/schema.html" . }}
```
@z

@x
## X (Twitter) Cards
@y
## X (Twitter) Cards
@z

@x
{{% note %}}
To override Hugo's embedded Twitter Cards template, copy the [source code] to a file with the same name in the layouts/partials directory, then call it from your templates using the [`partial`] function:
@y
{{% note %}}
To override Hugo's embedded Twitter Cards template, copy the [source code] to a file with the same name in the layouts/partials directory, then call it from your templates using the [`partial`] function:
@z

@x
`{{ partial "twitter_cards.html" . }}`
@y
`{{ partial "twitter_cards.html" . }}`
@z

@x
[`partial`]: /functions/partials/include/
[source code]: {{% eturl twitter_cards %}}
{{% /note %}}
@y
[`partial`]: /functions/partials/include/
[source code]: {{% eturl twitter_cards %}}
{{% /note %}}
@z

@x
Hugo includes an embedded template for [X (Twitter) Cards](https://developer.x.com/en/docs/twitter-for-websites/cards/overview/abouts-cards),
metadata used to attach rich media to Tweets linking to your site.
@y
Hugo includes an embedded template for [X (Twitter) Cards](https://developer.x.com/en/docs/twitter-for-websites/cards/overview/abouts-cards),
metadata used to attach rich media to Tweets linking to your site.
@z

@x
To include the embedded template:
@y
To include the embedded template:
@z

@x
```go-html-template
{{ template "_internal/twitter_cards.html" . }}
```
@y
```go-html-template
{{ template "_internal/twitter_cards.html" . }}
```
@z

@x
### Configure X (Twitter) Cards
@y
### Configure X (Twitter) Cards
@z

@x
Hugo's X (Twitter) Card template is configured using a mix of configuration settings and [front-matter](/content-management/front-matter/) values on individual pages.
@y
Hugo's X (Twitter) Card template is configured using a mix of configuration settings and [front-matter](/content-management/front-matter/) values on individual pages.
@z

@x
{{< code-toggle file=hugo >}}
[params]
  images = ["site-feature-image.jpg"]
  description = "Text about my cool site"
{{</ code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[params]
  images = ["site-feature-image.jpg"]
  description = "Text about my cool site"
{{</ code-toggle >}}
@z

@x
{{< code-toggle file=content/blog/my-post.md >}}
title = "Post title"
description = "Text about this post"
images = ["post-cover.png"]
{{</ code-toggle >}}
@y
{{< code-toggle file=content/blog/my-post.md >}}
title = "Post title"
description = "Text about this post"
images = ["post-cover.png"]
{{</ code-toggle >}}
@z

@x
If [page bundles](/content-management/page-bundles/) are used and the `images` array is empty or undefined, images with file names matching `*feature*`, `*cover*`, or `*thumbnail*` are used for image metadata.
If no image resources with those names are found, the images defined in the [site config](/getting-started/configuration/) are used instead.
If no images are found at all, then an image-less Twitter `summary` card is used instead of `summary_large_image`.
@y
If [page bundles](/content-management/page-bundles/) are used and the `images` array is empty or undefined, images with file names matching `*feature*`, `*cover*`, or `*thumbnail*` are used for image metadata.
If no image resources with those names are found, the images defined in the [site config](/getting-started/configuration/) are used instead.
If no images are found at all, then an image-less Twitter `summary` card is used instead of `summary_large_image`.
@z

@x
Hugo uses the page title and description for the card's title and description fields. The page summary is used if no description is given.
@y
Hugo uses the page title and description for the card's title and description fields. The page summary is used if no description is given.
@z

@x
Set the value of `twitter:site` in your site configuration:
@y
Set the value of `twitter:site` in your site configuration:
@z

@x
{{< code-toggle file="hugo" copy=false >}}
[params.social]
twitter = "GoHugoIO"
{{</ code-toggle >}}
@y
{{< code-toggle file="hugo" copy=false >}}
[params.social]
twitter = "GoHugoIO"
{{</ code-toggle >}}
@z

@x
NOTE: The `@` will be added for you
@y
NOTE: The `@` will be added for you
@z

@x
```html
<meta name="twitter:site" content="@GoHugoIO"/>
```
@y
```html
<meta name="twitter:site" content="@GoHugoIO"/>
```
@z
