%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: lang.Merge
description: Merge missing translations from other languages.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: any
  signatures: [lang.Merge FROM TO]
aliases: [/functions/lang.merge]
---
@y
---
title: lang.Merge
description: Merge missing translations from other languages.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: any
  signatures: [lang.Merge FROM TO]
aliases: [/functions/lang.merge]
---
@z

@x
As an example:
@y
As an example:
@z

@x
```sh
{{ $pages := .Site.RegularPages | lang.Merge $frSite.RegularPages | lang.Merge $enSite.RegularPages }}
```
@y
```sh
{{ $pages := .Site.RegularPages | lang.Merge $frSite.RegularPages | lang.Merge $enSite.RegularPages }}
```
@z

@x
Will "fill in the gaps" in the current site with, from left to right, content from the French site, and lastly the English.
@y
Will "fill in the gaps" in the current site with, from left to right, content from the French site, and lastly the English.
@z

@x
A more practical example is to fill in the missing translations from the other languages:
@y
A more practical example is to fill in the missing translations from the other languages:
@z

@x
```sh
{{ $pages := .Site.RegularPages }}
{{ range .Site.Home.Translations }}
{{ $pages = $pages | lang.Merge .Site.RegularPages }}
{{ end }}
 ```
@y
```sh
{{ $pages := .Site.RegularPages }}
{{ range .Site.Home.Translations }}
{{ $pages = $pages | lang.Merge .Site.RegularPages }}
{{ end }}
 ```
@z
