%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: urls.Anchorize
description: Returns the given string, sanitized for usage in an HTML id attribute.
categories: []
keywords: []
action:
  aliases: [anchorize]
  related:
    - functions/urls/URLize
  returnType: string
  signatures: [urls.Anchorize INPUT]
aliases: [/functions/anchorize]
---
@y
---
title: urls.Anchorize
description: Returns the given string, sanitized for usage in an HTML id attribute.
categories: []
keywords: []
action:
  aliases: [anchorize]
  related:
    - functions/urls/URLize
  returnType: string
  signatures: [urls.Anchorize INPUT]
aliases: [/functions/anchorize]
---
@z

@x
{{% include "/functions/urls/_common/anchorize-vs-urlize.md" %}}
@y
{{% include "/functions/urls/_common/anchorize-vs-urlize.md" %}}
@z

@x
## Sanitizing logic
@y
## Sanitizing logic
@z

@x
With the default Markdown renderer, Goldmark, the sanitizing logic is controlled by your site configuration:
@y
With the default Markdown renderer, Goldmark, the sanitizing logic is controlled by your site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[markup.goldmark.parser]
autoHeadingIDType = 'github'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[markup.goldmark.parser]
autoHeadingIDType = 'github'
{{< /code-toggle >}}
@z

@x
This controls the behavior of the `anchorize` function and the generation of heading IDs when rendering Markdown to HTML.
@y
This controls the behavior of the `anchorize` function and the generation of heading IDs when rendering Markdown to HTML.
@z

@x
Set `autoHeadingIDType` to one of:
@y
Set `autoHeadingIDType` to one of:
@z

@x
github
: Compatible with GitHub. This is the default, and strongly recommended.
@y
github
: Compatible with GitHub. This is the default, and strongly recommended.
@z

@x
github-ascii
: Similar to the "github" setting, but removes non-ASCII characters. 
@y
github-ascii
: Similar to the "github" setting, but removes non-ASCII characters. 
@z

@x
blackfriday
: Provided for backwards compatibility with Hugo v0.59.1 and earlier. This option will be removed in a future release.
@y
blackfriday
: Provided for backwards compatibility with Hugo v0.59.1 and earlier. This option will be removed in a future release.
@z
