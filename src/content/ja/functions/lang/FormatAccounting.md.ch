%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: lang.FormatAccounting
description: Returns a currency representation of a number for the given currency and precision for the current language and region in accounting notation.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/lang/FormatCurrency
    - functions/lang/FormatNumber
    - functions/lang/FormatNumberCustom
    - functions/lang/FormatPercent
  returnType: string
  signatures: [lang.FormatAccounting PRECISION CURRENCY NUMBER]
---
@y
---
title: lang.FormatAccounting
description: Returns a currency representation of a number for the given currency and precision for the current language and region in accounting notation.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/lang/FormatCurrency
    - functions/lang/FormatNumber
    - functions/lang/FormatNumberCustom
    - functions/lang/FormatPercent
  returnType: string
  signatures: [lang.FormatAccounting PRECISION CURRENCY NUMBER]
---
@z

@x
```go-html-template
{{ 512.5032 | lang.FormatAccounting 2 "NOK" }} → NOK512.50
```
@y
```go-html-template
{{ 512.5032 | lang.FormatAccounting 2 "NOK" }} → NOK512.50
```
@z

@x
{{% include "functions/_common/locales.md" %}}
@y
{{% include "functions/_common/locales.md" %}}
@z
