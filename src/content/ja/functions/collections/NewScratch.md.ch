%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.NewScratch
description: Returns a locally scoped "scratch pad" to store and manipulate data.
categories: []
keywords: []
action:
  aliases: [newScratch]
  related:
    - methods/page/scratch
    - methods/page/store
    - methods/shortcode/scratch
  returnType: maps.Scratch
  signatures: [collections.NewScratch ]
---
@y
---
title: collections.NewScratch
description: Returns a locally scoped "scratch pad" to store and manipulate data.
categories: []
keywords: []
action:
  aliases: [newScratch]
  related:
    - methods/page/scratch
    - methods/page/store
    - methods/shortcode/scratch
  returnType: maps.Scratch
  signatures: [collections.NewScratch ]
---
@z

@x
The `collections.NewScratch` function creates a locally scoped [scratch pad] to store and manipulate data. To create a scratch pad that is attached to a `Page` object, use the [`Scratch`] or [`Store`] method.
@y
The `collections.NewScratch` function creates a locally scoped [scratch pad] to store and manipulate data. To create a scratch pad that is attached to a `Page` object, use the [`Scratch`] or [`Store`] method.
@z

@x
[`Scratch`]: /methods/page/scratch/
[`Store`]: /methods/page/store/
[scratch pad]: /getting-started/glossary/#scratch-pad
@y
[`Scratch`]: /methods/page/scratch/
[`Store`]: /methods/page/store/
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
{{ $s := newScratch }}
{{ $s.Set "greeting" "Hello" }}
```
@y
```go-html-template
{{ $s := newScratch }}
{{ $s.Set "greeting" "Hello" }}
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
{{ $s := newScratch }}
{{ $s.Set "greeting" "Hello" }}
{{ $s.Get "greeting" }} → Hello
```
@y
```go-html-template
{{ $s := newScratch }}
{{ $s.Set "greeting" "Hello" }}
{{ $s.Get "greeting" }} → Hello
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
{{ $s := newScratch }}
{{ $s.Set "greeting" "Hello" }}
{{ $s.Add "greeting" "Welcome" }}
{{ $s.Get "greeting" }} → HelloWelcome
```
@y
```go-html-template
{{ $s := newScratch }}
{{ $s.Set "greeting" "Hello" }}
{{ $s.Add "greeting" "Welcome" }}
{{ $s.Get "greeting" }} → HelloWelcome
```
@z

@x
```go-html-template
{{ $s := newScratch }}
{{ $s.Set "total" 3 }}
{{ $s.Add "total" 7 }}
{{ $s.Get "total" }} → 10
```
@y
```go-html-template
{{ $s := newScratch }}
{{ $s.Set "total" 3 }}
{{ $s.Add "total" 7 }}
{{ $s.Get "total" }} → 10
```
@z

@x
```go-html-template
{{ $s := newScratch }}
{{ $s.Set "greetings" (slice "Hello") }}
{{ $s.Add "greetings" (slice "Welcome" "Cheers") }}
{{ $s.Get "greetings" }} → [Hello Welcome Cheers]
```
@y
```go-html-template
{{ $s := newScratch }}
{{ $s.Set "greetings" (slice "Hello") }}
{{ $s.Add "greetings" (slice "Welcome" "Cheers") }}
{{ $s.Get "greetings" }} → [Hello Welcome Cheers]
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
{{ $s := newScratch }}
{{ $s.SetInMap "greetings" "english" "Hello" }}
{{ $s.SetInMap "greetings" "french" "Bonjour" }}
{{ $s.Get "greetings" }} → map[english:Hello french:Bonjour]
```
@y
```go-html-template
{{ $s := newScratch }}
{{ $s.SetInMap "greetings" "english" "Hello" }}
{{ $s.SetInMap "greetings" "french" "Bonjour" }}
{{ $s.Get "greetings" }} → map[english:Hello french:Bonjour]
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
{{ $s := newScratch }}
{{ $s.SetInMap "greetings" "english" "Hello" }}
{{ $s.SetInMap "greetings" "french" "Bonjour" }}
{{ $s.DeleteInMap "greetings" "english" }}
{{ $s.Get "greetings" }} → map[french:Bonjour]
```
@y
```go-html-template
{{ $s := newScratch }}
{{ $s.SetInMap "greetings" "english" "Hello" }}
{{ $s.SetInMap "greetings" "french" "Bonjour" }}
{{ $s.DeleteInMap "greetings" "english" }}
{{ $s.Get "greetings" }} → map[french:Bonjour]
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
{{ $s := newScratch }}
{{ $s.SetInMap "greetings" "english" "Hello" }}
{{ $s.SetInMap "greetings" "french" "Bonjour" }}
{{ $s.GetSortedMapValues "greetings" }} → [Hello Bonjour]
```
@y
```go-html-template
{{ $s := newScratch }}
{{ $s.SetInMap "greetings" "english" "Hello" }}
{{ $s.SetInMap "greetings" "french" "Bonjour" }}
{{ $s.GetSortedMapValues "greetings" }} → [Hello Bonjour]
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
{{ $s := newScratch }}
{{ $s.Set "greeting" "Hello" }}
{{ $s.Delete "greeting" }}
```
@y
```go-html-template
{{ $s := newScratch }}
{{ $s.Set "greeting" "Hello" }}
{{ $s.Delete "greeting" }}
```
@z

@x
###### Values
@y
###### Values
@z

@x
Returns the raw backing map. Do not use with `Scratch` or `Store` methods on a `Page` object due to concurrency issues.
@y
Returns the raw backing map. Do not use with `Scratch` or `Store` methods on a `Page` object due to concurrency issues.
@z

@x
```go-html-template
{{ $s := newScratch }}
{{ $s.SetInMap "greetings" "english" "Hello" }}
{{ $s.SetInMap "greetings" "french" "Bonjour" }}
@y
```go-html-template
{{ $s := newScratch }}
{{ $s.SetInMap "greetings" "english" "Hello" }}
{{ $s.SetInMap "greetings" "french" "Bonjour" }}
@z

@x
{{ $map := $s.Values }}
```
@y
{{ $map := $s.Values }}
```
@z
