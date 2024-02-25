%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Title
description: Returns the title of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/LinkTitle
  returnType: string
  signatures: [PAGE.Title]
---
@y
---
title: Title
description: Returns the title of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/LinkTitle
  returnType: string
  signatures: [PAGE.Title]
---
@z

@x
With pages backed by a file, the `Title` method returns the `title` field as defined in front matter:
@y
With pages backed by a file, the `Title` method returns the `title` field as defined in front matter:
@z

@x
{{< code-toggle file=content/about.md fm=true >}}
title = 'About us'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/about.md fm=true >}}
title = 'About us'
{{< /code-toggle >}}
@z

@x
```go-html-template
{{ .Title }} → About us
```
@y
```go-html-template
{{ .Title }} → About us
```
@z

@x
With section, taxonomy, and term pages not backed by a file, the `Title` method returns the section name, capitalized and pluralized. You can disable these transformations by setting [`capitalizeListTitles`] and [`pluralizeListTitles`] in your site configuration. For example:
@y
With section, taxonomy, and term pages not backed by a file, the `Title` method returns the section name, capitalized and pluralized. You can disable these transformations by setting [`capitalizeListTitles`] and [`pluralizeListTitles`] in your site configuration. For example:
@z

@x
{{< code-toggle file=hugo >}}
capitalizeListTitles = false
pluralizeListTitles = false
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
capitalizeListTitles = false
pluralizeListTitles = false
{{< /code-toggle >}}
@z

@x
You can change the capitalization style in your site configuration to one of `ap`, `chicago`, `go`, `firstupper`, or `none`. For example:
@y
You can change the capitalization style in your site configuration to one of `ap`, `chicago`, `go`, `firstupper`, or `none`. For example:
@z

@x
{{< code-toggle file=hugo >}}
titleCaseStyle = "firstupper"
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
titleCaseStyle = "firstupper"
{{< /code-toggle >}}
@z

@x
 See [details].
@y
 See [details].
@z

@x
[`capitalizeListTitles`]: /getting-started/configuration/#capitalizelisttitles
[`pluralizeListTitles`]: /getting-started/configuration/#pluralizelisttitles
[details]: /getting-started/configuration/#configure-title-case
@y
[`capitalizeListTitles`]: /getting-started/configuration/#capitalizelisttitles
[`pluralizeListTitles`]: /getting-started/configuration/#pluralizelisttitles
[details]: /getting-started/configuration/#configure-title-case
@z
