%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: lang.FormatNumberCustom
description: Returns a numeric representation of a number with the given precision using negative, decimal, and grouping options.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/lang/FormatAccounting
    - functions/lang/FormatCurrency
    - functions/lang/FormatNumber
    - functions/lang/FormatPercent
  returnType: string
  signatures: ['lang.FormatNumberCustom PRECISION NUMBER [OPTIONS...]']
aliases: ['/functions/numfmt/']
---
@y
---
title: lang.FormatNumberCustom
description: Returns a numeric representation of a number with the given precision using negative, decimal, and grouping options.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/lang/FormatAccounting
    - functions/lang/FormatCurrency
    - functions/lang/FormatNumber
    - functions/lang/FormatPercent
  returnType: string
  signatures: ['lang.FormatNumberCustom PRECISION NUMBER [OPTIONS...]']
aliases: ['/functions/numfmt/']
---
@z

@x
This function formats a number with the given precision. The first options parameter is a space-delimited string of characters to represent negativity, the decimal point, and grouping. The default value is `- . ,`. The second options parameter defines an alternate delimiting character.
@y
This function formats a number with the given precision. The first options parameter is a space-delimited string of characters to represent negativity, the decimal point, and grouping. The default value is `- . ,`. The second options parameter defines an alternate delimiting character.
@z

@x
Note that numbers are rounded up at 5 or greater. So, with precision set to 0, 1.5 becomes 2, and 1.4 becomes&nbsp;1.
@y
Note that numbers are rounded up at 5 or greater. So, with precision set to 0, 1.5 becomes 2, and 1.4 becomes&nbsp;1.
@z

@x
For a simpler function that adapts to the current language, see [`lang.FormatNumber`].
@y
For a simpler function that adapts to the current language, see [`lang.FormatNumber`].
@z

@x
```go-html-template
{{ lang.FormatNumberCustom 2 12345.6789 }} → 12,345.68
{{ lang.FormatNumberCustom 2 12345.6789 "- , ." }} → 12.345,68
{{ lang.FormatNumberCustom 6 -12345.6789 "- ." }} → -12345.678900
{{ lang.FormatNumberCustom 0 -12345.6789 "- . ," }} → -12,346
{{ lang.FormatNumberCustom 0 -12345.6789 "-|.| " "|" }} → -12 346
```
@y
```go-html-template
{{ lang.FormatNumberCustom 2 12345.6789 }} → 12,345.68
{{ lang.FormatNumberCustom 2 12345.6789 "- , ." }} → 12.345,68
{{ lang.FormatNumberCustom 6 -12345.6789 "- ." }} → -12345.678900
{{ lang.FormatNumberCustom 0 -12345.6789 "- . ," }} → -12,346
{{ lang.FormatNumberCustom 0 -12345.6789 "-|.| " "|" }} → -12 346
```
@z

@x
{{% include "functions/_common/locales.md" %}}
@y
{{% include "functions/_common/locales.md" %}}
@z

@x
[`lang.FormatNumber`]: /functions/lang/formatnumber/
@y
[`lang.FormatNumber`]: /functions/lang/formatnumber/
@z
