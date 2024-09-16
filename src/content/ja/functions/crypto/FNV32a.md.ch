%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: crypto.FNV32a
description: Returns the 32-bit FNV (Fowler–Noll–Vo) non-cryptographic hash of the given string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/hash/Xxhash
    - functions/crypto/HMAC
    - functions/crypto/MD5
    - functions/crypto/SHA1
    - functions/crypto/SHA256
  returnType: int
  signatures: [crypto.FNV32a STRING]
expiryDate: 2025-07-31 # deprecated 2024-07-31
---
@y
---
title: crypto.FNV32a
description: Returns the 32-bit FNV (Fowler–Noll–Vo) non-cryptographic hash of the given string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/hash/Xxhash
    - functions/crypto/HMAC
    - functions/crypto/MD5
    - functions/crypto/SHA1
    - functions/crypto/SHA256
  returnType: int
  signatures: [crypto.FNV32a STRING]
expiryDate: 2025-07-31 # deprecated 2024-07-31
---
@z

@x
{{% deprecated-in 0.129.0 %}}
Use [`hash.FNV32a`] instead.
@y
{{% deprecated-in 0.129.0 %}}
Use [`hash.FNV32a`] instead.
@z

@x
[`hash.FNV32a`]: /functions/hash/FNV32a/
{{% /deprecated-in %}}
@y
[`hash.FNV32a`]: /functions/hash/FNV32a/
{{% /deprecated-in %}}
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
