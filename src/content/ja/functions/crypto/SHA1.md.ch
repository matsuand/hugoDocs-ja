%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: crypto.SHA1
description: Hashes the given input and returns its SHA1 checksum encoded to a hexadecimal string.
categories: []
keywords: []
action:
  aliases: [sha1]
  related:
    - functions/crypto/FNV32a
    - functions/crypto/HMAC
    - functions/crypto/MD5
    - functions/crypto/SHA256
  returnType: string
  signatures: [crypto.SHA1 INPUT]
aliases: [/functions/sha,/functions/sha1]
---
@y
---
title: crypto.SHA1
description: Hashes the given input and returns its SHA1 checksum encoded to a hexadecimal string.
categories: []
keywords: []
action:
  aliases: [sha1]
  related:
    - functions/crypto/FNV32a
    - functions/crypto/HMAC
    - functions/crypto/MD5
    - functions/crypto/SHA256
  returnType: string
  signatures: [crypto.SHA1 INPUT]
aliases: [/functions/sha,/functions/sha1]
---
@z

@x
```go-html-template
{{ sha1 "Hello world" }} → 7b502c3a1f48c8609ae212cdfb639dee39673f5e
```
@y
```go-html-template
{{ sha1 "Hello world" }} → 7b502c3a1f48c8609ae212cdfb639dee39673f5e
```
@z
