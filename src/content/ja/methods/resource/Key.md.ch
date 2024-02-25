%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Key
description: Returns the unique key for the given resource, equivalent to its publishing path.
draft: true
categories: []
keywords: []
action:
  related:
    - methods/resource/Permalink
    - methods/resource/RelPermalink
    - methods/resource/Publish
  returnType: string
  signatures: [RESOURCE.Key]
---
@y
---
title: Key
description: Returns the unique key for the given resource, equivalent to its publishing path.
draft: true
categories: []
keywords: []
action:
  related:
    - methods/resource/Permalink
    - methods/resource/RelPermalink
    - methods/resource/Publish
  returnType: string
  signatures: [RESOURCE.Key]
---
@z

@x
By way of example, consider this site configuration:
@y
By way of example, consider this site configuration:
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
And this template:
@y
And this template:
@z

@x
```go-html-template
  {{ with resources.Get "images/a.jpg" }}
    {{ with resources.Copy "foo/bar/b.jpg" . }}
      {{ .Key }} → foo/bar/b.jpg
@y
```go-html-template
  {{ with resources.Get "images/a.jpg" }}
    {{ with resources.Copy "foo/bar/b.jpg" . }}
      {{ .Key }} → foo/bar/b.jpg
@z

@x
      {{ .Name }} → images/a.jpg
      {{ .Title }} → images/a.jpg
@y
      {{ .Name }} → images/a.jpg
      {{ .Title }} → images/a.jpg
@z

@x
      {{ .RelPermalink }} → /docs/foo/bar/b.jpg
    {{ end }}
  {{ end }}
```
@y
      {{ .RelPermalink }} → /docs/foo/bar/b.jpg
    {{ end }}
  {{ end }}
```
@z

@x
We used the [`resources.Copy`] function to change the publishing path. The `Key` method returns the updated path, but note that it is different than the value returned by [`RelPermalink`]. The `RelPermalink` value includes the subdirectory segment of the `baseURL` in the site configuration.
@y
We used the [`resources.Copy`] function to change the publishing path. The `Key` method returns the updated path, but note that it is different than the value returned by [`RelPermalink`]. The `RelPermalink` value includes the subdirectory segment of the `baseURL` in the site configuration.
@z

@x
The `Key` method is useful if you need to get the resource's publishing path without publishing the resource. Unlike the `Permalink`, `RelPermalink`, or `Publish` methods, calling `Key` will not publish the resource.
@y
The `Key` method is useful if you need to get the resource's publishing path without publishing the resource. Unlike the `Permalink`, `RelPermalink`, or `Publish` methods, calling `Key` will not publish the resource.
@z

@x
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@y
{{% include "methods/resource/_common/global-page-remote-resources.md" %}}
@z

@x
[`Permalink`]: /methods/resource/permalink/
[`RelPermalink`]: /methods/resource/relpermalink/
[`resources.Copy`]: /functions/resources/copy/
@y
[`Permalink`]: /methods/resource/permalink/
[`RelPermalink`]: /methods/resource/relpermalink/
[`resources.Copy`]: /functions/resources/copy/
@z
