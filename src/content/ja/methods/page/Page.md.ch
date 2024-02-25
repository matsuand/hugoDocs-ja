%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Page
description: Returns the Page object of the given page.
categories: []
keywords: []
action:
  related: []
  returnType: page.Page
  signatures: [PAGE.Page]
---
@y
---
title: Page
description: Returns the Page object of the given page.
categories: []
keywords: []
action:
  related: []
  returnType: page.Page
  signatures: [PAGE.Page]
---
@z

@x
This is a convenience method, useful within partial templates that are called from both [shortcodes] and page templates.
@y
This is a convenience method, useful within partial templates that are called from both [shortcodes] and page templates.
@z

@x
{{< code file=layouts/shortcodes/foo.html  >}}
{{ partial "my-partial.html" . }}
{{< /code >}}
@y
{{< code file=layouts/shortcodes/foo.html  >}}
{{ partial "my-partial.html" . }}
{{< /code >}}
@z

@x
When the shortcode calls the partial, it passes the current [context] (the dot). The context includes identifiers such as `Page`, `Params`, `Inner`, and `Name`.
@y
When the shortcode calls the partial, it passes the current [context] (the dot). The context includes identifiers such as `Page`, `Params`, `Inner`, and `Name`.
@z

@x
{{< code file=layouts/_default/single.html  >}}
{{ partial "my-partial.html" . }}
{{< /code >}}
@y
{{< code file=layouts/_default/single.html  >}}
{{ partial "my-partial.html" . }}
{{< /code >}}
@z

@x
When the page template calls the partial, it also passes the current context (the dot). But in this case, the dot _is_ the `Page` object.
@y
When the page template calls the partial, it also passes the current context (the dot). But in this case, the dot _is_ the `Page` object.
@z

@x
{{< code file=layouts/partials/my-partial.html  >}}
The page title is: {{ .Page.Title }}
{{< /code >}}
@y
{{< code file=layouts/partials/my-partial.html  >}}
The page title is: {{ .Page.Title }}
{{< /code >}}
@z

@x
To handle both scenarios, the partial template must be able to access the `Page` object with `Page.Page`.
@y
To handle both scenarios, the partial template must be able to access the `Page` object with `Page.Page`.
@z

@x
{{% note %}}
And yes, that means you can do `.Page.Page.Page.Page.Title` too.
@y
{{% note %}}
And yes, that means you can do `.Page.Page.Page.Page.Title` too.
@z

@x
But don't.
{{% /note %}}
@y
But don't.
{{% /note %}}
@z

@x
[context]: getting-started/glossary/#context
[shortcodes]: /getting-started/glossary/#shortcode
@y
[context]: getting-started/glossary/#context
[shortcodes]: /getting-started/glossary/#shortcode
@z
