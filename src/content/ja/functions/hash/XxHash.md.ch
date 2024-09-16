%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: hash.XxHash
description: Returns the 64-bit xxHash non-cryptographic hash of the given string.
categories: []
keywords: []
action:
  aliases: [xxhash]
  related:
    - functions/hash/FNV32a
    - functions/crypto/HMAC
    - functions/crypto/MD5
    - functions/crypto/SHA1
    - functions/crypto/SHA256
  returnType: string
  signatures: [hash.XxHash STRING]
---
@y
---
title: hash.XxHash
description: Returns the 64-bit xxHash non-cryptographic hash of the given string.
categories: []
keywords: []
action:
  aliases: [xxhash]
  related:
    - functions/hash/FNV32a
    - functions/crypto/HMAC
    - functions/crypto/MD5
    - functions/crypto/SHA1
    - functions/crypto/SHA256
  returnType: string
  signatures: [hash.XxHash STRING]
---
@z

@x
```go-html-template
{{ hash.XxHash "Hello world" }} → c500b0c912b376d8
```
@y
```go-html-template
{{ hash.XxHash "Hello world" }} → c500b0c912b376d8
```
@z
