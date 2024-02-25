%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: crypto.HMAC
description: Returns a cryptographic hash that uses a key to sign a message.
categories: []
keywords: []
action:
  aliases: [hmac]
  related:
    - functions/crypto/FNV32a
    - functions/crypto/MD5
    - functions/crypto/SHA1
    - functions/crypto/SHA256
  returnType: string
  signatures: ['crypto.HMAC HASH_TYPE KEY MESSAGE [ENCODING]']
aliases: [/functions/hmac]
---
@y
---
title: crypto.HMAC
description: Returns a cryptographic hash that uses a key to sign a message.
categories: []
keywords: []
action:
  aliases: [hmac]
  related:
    - functions/crypto/FNV32a
    - functions/crypto/MD5
    - functions/crypto/SHA1
    - functions/crypto/SHA256
  returnType: string
  signatures: ['crypto.HMAC HASH_TYPE KEY MESSAGE [ENCODING]']
aliases: [/functions/hmac]
---
@z

@x
Set the `HASH_TYPE` argument to `md5`, `sha1`, `sha256`, or `sha512`.
@y
Set the `HASH_TYPE` argument to `md5`, `sha1`, `sha256`, or `sha512`.
@z

@x
Set the optional `ENCODING` argument to either `hex` (default) or `binary`.
@y
Set the optional `ENCODING` argument to either `hex` (default) or `binary`.
@z

@x
```go-html-template
{{ hmac "sha256" "Secret key" "Secret message" }}
5cceb491f45f8b154e20f3b0a30ed3a6ff3027d373f85c78ffe8983180b03c84
@y
```go-html-template
{{ hmac "sha256" "Secret key" "Secret message" }}
5cceb491f45f8b154e20f3b0a30ed3a6ff3027d373f85c78ffe8983180b03c84
@z

@x
{{ hmac "sha256" "Secret key" "Secret message" "hex" }}
5cceb491f45f8b154e20f3b0a30ed3a6ff3027d373f85c78ffe8983180b03c84
@y
{{ hmac "sha256" "Secret key" "Secret message" "hex" }}
5cceb491f45f8b154e20f3b0a30ed3a6ff3027d373f85c78ffe8983180b03c84
@z

@x
{{ hmac "sha256" "Secret key" "Secret message" "binary" | base64Encode }}
XM60kfRfixVOIPOwow7Tpv8wJ9Nz+Fx4/+iYMYCwPIQ=
```
@y
{{ hmac "sha256" "Secret key" "Secret message" "binary" | base64Encode }}
XM60kfRfixVOIPOwow7Tpv8wJ9Nz+Fx4/+iYMYCwPIQ=
```
@z
