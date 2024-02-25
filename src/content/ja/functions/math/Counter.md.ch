%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: math.Counter
description: Increments and returns a global counter.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: uint64
  signatures: [math.Counter]
---
@y
---
title: math.Counter
description: Increments and returns a global counter.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: uint64
  signatures: [math.Counter]
---
@z

@x
The counter is global for both monolingual and multilingual sites, and its initial value for each build is&nbsp;1.
@y
The counter is global for both monolingual and multilingual sites, and its initial value for each build is&nbsp;1.
@z

@x
```go-html-template
{{ warnf "single.html called %d times" math.Counter }}
```
@y
```go-html-template
{{ warnf "single.html called %d times" math.Counter }}
```
@z

@x
```sh
WARN  single.html called 1 times
WARN  single.html called 2 times
WARN  single.html called 3 times
```
@y
```sh
WARN  single.html called 1 times
WARN  single.html called 2 times
WARN  single.html called 3 times
```
@z

@x
Use this function to:
@y
Use this function to:
@z

@x
- Create unique warnings as shown above; the [`warnf`] function suppresses duplicate messages
- Create unique target paths for the `resources.FromString` function where the target path is also the cache key
@y
- Create unique warnings as shown above; the [`warnf`] function suppresses duplicate messages
- Create unique target paths for the `resources.FromString` function where the target path is also the cache key
@z

@x
[`warnf`]: /functions/fmt/warnf/
[`resources.FromString`]: /functions/resources/fromstring/
@y
[`warnf`]: /functions/fmt/warnf/
[`resources.FromString`]: /functions/resources/fromstring/
@z

@x
{{% note %}}
Due to concurrency, the value returned in a given template for a given page will vary from one build to the next. You cannot use this function to assign a static id to each page.
{{% /note %}}
@y
{{% note %}}
Due to concurrency, the value returned in a given template for a given page will vary from one build to the next. You cannot use this function to assign a static id to each page.
{{% /note %}}
@z
