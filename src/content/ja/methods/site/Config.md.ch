%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Config
description: Returns a subset of the site configuration.
categories: []
keywords: []
action:
  related: []
  returnType: page.SiteConfig
  signatures: [SITE.Config]
toc: true
---
@y
---
title: Config
description: Returns a subset of the site configuration.
categories: []
keywords: []
action:
  related: []
  returnType: page.SiteConfig
  signatures: [SITE.Config]
toc: true
---
@z

@x
The `Config` method on a `Site` object provides access to a subset of the site configuration, specifically the `services` and `privacy` keys.
@y
The `Config` method on a `Site` object provides access to a subset of the site configuration, specifically the `services` and `privacy` keys.
@z

@x
## Services
@y
## Services
@z

@x
These are the default service settings, typically used by Hugo's built-in templates and shortcodes.
@y
These are the default service settings, typically used by Hugo's built-in templates and shortcodes.
@z

@x
{{< code-toggle config=services />}}
@y
{{< code-toggle config=services />}}
@z

@x
For example, to use Hugo's built-in Google Analytics template you must add a [Google tag ID]:
@y
For example, to use Hugo's built-in Google Analytics template you must add a [Google tag ID]:
@z

@x
[Google tag ID]: https://support.google.com/tagmanager/answer/12326985?hl=en
@y
[Google tag ID]: https://support.google.com/tagmanager/answer/12326985?hl=en
@z

@x
{{< code-toggle file=hugo >}}
[services.googleAnalytics]
id = 'G-XXXXXXXXX'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[services.googleAnalytics]
id = 'G-XXXXXXXXX'
{{< /code-toggle >}}
@z

@x
To access this value from a template:
@y
To access this value from a template:
@z

@x
```go-html-template
{{ .Site.Config.Services.GoogleAnalytics.ID }} → G-XXXXXXXXX
```
@y
```go-html-template
{{ .Site.Config.Services.GoogleAnalytics.ID }} → G-XXXXXXXXX
```
@z

@x
You must capitalize each identifier as shown above.
@y
You must capitalize each identifier as shown above.
@z

@x
## Privacy
@y
## Privacy
@z

@x
These are the default privacy settings, typically used by Hugo's built-in templates and shortcodes:
@y
These are the default privacy settings, typically used by Hugo's built-in templates and shortcodes:
@z

@x
{{< code-toggle config=privacy />}}
@y
{{< code-toggle config=privacy />}}
@z

@x
For example, to disable usage of the built-in YouTube shortcode:
@y
For example, to disable usage of the built-in YouTube shortcode:
@z

@x
{{< code-toggle file=hugo >}}
[privacy.youtube]
disable = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[privacy.youtube]
disable = true
{{< /code-toggle >}}
@z

@x
To access this value from a template:
@y
To access this value from a template:
@z

@x
```go-html-template
{{ .Site.Config.Privacy.YouTube.Disable }} → true
```
@y
```go-html-template
{{ .Site.Config.Privacy.YouTube.Disable }} → true
```
@z

@x
You must capitalize each identifier as shown above.
@y
You must capitalize each identifier as shown above.
@z
