%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: lang.FormatCurrency
description: Returns a currency representation of a number for the given currency and precision for the current language and region.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/lang/FormatAccounting
    - functions/lang/FormatNumber
    - functions/lang/FormatNumberCustom
    - functions/lang/FormatPercent
  returnType: string
  signatures: [lang.FormatCurrency PRECISION CURRENCY NUMBER]
---
@y
---
title: lang.FormatCurrency
description: Returns a currency representation of a number for the given currency and precision for the current language and region.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/lang/FormatAccounting
    - functions/lang/FormatNumber
    - functions/lang/FormatNumberCustom
    - functions/lang/FormatPercent
  returnType: string
  signatures: [lang.FormatCurrency PRECISION CURRENCY NUMBER]
---
@z

@x
```go-html-template
{{ 512.5032 | lang.FormatCurrency 2 "USD" }} → $512.50
```
@y
```go-html-template
{{ 512.5032 | lang.FormatCurrency 2 "USD" }} → $512.50
```
@z

@x
{{% include "functions/_common/locales.md" %}}
@y
{{% include "functions/_common/locales.md" %}}
@z
