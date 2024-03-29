%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: crypto.FNV32a
description: Returns the FNV (Fowler–Noll–Vo) 32-bit hash of a given string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/crypto/HMAC
    - functions/crypto/MD5
    - functions/crypto/SHA1
    - functions/crypto/SHA256
  returnType: int
  signatures: [crypto.FNV32a STRING]
aliases: [/functions/crypto.fnv32a]
---
@y
---
title: crypto.FNV32a
description: Returns the FNV (Fowler–Noll–Vo) 32-bit hash of a given string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/crypto/HMAC
    - functions/crypto/MD5
    - functions/crypto/SHA1
    - functions/crypto/SHA256
  returnType: int
  signatures: [crypto.FNV32a STRING]
aliases: [/functions/crypto.fnv32a]
---
@z

@x
This function calculates the 32-bit [FNV1a hash](https://en.wikipedia.org/wiki/Fowler%E2%80%93Noll%E2%80%93Vo_hash_function#FNV-1a_hash) of a given string according to the [specification](https://datatracker.ietf.org/doc/html/draft-eastlake-fnv-12):
@y
This function calculates the 32-bit [FNV1a hash](https://en.wikipedia.org/wiki/Fowler%E2%80%93Noll%E2%80%93Vo_hash_function#FNV-1a_hash) of a given string according to the [specification](https://datatracker.ietf.org/doc/html/draft-eastlake-fnv-12):
@z

@x
```go-html-template
{{ crypto.FNV32a "Hello world" }} → 1498229191
```
@y
```go-html-template
{{ crypto.FNV32a "Hello world" }} → 1498229191
```
@z
