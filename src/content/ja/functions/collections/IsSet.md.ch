%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.IsSet
description: Reports whether the key exists within the collection.
categories: []
keywords: []
action:
  aliases: [isset]
  related:
    - functions/go-template/if
    - functions/go-template/with
  returnType: bool
  signatures: [collections.IsSet COLLECTION KEY]
aliases: [/functions/isset]
---
@y
---
title: collections.IsSet
description: Reports whether the key exists within the collection.
categories: []
keywords: []
action:
  aliases: [isset]
  related:
    - functions/go-template/if
    - functions/go-template/with
  returnType: bool
  signatures: [collections.IsSet COLLECTION KEY]
aliases: [/functions/isset]
---
@z

@x
For example, consider this site configuration:
@y
For example, consider this site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[params]
showHeroImage = false
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[params]
showHeroImage = false
{{< /code-toggle >}}
@z

@x
It the value of `showHeroImage` is `true`, we can detect that it exists using either `if` or `with`:
@y
It the value of `showHeroImage` is `true`, we can detect that it exists using either `if` or `with`:
@z

@x
```go-html-template
{{ if site.Params.showHeroImage }}
  {{ site.Params.showHeroImage }} → true
{{ end }}
@y
```go-html-template
{{ if site.Params.showHeroImage }}
  {{ site.Params.showHeroImage }} → true
{{ end }}
@z

@x
{{ with site.Params.showHeroImage }}
  {{ . }} → true
{{ end }}
```
@y
{{ with site.Params.showHeroImage }}
  {{ . }} → true
{{ end }}
```
@z

@x
But if the value of `showHeroImage` is `false`, we can't use either `if` or `with` to detect its existence. In this case, you must use the `isset` function:
@y
But if the value of `showHeroImage` is `false`, we can't use either `if` or `with` to detect its existence. In this case, you must use the `isset` function:
@z

@x
```go-html-template
{{ if isset site.Params "showheroimage" }}
  <p>The showHeroImage parameter is set to {{ site.Params.showHeroImage }}.<p>
{{ end }}
```
@y
```go-html-template
{{ if isset site.Params "showheroimage" }}
  <p>The showHeroImage parameter is set to {{ site.Params.showHeroImage }}.<p>
{{ end }}
```
@z

@x
{{% note %}}
When using the `isset` function you must reference the key using lower case. See the previous example.
{{% /note %}}
@y
{{% note %}}
When using the `isset` function you must reference the key using lower case. See the previous example.
{{% /note %}}
@z
