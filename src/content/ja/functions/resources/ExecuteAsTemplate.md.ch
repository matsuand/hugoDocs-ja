%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: resources.ExecuteAsTemplate
description: Returns a resource created from a Go template, parsed and executed with the given context.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/resources/FromString
  returnType: resource.Resource
  signatures: [resources.ExecuteAsTemplate TARGETPATH CONTEXT RESOURCE]
---
@y
---
title: resources.ExecuteAsTemplate
description: Returns a resource created from a Go template, parsed and executed with the given context.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/resources/FromString
  returnType: resource.Resource
  signatures: [resources.ExecuteAsTemplate TARGETPATH CONTEXT RESOURCE]
---
@z

@x
The `resources.ExecuteAsTemplate` function returns a resource created from a Go template, parsed and executed with the given context, caching the result using the target path as its cache key.
@y
The `resources.ExecuteAsTemplate` function returns a resource created from a Go template, parsed and executed with the given context, caching the result using the target path as its cache key.
@z

@x
Hugo publishes the resource to the target path when you call its [`Publish`], [`Permalink`], or [`RelPermalink`] methods.
@y
Hugo publishes the resource to the target path when you call its [`Publish`], [`Permalink`], or [`RelPermalink`] methods.
@z

@x
[`publish`]: /methods/resource/publish/
[`permalink`]: /methods/resource/permalink/
[`relpermalink`]: /methods/resource/relpermalink/
@y
[`publish`]: /methods/resource/publish/
[`permalink`]: /methods/resource/permalink/
[`relpermalink`]: /methods/resource/relpermalink/
@z

@x
Let's say you have a CSS file that you wish to populate with values from your site configuration:
@y
Let's say you have a CSS file that you wish to populate with values from your site configuration:
@z

@x
{{< code file=assets/css/template.css lang=go-html-template >}}
body {
  background-color: {{ site.Params.style.bg_color }};
  color: {{ site.Params.style.text_color }};
}
{{< /code >}}
@y
{{< code file=assets/css/template.css lang=go-html-template >}}
body {
  background-color: {{ site.Params.style.bg_color }};
  color: {{ site.Params.style.text_color }};
}
{{< /code >}}
@z

@x
And your site configuration contains:
@y
And your site configuration contains:
@z

@x
{{< code-toggle file=hugo >}}
[params.style]
bg_color = '#fefefe'
text_color = '#222'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[params.style]
bg_color = '#fefefe'
text_color = '#222'
{{< /code-toggle >}}
@z

@x
Place this in your baseof.html template:
@y
Place this in your baseof.html template:
@z

@x
```go-html-template
{{ with resources.Get "css/template.css" }}
  {{ with resources.ExecuteAsTemplate "css/main.css" $ . }}
    <link rel="stylesheet" href="{{ .RelPermalink }}">
  {{ end }}
{{ end }}
```
@y
```go-html-template
{{ with resources.Get "css/template.css" }}
  {{ with resources.ExecuteAsTemplate "css/main.css" $ . }}
    <link rel="stylesheet" href="{{ .RelPermalink }}">
  {{ end }}
{{ end }}
```
@z

@x
The example above:
@y
The example above:
@z

@x
1. Captures the template as a resource
2. Executes the resource as a template, passing the current page in context
3. Publishes the resource to css/main.css
@y
1. Captures the template as a resource
2. Executes the resource as a template, passing the current page in context
3. Publishes the resource to css/main.css
@z

@x
The result is:
@y
The result is:
@z

@x
{{< code file=public/css/main.css >}}
body {
  background-color: #fefefe;
  color: #222;
}
{{< /code >}}
@y
{{< code file=public/css/main.css >}}
body {
  background-color: #fefefe;
  color: #222;
}
{{< /code >}}
@z
