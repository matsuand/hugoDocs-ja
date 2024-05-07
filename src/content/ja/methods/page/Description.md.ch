%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Description
description: Returns the description of the given page as defined in front matter.
categories: []
keywords: []
action:
  related:
    - methods/page/Summary
  returnType: string
  signatures: [PAGE.Description]
---
@y
---
title: Description
description: Returns the description of the given page as defined in front matter.
categories: []
keywords: []
action:
  related:
    - methods/page/Summary
  returnType: string
  signatures: [PAGE.Description]
---
@z

@x
Conceptually different from a [content summary], a page description is typically used in metadata about the page.
@y
Conceptually different from a [content summary], a page description is typically used in metadata about the page.
@z

@x
{{< code-toggle file=content/recipes/sushi.md fm=true >}}
title = 'How to make spicy tuna hand rolls'
description = 'Instructions for making spicy tuna hand rolls.'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/recipes/sushi.md fm=true >}}
title = 'How to make spicy tuna hand rolls'
description = 'Instructions for making spicy tuna hand rolls.'
{{< /code-toggle >}}
@z

@x
{{< code file=layouts/baseof.html  >}}
<head>
  ...
  <meta name="description" content="{{ .Description }}">
  ...
</head>
{{< /code >}}
@y
{{< code file=layouts/baseof.html  >}}
<head>
  ...
  <meta name="description" content="{{ .Description }}">
  ...
</head>
{{< /code >}}
@z

@x
[content summary]: /content-management/summaries/
@y
[content summary]: /content-management/summaries/
@z
