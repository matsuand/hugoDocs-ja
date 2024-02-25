%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: BaseURL
description: Returns the base URL as defined in the site configuration.
categories: []
keywords: []
action:
  related:
    - functions/urls/AbsURL
    - functions/urls/AbsLangURL
    - functions/urls/RelURL
    - functions/urls/RelLangURL
  returnType: string
  signatures: [SITE.BaseURL]
---
@y
---
title: BaseURL
description: Returns the base URL as defined in the site configuration.
categories: []
keywords: []
action:
  related:
    - functions/urls/AbsURL
    - functions/urls/AbsLangURL
    - functions/urls/RelURL
    - functions/urls/RelLangURL
  returnType: string
  signatures: [SITE.BaseURL]
---
@z

@x
Site configuration:
@y
Site configuration:
@z

@x
{{< code-toggle file=hugo >}}
baseURL = 'https://example.org/docs/'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
baseURL = 'https://example.org/docs/'
{{< /code-toggle >}}
@z

@x
Template:
@y
Template:
@z

@x
```go-html-template
{{ .Site.BaseURL }} → https://example.org/docs/
```
@y
```go-html-template
{{ .Site.BaseURL }} → https://example.org/docs/
```
@z

@x
{{% note %}}
There is almost never a good reason to use this method in your templates. Its usage tends to be fragile due to misconfiguration.
@y
{{% note %}}
There is almost never a good reason to use this method in your templates. Its usage tends to be fragile due to misconfiguration.
@z

@x
Use the [`absURL`], [`absLangURL`], [`relURL`], or [`relLangURL`] functions instead.
@y
Use the [`absURL`], [`absLangURL`], [`relURL`], or [`relLangURL`] functions instead.
@z

@x
[`absURL`]: /functions/urls/absURL/
[`absLangURL`]: /functions/urls/absLangURL/
[`relURL`]: /functions/urls/relURL/
[`relLangURL`]: /functions/urls/relLangURL/
{{% /note %}}
@y
[`absURL`]: /functions/urls/absURL/
[`absLangURL`]: /functions/urls/absLangURL/
[`relURL`]: /functions/urls/relURL/
[`relLangURL`]: /functions/urls/relLangURL/
{{% /note %}}
@z
