%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: transform.Emojify 
description: Runs a string through the Emoji emoticons processor.
categories: []
keywords: []
action:
  aliases: [emojify]
  related: []
  returnType: template.HTML
  signatures: [transform.Emojify INPUT]
aliases: [/functions/emojify]
---
@y
---
title: transform.Emojify 
description: Runs a string through the Emoji emoticons processor.
categories: []
keywords: []
action:
  aliases: [emojify]
  related: []
  returnType: template.HTML
  signatures: [transform.Emojify INPUT]
aliases: [/functions/emojify]
---
@z

@x
`emojify` runs a passed string through the Emoji emoticons processor.
@y
`emojify` runs a passed string through the Emoji emoticons processor.
@z

@x
See the list of [emoji shortcodes] for available emoticons.
@y
See the list of [emoji shortcodes] for available emoticons.
@z

@x
The `emojify` function can be called in your templates but not directly in your content files by default. For emojis in content files, set `enableEmoji` to `true` in your site's [configuration]. Then you can write emoji shorthand directly into your content files;
@y
The `emojify` function can be called in your templates but not directly in your content files by default. For emojis in content files, set `enableEmoji` to `true` in your site's [configuration]. Then you can write emoji shorthand directly into your content files;
@z

@x
```text
I :heart: Hugo!
```
@y
```text
I :heart: Hugo!
```
@z

@x
I :heart: Hugo!
@y
I :heart: Hugo!
@z

@x
[configuration]: /getting-started/configuration/
[emoji shortcodes]: /quick-reference/emojis/
[sc]: /templates/shortcode-templates/
[scsource]: https://github.com/gohugoio/hugo/tree/master/docs/layouts/shortcodes
@y
[configuration]: /getting-started/configuration/
[emoji shortcodes]: /quick-reference/emojis/
[sc]: /templates/shortcode-templates/
[scsource]: https://github.com/gohugoio/hugo/tree/master/docs/layouts/shortcodes
@z
