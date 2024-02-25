%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: encoding.Base64Encode
description: Returns the base64 decoding of the given content.
categories: []
keywords: []
action:
  aliases: [base64Encode]
  related:
    - functions/encoding/Base64Decode
  returnType: string
  signatures: [encoding.Base64Encode INPUT]
aliases: [/functions/base64, /functions/base64Encode]
---
@y
---
title: encoding.Base64Encode
description: 指定された内容を base64 によりエンコードして返します。
categories: []
keywords: []
action:
  aliases: [base64Encode]
  related:
    - functions/encoding/Base64Decode
  returnType: string
  signatures: [encoding.Base64Encode INPUT]
aliases: [/functions/base64, /functions/base64Encode]
---
@z

@x
```go-html-template
{{ "Hugo" | base64Encode }} → SHVnbw==
```
@y
```go-html-template
{{ "Hugo" | base64Encode }} → SHVnbw==
```
@z
