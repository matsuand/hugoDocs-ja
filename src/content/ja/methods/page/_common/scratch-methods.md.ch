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
{{ .Scratch.Set "greeting" "Hello" }}
```
@y
```go-html-template
{{ .Scratch.Set "greeting" "Hello" }}
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
{{ .Scratch.Set "greeting" "Hello" }}
{{ .Scratch.Get "greeting" }} → Hello
```
@y
```go-html-template
{{ .Scratch.Set "greeting" "Hello" }}
{{ .Scratch.Get "greeting" }} → Hello
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
{{ .Scratch.Set "greeting" "Hello" }}
{{ .Scratch.Add "greeting" "Welcome" }}
{{ .Scratch.Get "greeting" }} → HelloWelcome
```
@y
```go-html-template
{{ .Scratch.Set "greeting" "Hello" }}
{{ .Scratch.Add "greeting" "Welcome" }}
{{ .Scratch.Get "greeting" }} → HelloWelcome
```
@z

@x
```go-html-template
{{ .Scratch.Set "total" 3 }}
{{ .Scratch.Add "total" 7 }}
{{ .Scratch.Get "total" }} → 10
```
@y
```go-html-template
{{ .Scratch.Set "total" 3 }}
{{ .Scratch.Add "total" 7 }}
{{ .Scratch.Get "total" }} → 10
```
@z

@x
```go-html-template
{{ .Scratch.Set "greetings" (slice "Hello") }}
{{ .Scratch.Add "greetings" (slice "Welcome" "Cheers") }}
{{ .Scratch.Get "greetings" }} → [Hello Welcome Cheers]
```
@y
```go-html-template
{{ .Scratch.Set "greetings" (slice "Hello") }}
{{ .Scratch.Add "greetings" (slice "Welcome" "Cheers") }}
{{ .Scratch.Get "greetings" }} → [Hello Welcome Cheers]
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
{{ .Scratch.SetInMap "greetings" "english" "Hello" }}
{{ .Scratch.SetInMap "greetings" "french" "Bonjour" }}
{{ .Scratch.Get "greetings" }} → map[english:Hello french:Bonjour]
```
@y
```go-html-template
{{ .Scratch.SetInMap "greetings" "english" "Hello" }}
{{ .Scratch.SetInMap "greetings" "french" "Bonjour" }}
{{ .Scratch.Get "greetings" }} → map[english:Hello french:Bonjour]
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
{{ .Scratch.SetInMap "greetings" "english" "Hello" }}
{{ .Scratch.SetInMap "greetings" "french" "Bonjour" }}
{{ .Scratch.DeleteInMap "greetings" "english" }}
{{ .Scratch.Get "greetings" }} → map[french:Bonjour]
```
@y
```go-html-template
{{ .Scratch.SetInMap "greetings" "english" "Hello" }}
{{ .Scratch.SetInMap "greetings" "french" "Bonjour" }}
{{ .Scratch.DeleteInMap "greetings" "english" }}
{{ .Scratch.Get "greetings" }} → map[french:Bonjour]
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
{{ .Scratch.SetInMap "greetings" "english" "Hello" }}
{{ .Scratch.SetInMap "greetings" "french" "Bonjour" }}
{{ .Scratch.GetSortedMapValues "greetings" }} → [Hello Bonjour]
```
@y
```go-html-template
{{ .Scratch.SetInMap "greetings" "english" "Hello" }}
{{ .Scratch.SetInMap "greetings" "french" "Bonjour" }}
{{ .Scratch.GetSortedMapValues "greetings" }} → [Hello Bonjour]
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
{{ .Scratch.Set "greeting" "Hello" }}
{{ .Scratch.Delete "greeting" }}
```
@y
```go-html-template
{{ .Scratch.Set "greeting" "Hello" }}
{{ .Scratch.Delete "greeting" }}
```
@z
