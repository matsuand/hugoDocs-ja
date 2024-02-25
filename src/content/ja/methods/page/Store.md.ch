%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Store
description: Creates a persistent "scratch pad" on the given page to store and manipulate data.
categories: []
keywords: []
action:
  related:
  - methods/page/scratch
  - functions/collections/NewScratch
  returnType: maps.Scratch
  signatures: [PAGE.Store]
toc: true
aliases: [/functions/store]
---
@y
---
title: Store
description: Creates a persistent "scratch pad" on the given page to store and manipulate data.
categories: []
keywords: []
action:
  related:
  - methods/page/scratch
  - functions/collections/NewScratch
  returnType: maps.Scratch
  signatures: [PAGE.Store]
toc: true
aliases: [/functions/store]
---
@z

@x
The `Store` method on a `Page` object creates a persistent [scratch pad] to store and manipulate data. In contrast with the [`Scratch`] method, the scratch pad created by the `Store` method is not reset on server rebuilds.
@y
The `Store` method on a `Page` object creates a persistent [scratch pad] to store and manipulate data. In contrast with the [`Scratch`] method, the scratch pad created by the `Store` method is not reset on server rebuilds.
@z

@x
To create a locally scoped scratch pad that is not attached to a `Page` object, use the [`newScratch`] function.
@y
To create a locally scoped scratch pad that is not attached to a `Page` object, use the [`newScratch`] function.
@z

@x
[`Scratch`]: /methods/page/scratch/
[`newScratch`]: /functions/collections/newscratch/
[scratch pad]: /getting-started/glossary/#scratch-pad
@y
[`Scratch`]: /methods/page/scratch/
[`newScratch`]: /functions/collections/newscratch/
[scratch pad]: /getting-started/glossary/#scratch-pad
@z

@x
## Methods
@y
## Methods
@z

@x
###### Set
@y
###### Set
@z

@x
Sets the value of a given key.
@y
Sets the value of a given key.
@z

@x
```go-html-template
{{ .Store.Set "greeting" "Hello" }}
```
@y
```go-html-template
{{ .Store.Set "greeting" "Hello" }}
```
@z

@x
###### Get
@y
###### Get
@z

@x
Gets the value of a given key.
@y
Gets the value of a given key.
@z

@x
```go-html-template
{{ .Store.Set "greeting" "Hello" }}
{{ .Store.Get "greeting" }} → Hello
```
@y
```go-html-template
{{ .Store.Set "greeting" "Hello" }}
{{ .Store.Get "greeting" }} → Hello
```
@z

@x
###### Add
@y
###### Add
@z

@x
Adds a given value to existing value(s) of the given key.
@y
Adds a given value to existing value(s) of the given key.
@z

@x
For single values, `Add` accepts values that support Go's `+` operator. If the first `Add` for a key is an array or slice, the following adds will be appended to that list.
@y
For single values, `Add` accepts values that support Go's `+` operator. If the first `Add` for a key is an array or slice, the following adds will be appended to that list.
@z

@x
```go-html-template
{{ .Store.Set "greeting" "Hello" }}
{{ .Store.Add "greeting" "Welcome" }}
{{ .Store.Get "greeting" }} → HelloWelcome
```
@y
```go-html-template
{{ .Store.Set "greeting" "Hello" }}
{{ .Store.Add "greeting" "Welcome" }}
{{ .Store.Get "greeting" }} → HelloWelcome
```
@z

@x
```go-html-template
{{ .Store.Set "total" 3 }}
{{ .Store.Add "total" 7 }}
{{ .Store.Get "total" }} → 10
```
@y
```go-html-template
{{ .Store.Set "total" 3 }}
{{ .Store.Add "total" 7 }}
{{ .Store.Get "total" }} → 10
```
@z

@x
```go-html-template
{{ .Store.Set "greetings" (slice "Hello") }}
{{ .Store.Add "greetings" (slice "Welcome" "Cheers") }}
{{ .Store.Get "greetings" }} → [Hello Welcome Cheers]
```
@y
```go-html-template
{{ .Store.Set "greetings" (slice "Hello") }}
{{ .Store.Add "greetings" (slice "Welcome" "Cheers") }}
{{ .Store.Get "greetings" }} → [Hello Welcome Cheers]
```
@z

@x
###### SetInMap
@y
###### SetInMap
@z

@x
Takes a `key`, `mapKey` and `value` and adds a map of `mapKey` and `value` to the given `key`.
@y
Takes a `key`, `mapKey` and `value` and adds a map of `mapKey` and `value` to the given `key`.
@z

@x
```go-html-template
{{ .Store.SetInMap "greetings" "english" "Hello" }}
{{ .Store.SetInMap "greetings" "french" "Bonjour" }}
{{ .Store.Get "greetings" }} → map[english:Hello french:Bonjour]
```
@y
```go-html-template
{{ .Store.SetInMap "greetings" "english" "Hello" }}
{{ .Store.SetInMap "greetings" "french" "Bonjour" }}
{{ .Store.Get "greetings" }} → map[english:Hello french:Bonjour]
```
@z

@x
###### DeleteInMap
@y
###### DeleteInMap
@z

@x
Takes a `key` and `mapKey` and removes the map of `mapKey` from the given `key`.
@y
Takes a `key` and `mapKey` and removes the map of `mapKey` from the given `key`.
@z

@x
```go-html-template
{{ .Store.SetInMap "greetings" "english" "Hello" }}
{{ .Store.SetInMap "greetings" "french" "Bonjour" }}
{{ .Store.DeleteInMap "greetings" "english" }}
{{ .Store.Get "greetings" }} → map[french:Bonjour]
```
@y
```go-html-template
{{ .Store.SetInMap "greetings" "english" "Hello" }}
{{ .Store.SetInMap "greetings" "french" "Bonjour" }}
{{ .Store.DeleteInMap "greetings" "english" }}
{{ .Store.Get "greetings" }} → map[french:Bonjour]
```
@z

@x
###### GetSortedMapValues
@y
###### GetSortedMapValues
@z

@x
Returns an array of values from `key` sorted by `mapKey`.
@y
Returns an array of values from `key` sorted by `mapKey`.
@z

@x
```go-html-template
{{ .Store.SetInMap "greetings" "english" "Hello" }}
{{ .Store.SetInMap "greetings" "french" "Bonjour" }}
{{ .Store.GetSortedMapValues "greetings" }} → [Hello Bonjour]
```
@y
```go-html-template
{{ .Store.SetInMap "greetings" "english" "Hello" }}
{{ .Store.SetInMap "greetings" "french" "Bonjour" }}
{{ .Store.GetSortedMapValues "greetings" }} → [Hello Bonjour]
```
@z

@x
###### Delete
@y
###### Delete
@z

@x
Removes the given key.
@y
Removes the given key.
@z

@x
```go-html-template
{{ .Store.Set "greeting" "Hello" }}
{{ .Store.Delete "greeting" }}
```
@y
```go-html-template
{{ .Store.Set "greeting" "Hello" }}
{{ .Store.Delete "greeting" }}
```
@z

@x
## Determinate values
@y
## Determinate values
@z

@x
The `Store` method is often used to set scratch pad values within a shortcode, a partial template called by a shortcode, or by a Markdown render hook. In all three cases, the scratch pad values are not determinate until Hugo renders the page content.
@y
The `Store` method is often used to set scratch pad values within a shortcode, a partial template called by a shortcode, or by a Markdown render hook. In all three cases, the scratch pad values are not determinate until Hugo renders the page content.
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
