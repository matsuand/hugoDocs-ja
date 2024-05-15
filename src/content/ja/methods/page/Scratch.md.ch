%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Scratch
description: Returns a "scratch pad" on the given page to store and manipulate data.
categories: []
keywords: []
action:
  related:
    - methods/page/Store
    - functions/collections/NewScratch
  returnType: maps.Scratch
  signatures: [PAGE.Scratch]
toc: true
aliases: [/extras/scratch/,/doc/scratch/,/functions/scratch]
---
@y
---
title: Scratch
description: Returns a "scratch pad" on the given page to store and manipulate data.
categories: []
keywords: []
action:
  related:
    - methods/page/Store
    - functions/collections/NewScratch
  returnType: maps.Scratch
  signatures: [PAGE.Scratch]
toc: true
aliases: [/extras/scratch/,/doc/scratch/,/functions/scratch]
---
@z

@x
The `Scratch` method on a `Page` object creates a [scratch pad] to store and manipulate data. To create a scratch pad that is not reset on server rebuilds, use the [`Store`] method instead.
@y
The `Scratch` method on a `Page` object creates a [scratch pad] to store and manipulate data. To create a scratch pad that is not reset on server rebuilds, use the [`Store`] method instead.
@z

@x
To create a locally scoped scratch pad that is not attached to a `Page` object, use the [`newScratch`] function.
@y
To create a locally scoped scratch pad that is not attached to a `Page` object, use the [`newScratch`] function.
@z

@x
[`Store`]: /methods/page/store/
[`newScratch`]: /functions/collections/newscratch/
[scratch pad]: /getting-started/glossary/#scratch-pad
@y
[`Store`]: /methods/page/store/
[`newScratch`]: /functions/collections/newscratch/
[scratch pad]: /getting-started/glossary/#scratch-pad
@z

@x
{{% include "methods/page/_common/scratch-methods.md" %}}
@y
{{% include "methods/page/_common/scratch-methods.md" %}}
@z

@x
## Determinate values
@y
## Determinate values
@z

@x
The `Scratch` method is often used to set scratch pad values within a shortcode, a partial template called by a shortcode, or by a Markdown render hook. In all three cases, the scratch pad values are not determinate until Hugo renders the page content.
@y
The `Scratch` method is often used to set scratch pad values within a shortcode, a partial template called by a shortcode, or by a Markdown render hook. In all three cases, the scratch pad values are not determinate until Hugo renders the page content.
@z

@x
If you need to access a scratch pad value from a parent template, and the parent template has not yet rendered the page content, you can trigger content rendering by assigning the returned value to a [noop] variable:
@y
If you need to access a scratch pad value from a parent template, and the parent template has not yet rendered the page content, you can trigger content rendering by assigning the returned value to a [noop] variable:
@z

@x
[noop]: /getting-started/glossary/#noop
@y
[noop]: /getting-started/glossary/#noop
@z

@x
```go-html-template
{{ $noop := .Content }}
{{ .Store.Get "mykey" }}
```
@y
```go-html-template
{{ $noop := .Content }}
{{ .Store.Get "mykey" }}
```
@z

@x
You can also trigger content rendering with the `FuzzyWordCount`, `Len`, `Plain`, `PlainWords`, `ReadingTime`, `Summary`, `Truncated`, and `WordCount` methods. For example:
@y
You can also trigger content rendering with the `FuzzyWordCount`, `Len`, `Plain`, `PlainWords`, `ReadingTime`, `Summary`, `Truncated`, and `WordCount` methods. For example:
@z

@x
```go-html-template
{{ $noop := .WordCount }}
{{ .Store.Get "mykey" }}
```
@y
```go-html-template
{{ $noop := .WordCount }}
{{ .Store.Get "mykey" }}
```
@z
