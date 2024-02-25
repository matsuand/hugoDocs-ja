%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Robots.txt file
linkTitle: Robots.txt
description: Hugo can generate a customized robots.txt in the same way as any other template.
categories: [templates]
keywords: [robots,search engines]
menu:
  docs:
    parent: templates
    weight: 230
weight: 230
aliases: [/extras/robots-txt/]
---
@y
---
title: Robots.txt file
linkTitle: Robots.txt
description: Hugo can generate a customized robots.txt in the same way as any other template.
categories: [templates]
keywords: [robots,search engines]
menu:
  docs:
    parent: templates
    weight: 230
weight: 230
aliases: [/extras/robots-txt/]
---
@z

@x
To generate a robots.txt file from a template, change the [site configuration]:
@y
To generate a robots.txt file from a template, change the [site configuration]:
@z

@x
{{< code-toggle file=hugo >}}
enableRobotsTXT = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
enableRobotsTXT = true
{{< /code-toggle >}}
@z

@x
By default, Hugo generates robots.txt using an [embedded template].
@y
By default, Hugo generates robots.txt using an [embedded template].
@z

@x
[embedded template]: {{% eturl robots %}}
@y
[embedded template]: {{% eturl robots %}}
@z

@x
```text
User-agent: *
```
@y
```text
User-agent: *
```
@z

@x
Search engines that honor the Robots Exclusion Protocol will interpret this as permission to crawl everything on the site.
@y
Search engines that honor the Robots Exclusion Protocol will interpret this as permission to crawl everything on the site.
@z

@x
## robots.txt template lookup order
@y
## robots.txt template lookup order
@z

@x
You may overwrite the internal template with a custom template. Hugo selects the template using this lookup order:
@y
You may overwrite the internal template with a custom template. Hugo selects the template using this lookup order:
@z

@x
1. `/layouts/robots.txt`
2. `/themes/<THEME>/layouts/robots.txt`
@y
1. `/layouts/robots.txt`
2. `/themes/<THEME>/layouts/robots.txt`
@z

@x
## robots.txt template example
@y
## robots.txt template example
@z

@x
{{< code file=layouts/robots.txt >}}
User-agent: *
{{ range .Pages }}
Disallow: {{ .RelPermalink }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/robots.txt >}}
User-agent: *
{{ range .Pages }}
Disallow: {{ .RelPermalink }}
{{ end }}
{{< /code >}}
@z

@x
This template creates a robots.txt file with a `Disallow` directive for each page on the site. Search engines that honor the Robots Exclusion Protocol will not crawl any page on the site.
@y
This template creates a robots.txt file with a `Disallow` directive for each page on the site. Search engines that honor the Robots Exclusion Protocol will not crawl any page on the site.
@z

@x
{{% note %}}
To create a robots.txt file without using a template:
@y
{{% note %}}
To create a robots.txt file without using a template:
@z

@x
1. Set `enableRobotsTXT` to `false` in the site configuration.
2. Create a robots.txt file in the `static` directory.
@y
1. Set `enableRobotsTXT` to `false` in the site configuration.
2. Create a robots.txt file in the `static` directory.
@z

@x
Remember that Hugo copies everything in the [static directory][static] to the root of `publishDir` (typically `public`) when you build your site.
@y
Remember that Hugo copies everything in the [static directory][static] to the root of `publishDir` (typically `public`) when you build your site.
@z

@x
[static]: /getting-started/directory-structure/
{{% /note %}}
@y
[static]: /getting-started/directory-structure/
{{% /note %}}
@z

@x
[site configuration]: /getting-started/configuration/
@y
[site configuration]: /getting-started/configuration/
@z
