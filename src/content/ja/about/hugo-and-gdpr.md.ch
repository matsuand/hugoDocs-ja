%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Hugo and the General Data Protection Regulation
linkTitle: Hugo and the GDPR
description: About how to configure your Hugo site to meet the new regulations.
categories: [about]
keywords: ["GDPR", "Privacy", "Data Protection"]
menu:
  docs:
    parent: about
    weight: 60
weight: 60
toc: true
aliases: [/privacy/,/gdpr/]
---
@y
---
title: Hugo and the General Data Protection Regulation
linkTitle: Hugo and the GDPR
description: About how to configure your Hugo site to meet the new regulations.
categories: [about]
keywords: ["GDPR", "Privacy", "Data Protection"]
menu:
  docs:
    parent: about
    weight: 60
weight: 60
toc: true
aliases: [/privacy/,/gdpr/]
---
@z

@x
 General Data Protection Regulation ([GDPR](https://en.wikipedia.org/wiki/General_Data_Protection_Regulation)) is a regulation in EU law on data protection and privacy for all individuals within the European Union and the European Economic Area. It became enforceable on 25 May 2018.
@y
 General Data Protection Regulation ([GDPR](https://en.wikipedia.org/wiki/General_Data_Protection_Regulation)) is a regulation in EU law on data protection and privacy for all individuals within the European Union and the European Economic Area. It became enforceable on 25 May 2018.
@z

@x
 **Hugo is a static site generator. By using Hugo you are already standing on very solid ground. Static HTML files on disk are much easier to reason about compared to server and database driven web sites.**
@y
 **Hugo is a static site generator. By using Hugo you are already standing on very solid ground. Static HTML files on disk are much easier to reason about compared to server and database driven web sites.**
@z

@x
 But even static websites can integrate with external services, so from version `0.41`, Hugo provides a **privacy configuration** that covers the relevant built-in templates.
@y
 But even static websites can integrate with external services, so from version `0.41`, Hugo provides a **privacy configuration** that covers the relevant built-in templates.
@z

@x
 Note that:
@y
 Note that:
@z

@x
 * These settings have their defaults setting set to _off_, i.e. how it worked before Hugo `0.41`. You must do your own evaluation of your site and apply the appropriate settings.
 * These settings work with the [internal templates](/templates/internal/). Some theme may contain custom templates for embedding services like Google Analytics. In that case these options have no effect.
 * We will continue this work and improve this further in future Hugo versions.
@y
 * These settings have their defaults setting set to _off_, i.e. how it worked before Hugo `0.41`. You must do your own evaluation of your site and apply the appropriate settings.
 * These settings work with the [internal templates](/templates/internal/). Some theme may contain custom templates for embedding services like Google Analytics. In that case these options have no effect.
 * We will continue this work and improve this further in future Hugo versions.
@z

@x
## All privacy settings
@y
## All privacy settings
@z

@x
Below are all privacy settings and their default value. These settings need to be put in your site configuration (e.g. `hugo.toml`).
@y
Below are all privacy settings and their default value. These settings need to be put in your site configuration (e.g. `hugo.toml`).
@z

@x
{{< code-toggle file=hugo >}}
[privacy]
[privacy.disqus]
disable = false
[privacy.googleAnalytics]
disable = false
respectDoNotTrack = false
anonymizeIP = false
useSessionStorage = false
[privacy.instagram]
disable = false
simple = false
[privacy.twitter]
disable = false
enableDNT = false
simple = false
[privacy.vimeo]
disable = false
enableDNT = false
simple = false
[privacy.youtube]
disable = false
privacyEnhanced = false
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[privacy]
[privacy.disqus]
disable = false
[privacy.googleAnalytics]
disable = false
respectDoNotTrack = false
anonymizeIP = false
useSessionStorage = false
[privacy.instagram]
disable = false
simple = false
[privacy.twitter]
disable = false
enableDNT = false
simple = false
[privacy.vimeo]
disable = false
enableDNT = false
simple = false
[privacy.youtube]
disable = false
privacyEnhanced = false
{{< /code-toggle >}}
@z

@x
## Disable all services
@y
## Disable all services
@z

@x
An example privacy configuration that disables all the relevant services in Hugo. With this configuration, the other settings will not matter.
@y
An example privacy configuration that disables all the relevant services in Hugo. With this configuration, the other settings will not matter.
@z

@x
{{< code-toggle file=hugo >}}
[privacy]
[privacy.disqus]
disable = true
[privacy.googleAnalytics]
disable = true
[privacy.instagram]
disable = true
[privacy.twitter]
disable = true
[privacy.vimeo]
disable = true
[privacy.youtube]
disable = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[privacy]
[privacy.disqus]
disable = true
[privacy.googleAnalytics]
disable = true
[privacy.instagram]
disable = true
[privacy.twitter]
disable = true
[privacy.vimeo]
disable = true
[privacy.youtube]
disable = true
{{< /code-toggle >}}
@z

@x
## The privacy settings explained
@y
## The privacy settings explained
@z

@x
### GoogleAnalytics
@y
### GoogleAnalytics
@z

@x
anonymizeIP
: Enabling this will make it so the users' IP addresses are anonymized within Google Analytics.
@y
anonymizeIP
: Enabling this will make it so the users' IP addresses are anonymized within Google Analytics.
@z

@x
respectDoNotTrack
: Enabling this will make the GA templates respect the "Do Not Track" HTTP header.
@y
respectDoNotTrack
: Enabling this will make the GA templates respect the "Do Not Track" HTTP header.
@z

@x
useSessionStorage
: Enabling this will disable the use of Cookies and use Session Storage to Store the GA Client ID.
@y
useSessionStorage
: Enabling this will disable the use of Cookies and use Session Storage to Store the GA Client ID.
@z

@x
{{% note %}}
`useSessionStorage` is not supported when using Google Analytics v4 (gtag.js).
{{% /note %}}
@y
{{% note %}}
`useSessionStorage` is not supported when using Google Analytics v4 (gtag.js).
{{% /note %}}
@z

@x
### Instagram
@y
### Instagram
@z

@x
simple
: If simple mode is enabled, a static and no-JS version of the Instagram image card will be built. Note that this only supports image cards and the image itself will be fetched from Instagram's servers.
@y
simple
: If simple mode is enabled, a static and no-JS version of the Instagram image card will be built. Note that this only supports image cards and the image itself will be fetched from Instagram's servers.
@z

@x
**Note:** If you use the _simple mode_ for Instagram and a site styled with Bootstrap 4, you may want to disable the inline styles provided by Hugo:
@y
**Note:** If you use the _simple mode_ for Instagram and a site styled with Bootstrap 4, you may want to disable the inline styles provided by Hugo:
@z

@x
{{< code-toggle file=hugo >}}
[services]
[services.instagram]
disableInlineCSS = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[services]
[services.instagram]
disableInlineCSS = true
{{< /code-toggle >}}
@z

@x
### Twitter
@y
### Twitter
@z

@x
enableDNT
: Enabling this for the twitter/tweet shortcode, the tweet and its embedded page on your site are not used for purposes that include personalized suggestions and personalized ads.
@y
enableDNT
: Enabling this for the twitter/tweet shortcode, the tweet and its embedded page on your site are not used for purposes that include personalized suggestions and personalized ads.
@z

@x
simple
: If simple mode is enabled, a static and no-JS version of a tweet will be built.
@y
simple
: If simple mode is enabled, a static and no-JS version of a tweet will be built.
@z

@x
**Note:** If you use the _simple mode_ for Twitter, you may want to disable the inline styles provided by Hugo:
@y
**Note:** If you use the _simple mode_ for Twitter, you may want to disable the inline styles provided by Hugo:
@z

@x
{{< code-toggle file=hugo >}}
[services]
[services.twitter]
disableInlineCSS = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[services]
[services.twitter]
disableInlineCSS = true
{{< /code-toggle >}}
@z

@x
### YouTube
@y
### YouTube
@z

@x
privacyEnhanced
: When you turn on privacy-enhanced mode, YouTube won’t store information about visitors on your website unless the user plays the embedded video.
@y
privacyEnhanced
: When you turn on privacy-enhanced mode, YouTube won’t store information about visitors on your website unless the user plays the embedded video.
@z

@x
### Vimeo
@y
### Vimeo
@z

@x
enableDNT
: Enabling this for the vimeo shortcode, the Vimeo player will be blocked from tracking any session data, including all cookies and stats.
@y
enableDNT
: Enabling this for the vimeo shortcode, the Vimeo player will be blocked from tracking any session data, including all cookies and stats.
@z

@x
simple
: If simple mode is enabled, the video thumbnail is fetched from Vimeo's servers and it is overlaid with a play button. If the user clicks to play the video, it will open in a new tab directly on Vimeo's website.
@y
simple
: If simple mode is enabled, the video thumbnail is fetched from Vimeo's servers and it is overlaid with a play button. If the user clicks to play the video, it will open in a new tab directly on Vimeo's website.
@z
