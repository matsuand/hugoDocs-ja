%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Draft
description: Reports whether the given page is a draft as defined in front matter.
categories: []
keywords: []
action:
  related: []
  returnType: bool
  signatures: [PAGE.Draft]
---
@y
---
title: Draft
description: Reports whether the given page is a draft as defined in front matter.
categories: []
keywords: []
action:
  related: []
  returnType: bool
  signatures: [PAGE.Draft]
---
@z

@x
By default, Hugo does not publish draft pages when you build your site. To include draft pages when you build your site, use the `--buildDrafts` command line flag.
@y
By default, Hugo does not publish draft pages when you build your site. To include draft pages when you build your site, use the `--buildDrafts` command line flag.
@z

@x
{{< code-toggle file=content/posts/post-1.md fm=true >}}
title = 'Post 1'
draft = true
{{< /code-toggle >}}
@y
{{< code-toggle file=content/posts/post-1.md fm=true >}}
title = 'Post 1'
draft = true
{{< /code-toggle >}}
@z

@x
```go-html-template
{{ .Draft }} → true
```
@y
```go-html-template
{{ .Draft }} → true
```
@z
