%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: strings.Trim
description: Returns the given string, removing leading and trailing characters specified in the cutset.
categories: []
keywords: []
action:
  aliases: [trim]
  related:
    - functions/strings/Chomp
    - functions/strings/TrimLeft
    - functions/strings/TrimPrefix
    - functions/strings/TrimRight
    - functions/strings/TrimSuffix
  returnType: string
  signatures: [strings.Trim INPUT CUTSET]
aliases: [/functions/trim]
---
@y
---
title: strings.Trim
description: Returns the given string, removing leading and trailing characters specified in the cutset.
categories: []
keywords: []
action:
  aliases: [trim]
  related:
    - functions/strings/Chomp
    - functions/strings/TrimLeft
    - functions/strings/TrimPrefix
    - functions/strings/TrimRight
    - functions/strings/TrimSuffix
  returnType: string
  signatures: [strings.Trim INPUT CUTSET]
aliases: [/functions/trim]
---
@z

@x
```go-html-template
{{ trim "++foo--" "+-" }} → foo
```
@y
```go-html-template
{{ trim "++foo--" "+-" }} → foo
```
@z

@x
To remove leading and trailing newline characters and carriage returns:
@y
To remove leading and trailing newline characters and carriage returns:
@z

@x
```go-html-template
{{ trim "\nfoo\n" "\n\r" }} → foo
{{ trim "\n\nfoo\n\n" "\n\r" }} → foo
@y
```go-html-template
{{ trim "\nfoo\n" "\n\r" }} → foo
{{ trim "\n\nfoo\n\n" "\n\r" }} → foo
@z

@x
{{ trim "\r\nfoo\r\n" "\n\r" }} → foo
{{ trim "\r\n\r\nfoo\r\n\r\n" "\n\r" }} → foo
```
@y
{{ trim "\r\nfoo\r\n" "\n\r" }} → foo
{{ trim "\r\n\r\nfoo\r\n\r\n" "\n\r" }} → foo
```
@z

@x
The `strings.Trim` function is commonly used in shortcodes to remove leading and trailing newlines characters and carriage returns from the content within the opening and closing shortcode tags.
@y
The `strings.Trim` function is commonly used in shortcodes to remove leading and trailing newlines characters and carriage returns from the content within the opening and closing shortcode tags.
@z

@x
For example, with this Markdown:
@y
For example, with this Markdown:
@z

@x
```text
{{</* my-shortcode */>}}
Able was I ere I saw Elba.
{{</* /my-shortcode */>}}
```
@y
```text
{{</* my-shortcode */>}}
Able was I ere I saw Elba.
{{</* /my-shortcode */>}}
```
@z

@x
The value of `.Inner` in the shortcode template is:
@y
The value of `.Inner` in the shortcode template is:
@z

@x
```text
\nAble was I ere I saw Elba.\n
```
@y
```text
\nAble was I ere I saw Elba.\n
```
@z

@x
If authored on a Windows system the value of `.Inner` might, depending on the editor configuration, be:
@y
If authored on a Windows system the value of `.Inner` might, depending on the editor configuration, be:
@z

@x
```text
\r\nAble was I ere I saw Elba.\r\n
```
@y
```text
\r\nAble was I ere I saw Elba.\r\n
```
@z

@x
This construct is common in shortcode templates:
@y
This construct is common in shortcode templates:
@z

@x
```go-html-template
{{ trim .Inner "\n\r" }}
```
@y
```go-html-template
{{ trim .Inner "\n\r" }}
```
@z
