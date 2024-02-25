%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: crypto.SHA256
description: Hashes the given input and returns its SHA256 checksum encoded to a hexadecimal string.
categories: []
keywords: []
action:
  aliases: [sha256]
  related:
    - functions/crypto/FNV32a
    - functions/crypto/HMAC
    - functions/crypto/MD5
    - functions/crypto/SHA1
  returnType: string
  signatures: [crypto.SHA256 INPUT]
aliases: [/functions/sha256]
---
@y
---
title: crypto.SHA256
description: Hashes the given input and returns its SHA256 checksum encoded to a hexadecimal string.
categories: []
keywords: []
action:
  aliases: [sha256]
  related:
    - functions/crypto/FNV32a
    - functions/crypto/HMAC
    - functions/crypto/MD5
    - functions/crypto/SHA1
  returnType: string
  signatures: [crypto.SHA256 INPUT]
aliases: [/functions/sha256]
---
@z

@x
```go-html-template
{{ sha256 "Hello world" }} → 64ec88ca00b268e5ba1a35678a1b5316d212f4f366b2477232534a8aeca37f3c
```
@y
```go-html-template
{{ sha256 "Hello world" }} → 64ec88ca00b268e5ba1a35678a1b5316d212f4f366b2477232534a8aeca37f3c
```
@z
