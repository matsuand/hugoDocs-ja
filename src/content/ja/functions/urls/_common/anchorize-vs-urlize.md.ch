%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
# Do not remove front matter.
---
@y
---
# Do not remove front matter.
---
@z

@x
The [`anchorize`] and [`urlize`] functions are similar: 
@y
The [`anchorize`] and [`urlize`] functions are similar: 
@z

@x
[`anchorize`]: /functions/urls/anchorize/
[`urlize`]: /functions/urls/urlize/
@y
[`anchorize`]: /functions/urls/anchorize/
[`urlize`]: /functions/urls/urlize/
@z

@x
- Use the `anchorize` function to generate an HTML `id` attribute value
- Use the `urlize` function to sanitize a string for usage in a URL
@y
- Use the `anchorize` function to generate an HTML `id` attribute value
- Use the `urlize` function to sanitize a string for usage in a URL
@z

@x
For example:
@y
For example:
@z

@x
```go-html-template
{{ $s := "A B C" }}
{{ $s | anchorize }} → a-b-c
{{ $s | urlize }} → a-b-c
@y
```go-html-template
{{ $s := "A B C" }}
{{ $s | anchorize }} → a-b-c
{{ $s | urlize }} → a-b-c
@z

@x
{{ $s := "a b   c" }}
{{ $s | anchorize }} → a-b---c
{{ $s | urlize }} → a-b-c
@y
{{ $s := "a b   c" }}
{{ $s | anchorize }} → a-b---c
{{ $s | urlize }} → a-b-c
@z

@x
{{ $s := "< a, b, & c >" }}
{{ $s | anchorize }} → -a-b--c-
{{ $s | urlize }} → a-b-c
@y
{{ $s := "< a, b, & c >" }}
{{ $s | anchorize }} → -a-b--c-
{{ $s | urlize }} → a-b-c
@z

@x
{{ $s := "main.go" }}
{{ $s | anchorize }} → maingo
{{ $s | urlize }} → main.go
@y
{{ $s := "main.go" }}
{{ $s | anchorize }} → maingo
{{ $s | urlize }} → main.go
@z

@x
{{ $s := "Hugö" }}
{{ $s | anchorize }} → hugö
{{ $s | urlize }} → hug%C3%B6
```
@y
{{ $s := "Hugö" }}
{{ $s | anchorize }} → hugö
{{ $s | urlize }} → hug%C3%B6
```
@z
