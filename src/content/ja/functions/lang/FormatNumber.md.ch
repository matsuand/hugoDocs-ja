%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: lang.FormatNumber
description: Returns a numeric representation of a number with the given precision for the current language and region.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/lang/FormatAccounting
    - functions/lang/FormatCurrency
    - functions/lang/FormatNumberCustom
    - functions/lang/FormatPercent
  returnType: string
  signatures: [lang.FormatNumber PRECISION NUMBER]
---
@y
---
title: lang.FormatNumber
description: Returns a numeric representation of a number with the given precision for the current language and region.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/lang/FormatAccounting
    - functions/lang/FormatCurrency
    - functions/lang/FormatNumberCustom
    - functions/lang/FormatPercent
  returnType: string
  signatures: [lang.FormatNumber PRECISION NUMBER]
---
@z

@x
```go-html-template
{{ 512.5032 | lang.FormatNumber 2 }} → 512.50
```
@y
```go-html-template
{{ 512.5032 | lang.FormatNumber 2 }} → 512.50
```
@z

@x
{{% include "functions/_common/locales.md" %}}
@y
{{% include "functions/_common/locales.md" %}}
@z
