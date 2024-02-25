%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.Title
description: Returns the given string, converting it to title case.
categories: []
keywords: []
action:
  aliases: [title]
  related:
    - functions/strings/FirstUpper
    - functions/strings/ToLower
    - functions/strings/ToUpper
  returnType: string
  signatures: [strings.Title STRING]
aliases: [/functions/title]
---
@y
---
title: strings.Title
description: Returns the given string, converting it to title case.
categories: []
keywords: []
action:
  aliases: [title]
  related:
    - functions/strings/FirstUpper
    - functions/strings/ToLower
    - functions/strings/ToUpper
  returnType: string
  signatures: [strings.Title STRING]
aliases: [/functions/title]
---
@z

@x
```go-html-template
{{ title "table of contents (TOC)" }} → Table of Contents (TOC)
```
@y
```go-html-template
{{ title "table of contents (TOC)" }} → Table of Contents (TOC)
```
@z

@x
By default, Hugo follows the capitalization rules published in the [Associated Press Stylebook]. Change your [site configuration] if you would prefer to:
@y
By default, Hugo follows the capitalization rules published in the [Associated Press Stylebook]. Change your [site configuration] if you would prefer to:
@z

@x
- Follow the capitalization rules published in the [Chicago Manual of Style]
- Capitalize the first letter of every word
- Capitalize the first letter of the first word
- Disable the effects of the `title` function
@y
- Follow the capitalization rules published in the [Chicago Manual of Style]
- Capitalize the first letter of every word
- Capitalize the first letter of the first word
- Disable the effects of the `title` function
@z

@x
The last option is useful if your theme uses the `title` function, and you would prefer to manually capitalize strings as needed.
@y
The last option is useful if your theme uses the `title` function, and you would prefer to manually capitalize strings as needed.
@z

@x
[Associated Press Stylebook]: https://www.apstylebook.com/
[Chicago Manual of Style]: https://www.chicagomanualofstyle.org/home.html
[site configuration]: /getting-started/configuration/#configure-title-case
@y
[Associated Press Stylebook]: https://www.apstylebook.com/
[Chicago Manual of Style]: https://www.chicagomanualofstyle.org/home.html
[site configuration]: /getting-started/configuration/#configure-title-case
@z
