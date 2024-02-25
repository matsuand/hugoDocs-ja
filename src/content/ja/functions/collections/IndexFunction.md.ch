%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: collections.Index
description: Looks up the index(es) or key(s) of the data structure passed into it.
categories: []
keywords: []
action:
  aliases: [index]
  related: []
  returnType: any
  signatures:
    - collections.Index COLLECTION INDEXES
    - collections.Index COLLECTION KEYS
aliases: [/functions/index,/functions/index-function]
---
@y
---
title: collections.Index
description: Looks up the index(es) or key(s) of the data structure passed into it.
categories: []
keywords: []
action:
  aliases: [index]
  related: []
  returnType: any
  signatures:
    - collections.Index COLLECTION INDEXES
    - collections.Index COLLECTION KEYS
aliases: [/functions/index,/functions/index-function]
---
@z

@x
The `index` functions returns the result of indexing its first argument by the following arguments. Each indexed item must be a map or a slice, e.g.:
@y
The `index` functions returns the result of indexing its first argument by the following arguments. Each indexed item must be a map or a slice, e.g.:
@z

@x
```go-html-template
{{ $slice := slice "a" "b" "c" }}
{{ index $slice 0 }} → a
{{ index $slice 1 }} → b
@y
```go-html-template
{{ $slice := slice "a" "b" "c" }}
{{ index $slice 0 }} → a
{{ index $slice 1 }} → b
@z

@x
{{ $map := dict "a" 100 "b" 200 }}
{{ index $map "b" }} → 200
```
@y
{{ $map := dict "a" 100 "b" 200 }}
{{ index $map "b" }} → 200
```
@z

@x
The function takes multiple indices as arguments, and this can be used to get nested values, e.g.:
@y
The function takes multiple indices as arguments, and this can be used to get nested values, e.g.:
@z

@x
```go-html-template
{{ $map := dict "a" 100 "b" 200 "c" (slice 10 20 30) }}
{{ index $map "c" 1 }} → 20
{{ $map := dict "a" 100 "b" 200 "c" (dict "d" 10 "e" 20) }}
{{ index $map "c" "e" }} → 20
```
@y
```go-html-template
{{ $map := dict "a" 100 "b" 200 "c" (slice 10 20 30) }}
{{ index $map "c" 1 }} → 20
{{ $map := dict "a" 100 "b" 200 "c" (dict "d" 10 "e" 20) }}
{{ index $map "c" "e" }} → 20
```
@z

@x
You may write multiple indices as a slice:
@y
You may write multiple indices as a slice:
@z

@x
```go-html-template
{{ $map := dict "a" 100 "b" 200 "c" (dict "d" 10 "e" 20) }}
{{ $slice := slice "c" "e" }}
{{ index $map $slice }} → 20
```
@y
```go-html-template
{{ $map := dict "a" 100 "b" 200 "c" (dict "d" 10 "e" 20) }}
{{ $slice := slice "c" "e" }}
{{ index $map $slice }} → 20
```
@z

@x
## Example: load data from a path based on front matter parameters
@y
## Example: load data from a path based on front matter parameters
@z

@x
Assume you want to add a `location = ""` field to your front matter for every article written in `content/vacations/`. You want to use this field to populate information about the location at the bottom of the article in your `single.html` template. You also have a directory in `data/locations/` that looks like the following:
@y
Assume you want to add a `location = ""` field to your front matter for every article written in `content/vacations/`. You want to use this field to populate information about the location at the bottom of the article in your `single.html` template. You also have a directory in `data/locations/` that looks like the following:
@z

@x
```text
data/
  └── locations/
      ├── abilene.toml
      ├── chicago.toml
      ├── oslo.toml
      └── provo.toml
```
@y
```text
data/
  └── locations/
      ├── abilene.toml
      ├── chicago.toml
      ├── oslo.toml
      └── provo.toml
```
@z

@x
Here is an example:
@y
Here is an example:
@z

@x
{{< code-toggle file=data/locations/oslo >}}
website = "https://www.oslo.kommune.no"
pop_city = 658390
pop_metro = 1717900
{{< /code-toggle >}}
@y
{{< code-toggle file=data/locations/oslo >}}
website = "https://www.oslo.kommune.no"
pop_city = 658390
pop_metro = 1717900
{{< /code-toggle >}}
@z

@x
The example we will use will be an article on Oslo, whose front matter should be set to exactly the same name as the corresponding file name in `data/locations/`:
@y
The example we will use will be an article on Oslo, whose front matter should be set to exactly the same name as the corresponding file name in `data/locations/`:
@z

@x
{{< code-toggle file=content/articles/oslo.md fm=true >}}
title = "My Norwegian Vacation"
location = "oslo"
{{< /code-toggle >}}
@y
{{< code-toggle file=content/articles/oslo.md fm=true >}}
title = "My Norwegian Vacation"
location = "oslo"
{{< /code-toggle >}}
@z

@x
The content of `oslo.toml` can be accessed from your template using the following node path: `.Site.Data.locations.oslo`. However, the specific file you need is going to change according to the front matter.
@y
The content of `oslo.toml` can be accessed from your template using the following node path: `.Site.Data.locations.oslo`. However, the specific file you need is going to change according to the front matter.
@z

@x
This is where the `index` function is needed. `index` takes 2 arguments in this use case:
@y
This is where the `index` function is needed. `index` takes 2 arguments in this use case:
@z

@x
1. The node path
2. A string corresponding to the desired data; e.g.&mdash;
@y
1. The node path
2. A string corresponding to the desired data; e.g.&mdash;
@z

@x
```go-html-template
{{ index .Site.Data.locations "oslo" }}
```
@y
```go-html-template
{{ index .Site.Data.locations "oslo" }}
```
@z

@x
The variable for `.Params.location` is a string and can therefore replace `oslo` in the example above:
@y
The variable for `.Params.location` is a string and can therefore replace `oslo` in the example above:
@z

@x
```go-html-template
{{ index .Site.Data.locations .Params.location }}
=> map[website:https://www.oslo.kommune.no pop_city:658390 pop_metro:1717900]
```
@y
```go-html-template
{{ index .Site.Data.locations .Params.location }}
=> map[website:https://www.oslo.kommune.no pop_city:658390 pop_metro:1717900]
```
@z

@x
Now the call will return the specific file according to the location specified in the content's front matter, but you will likely want to write specific properties to the template. You can do this by continuing down the node path via dot notation (`.`):
@y
Now the call will return the specific file according to the location specified in the content's front matter, but you will likely want to write specific properties to the template. You can do this by continuing down the node path via dot notation (`.`):
@z

@x
```go-html-template
{{ (index .Site.Data.locations .Params.location).pop_city }}
=> 658390
```
@y
```go-html-template
{{ (index .Site.Data.locations .Params.location).pop_city }}
=> 658390
```
@z
