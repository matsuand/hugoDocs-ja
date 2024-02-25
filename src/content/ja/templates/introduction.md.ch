%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Templating
linkTitle: Templating
description: Hugo uses Go's `html/template` and `text/template` libraries as the basis for the templating.
categories: [templates,fundamentals]
keywords: [go]
@y
title: テンプレート処理
linkTitle: テンプレート処理
description: Hugo では Go のライブラリ `html/template` と `text/template` を使ってテンプレートの基本的な処理を行っています。
categories: [templates,fundamentals]
keywords: [go]
@z

@x
{{% note %}}
The following is only a primer on Go Templates. For an in-depth look into Go Templates, check the official [Go docs](https://golang.org/pkg/text/template/).
{{% /note %}}
@y
{{% note %}}
以下に示すのは Go テンプレートの初歩に過ぎません。
Go テンプレートをより深く調べていくなら、公式の [Go ドキュメント](https://golang.org/pkg/text/template/) を参照してください。
{{% /note %}}
@z

@x
Go Templates provide an extremely simple template language that adheres to the belief that only the most basic of logic belongs in the template or view layer.
@y
Go Templates provide an extremely simple template language that adheres to the belief that only the most basic of logic belongs in the template or view layer.
@z

@x
## Basic syntax
@y
## 基本的な文法 {#basic-syntax}
@z

@x
Go Templates are HTML files with the addition of [variables][variables] and [functions][functions]. Go Template variables and functions are accessible within `{{ }}`.
@y
Go テンプレートは HTML ファイルに [変数][variables] や [関数][functions] が加わったものです。
Go テンプレートの変数や関数は `{{ }}` という記述によりアクセスすることができます。
@z

@x
### Access a predefined variable
@y
### 既定義変数へのアクセス {#access-a-predefined-variable}
@z

@x
A _predefined variable_ could be a variable already existing in the
current scope (like the `.Title` example in the [Variables](#variables) section below) or a custom variable (like the
`$address` example in that same section).
@y
**既定義変数** (predefined variable) とは現在のスコープ内にすでに存在している変数 (たとえば以下の [変数](#variables) の節において説明する `.Title` の例)、あるいはカスタム変数 (同じく `$address` の例) を表します。
@z

@x
```go-html-template
{{ .Title }}
{{ $address }}
```
@y
```go-html-template
{{ .Title }}
{{ $address }}
```
@z

@x
Parameters for functions are separated using spaces. The general syntax is:
@y
関数に対するパラメーターは空白で区切ります。
一般的な文法は以下のとおりです。
@z

@x
```go-html-template
{{ FUNCTION ARG1 ARG2 .. }}
```
@y
```go-html-template
{{ FUNCTION ARG1 ARG2 .. }}
```
@z

@x
The following example calls the `add` function with inputs of `1` and `2`:
@y
以下の例は `add` 関数を呼び出すものであり、入力として `1` と `2` を指定しています。
@z

@x
```go-html-template
{{ add 1 2 }}
```
@y
```go-html-template
{{ add 1 2 }}
```
@z

@x
#### Methods and fields are accessed via dot notation
@y
#### メソッドおよびフィールドはドット記法によりアクセス {#methods-and-fields-are-accessed-via-dot-notation}
@z

@x
Accessing the Page Parameter `bar` defined in a piece of content's [front matter].
@y
コンテントの [フロントマター][front matter] (front matter) 内に定義されたページパラメーター `bar` にアクセスします。
@z

@x
```go-html-template
{{ .Params.bar }}
```
@y
```go-html-template
{{ .Params.bar }}
```
@z

@x
#### Parentheses can be used to group items together
@y
#### グループアイテムをまとめるにはカッコ書き {#parentheses-can-be-used-to-group-items-together}
@z

@x
```go-html-template
{{ if or (isset .Params "alt") (isset .Params "caption") }} Caption {{ end }}
```
@y
```go-html-template
{{ if or (isset .Params "alt") (isset .Params "caption") }} Caption {{ end }}
```
@z

@x
#### A single statement can be split over multiple lines
@y
#### 1 つのステートメントは複数行への分割が可能 {#a-single-statement-can-be-split-over-multiple-lines}
@z

@x
```go-html-template
{{ if or
  (isset .Params "alt")
  (isset .Params "caption")
}}
```
@y
```go-html-template
{{ if or
  (isset .Params "alt")
  (isset .Params "caption")
}}
```
@z

@x
#### Raw string literals can include newlines
@y
#### 単純な文字列リテラルには改行を含めることが可能 {#raw-string-literals-can-include-newlines}
@z

@x
```go-html-template
{{ $msg := `Line one.
Line two.` }}
```
@y
```go-html-template
{{ $msg := `Line one.
Line two.` }}
```
@z

@x
## Variables
@y
## 変数 {#variables}
@z

@x
Each Go Template gets a data object. In Hugo, each template is passed
a `Page`. In the below example, `.Title` is one of the elements
accessible in that [`Page` variable][pagevars].
@y
Each Go Template gets a data object. In Hugo, each template is passed
a `Page`. In the below example, `.Title` is one of the elements
accessible in that [`Page` variable][pagevars].
@z

@x
With the `Page` being the default scope of a template, the `Title`
element in current scope (`.` -- "the **dot**") is accessible simply
by the dot-prefix (`.Title`):
@y
With the `Page` being the default scope of a template, the `Title`
element in current scope (`.` -- "the **dot**") is accessible simply
by the dot-prefix (`.Title`):
@z

@x
```go-html-template
<title>{{ .Title }}</title>
```
@y
```go-html-template
<title>{{ .Title }}</title>
```
@z

@x
Values can also be stored in custom variables and referenced later:
@y
Values can also be stored in custom variables and referenced later:
@z

@x
{{% note %}}
The custom variables need to be prefixed with `$`.
{{% /note %}}
@y
{{% note %}}
カスタム変数には先頭に `$` をつける必要があります。
{{% /note %}}
@z

@x
```go-html-template
{{ $address := "123 Main St." }}
{{ $address }}
```
@y
```go-html-template
{{ $address := "123 Main St." }}
{{ $address }}
```
@z

@x
Variables can be re-defined using the `=` operator. The example below
prints "Var is Hugo Home" on the home page, and "Var is Hugo Page" on
all other pages:
@y
変数はオペレーター `=` を使うことで再定義することができます。
以下の例はホームページに "Var is Hugo Home" を出力し、その他のページには "Var is Hugo Page" を出力するものです。
@z

@x
```go-html-template
{{ $var := "Hugo Page" }}
{{ if .IsHome }}
    {{ $var = "Hugo Home" }}
{{ end }}
Var is {{ $var }}
```
@y
```go-html-template
{{ $var := "Hugo Page" }}
{{ if .IsHome }}
    {{ $var = "Hugo Home" }}
{{ end }}
Var is {{ $var }}
```
@z

@x
Variable names must conform to Go's naming rules for [identifiers][identifier].
@y
変数名は Go 言語における [識別子][identifier] の命名規則に従う必要があります。
@z

@x
## Functions
@y
## 関数 {#functions}
@z

@x
Go Templates only ship with a few basic functions but also provide a mechanism for applications to extend the original set.
@y
Go Templates only ship with a few basic functions but also provide a mechanism for applications to extend the original set.
@z

@x
[Hugo template functions][functions] provide additional functionality specific to building websites. Functions are called by using their name followed by the required parameters separated by spaces. Template functions cannot be added without recompiling Hugo.
@y
[Hugo template functions][functions] provide additional functionality specific to building websites. Functions are called by using their name followed by the required parameters separated by spaces. Template functions cannot be added without recompiling Hugo.
@z

@x
### Example 1: adding numbers
@y
### Example 1: adding numbers {#example-1-adding-numbers}
@z

@x
```go-html-template
{{ add 1 2 }}
<!-- prints 3 -->
```
@y
```go-html-template
{{ add 1 2 }}
<!-- prints 3 -->
```
@z

@x
### Example 2: comparing numbers
@y
### Example 2: comparing numbers {#example-2-comparing-numbers}
@z

@x
```go-html-template
{{ lt 1 2 }}
<!-- prints true (i.e., since 1 is less than 2) -->
```
@y
```go-html-template
{{ lt 1 2 }}
<!-- prints true (i.e., since 1 is less than 2) -->
```
@z

@x
Note that both examples make use of Go Template's [math][math] functions.
@y
Note that both examples make use of Go Template's [math][math] functions.
@z

@x
{{% note %}}
There are more boolean operators than those listed in the Hugo docs in the [Go Template documentation](https://golang.org/pkg/text/template/#hdr-Functions).
{{% /note %}}
@y
{{% note %}}
There are more boolean operators than those listed in the Hugo docs in the [Go Template documentation](https://golang.org/pkg/text/template/#hdr-Functions).
{{% /note %}}
@z

@x
## Includes
@y
## Includes {#includes}
@z

@x
When including another template, you will need to pass it the data that it would
need to access.
@y
When including another template, you will need to pass it the data that it would
need to access.
@z

@x
{{% note %}}
To pass along the current context, please remember to include a trailing **dot**.
{{% /note %}}
@y
{{% note %}}
To pass along the current context, please remember to include a trailing **dot**.
{{% /note %}}
@z

@x
The templates location will always be starting at the `layouts/` directory
within Hugo.
@y
The templates location will always be starting at the `layouts/` directory
within Hugo.
@z

@x
### Partial
@y
### Partial {#partial}
@z

@x
The [`partial`][partials] function is used to include _partial_ templates using
the syntax `{{ partial "<PATH>/<PARTIAL>.<EXTENSION>" . }}`.
@y
The [`partial`][partials] function is used to include _partial_ templates using
the syntax `{{ partial "<PATH>/<PARTIAL>.<EXTENSION>" . }}`.
@z

@x
Example of including a `layouts/partials/header.html` partial:
@y
Example of including a `layouts/partials/header.html` partial:
@z

@x
```go-html-template
{{ partial "header.html" . }}
```
@y
```go-html-template
{{ partial "header.html" . }}
```
@z

@x
### Template
@y
### Template {#template}
@z

@x
The `template` function was used to include _partial_ templates
in much older Hugo versions. Now it's useful only for calling
[_internal_ templates][internal templates]. The syntax is `{{ template
"_internal/<TEMPLATE>.<EXTENSION>" . }}`.
@y
The `template` function was used to include _partial_ templates
in much older Hugo versions. Now it's useful only for calling
[_internal_ templates][internal templates]. The syntax is `{{ template
"_internal/<TEMPLATE>.<EXTENSION>" . }}`.
@z

@x
{{% note %}}
The available **internal** templates can be found
[here](https://github.com/gohugoio/hugo/tree/master/tpl/tplimpl/embedded/templates).
{{% /note %}}
@y
{{% note %}}
The available **internal** templates can be found
[here](https://github.com/gohugoio/hugo/tree/master/tpl/tplimpl/embedded/templates).
{{% /note %}}
@z

@x
Example of including the internal `opengraph.html` template:
@y
Example of including the internal `opengraph.html` template:
@z

@x
```go-html-template
{{ template "_internal/opengraph.html" . }}
```
@y
```go-html-template
{{ template "_internal/opengraph.html" . }}
```
@z

@x
## Logic
@y
## Logic {#logic}
@z

@x
Go Templates provide the most basic iteration and conditional logic.
@y
Go Templates provide the most basic iteration and conditional logic.
@z

@x
### Iteration
@y
### Iteration {#iteration}
@z

@x
The Go Templates make heavy use of `range` to iterate over a _map_,
_array_, or _slice_. The following are different examples of how to
use `range`.
@y
The Go Templates make heavy use of `range` to iterate over a _map_,
_array_, or _slice_. The following are different examples of how to
use `range`.
@z

@x
#### Example 1: using context (`.`)
@y
#### Example 1: using context (`.`) {#example-1-using-context-}
@z

@x
```go-html-template
{{ range $array }}
    {{ . }} <!-- The . represents an element in $array -->
{{ end }}
```
@y
```go-html-template
{{ range $array }}
    {{ . }} <!-- The . represents an element in $array -->
{{ end }}
```
@z

@x
#### Example 2: declaring a variable name for an array element's value
@y
#### Example 2: declaring a variable name for an array element's value {#example-2-declaring-a-variable-name-for-an-array-elements-value}
@z

@x
```go-html-template
{{ range $elem_val := $array }}
    {{ $elem_val }}
{{ end }}
```
@y
```go-html-template
{{ range $elem_val := $array }}
    {{ $elem_val }}
{{ end }}
```
@z

@x
#### Example 3: declaring variable names for an array element's index _and_ value
@y
#### Example 3: declaring variable names for an array element's index _and_ value {#example-3-declaring-variable-names-for-an-array-elements-index-_and_-value}
@z

@x
For an array or slice, the first declared variable will map to each
element's index.
@y
For an array or slice, the first declared variable will map to each
element's index.
@z

@x
```go-html-template
{{ range $elem_index, $elem_val := $array }}
  {{ $elem_index }} -- {{ $elem_val }}
{{ end }}
```
@y
```go-html-template
{{ range $elem_index, $elem_val := $array }}
  {{ $elem_index }} -- {{ $elem_val }}
{{ end }}
```
@z

@x
#### Example 4: declaring variable names for a map element's key _and_ value
@y
#### Example 4: declaring variable names for a map element's key _and_ value {#example-4-declaring-variable-names-for-a-map-elements-key-_and_-value}
@z

@x
For a map, the first declared variable will map to each map element's
key.
@y
For a map, the first declared variable will map to each map element's
key.
@z

@x
```go-html-template
{{ range $elem_key, $elem_val := $map }}
  {{ $elem_key }} -- {{ $elem_val }}
{{ end }}
```
@y
```go-html-template
{{ range $elem_key, $elem_val := $map }}
  {{ $elem_key }} -- {{ $elem_val }}
{{ end }}
```
@z

@x
#### Example 5: conditional on empty _map_, _array_, or _slice_
@y
#### Example 5: conditional on empty _map_, _array_, or _slice_ {#example-5-conditional-on-empty-_map_-_array_-or-_slice_}
@z

@x
If the _map_, _array_, or _slice_ passed into the range is zero-length then the else statement is evaluated.
@y
If the _map_, _array_, or _slice_ passed into the range is zero-length then the else statement is evaluated.
@z

@x
```go-html-template
{{ range $array }}
    {{ . }}
{{ else }}
    <!-- This is only evaluated if $array is empty -->
{{ end }}
```
@y
```go-html-template
{{ range $array }}
    {{ . }}
{{ else }}
    <!-- This is only evaluated if $array is empty -->
{{ end }}
```
@z

@x
### Conditionals
@y
### Conditionals {#conditionals}
@z

@x
`if`, `else`, `with`, `or`, `and` and `not` provide the framework for handling conditional logic in Go Templates. Like `range`, `if` and `with` statements are closed with an `{{ end }}`.
@y
`if`, `else`, `with`, `or`, `and` and `not` provide the framework for handling conditional logic in Go Templates. Like `range`, `if` and `with` statements are closed with an `{{ end }}`.
@z

@x
Go Templates treat the following values as **false**:
@y
Go Templates treat the following values as **false**:
@z

@x
- `false` (boolean)
- 0 (integer)
- any zero-length array, slice, map, or string
@y
- `false` (boolean)
- 0 (integer)
- any zero-length array, slice, map, or string
@z

@x
#### Example 1: `with`
@y
#### Example 1: `with` {#example-1-with}
@z

@x
It is common to write "if something exists, do this" kind of
statements using `with`.
@y
It is common to write "if something exists, do this" kind of
statements using `with`.
@z

@x
{{% note %}}
`with` rebinds the context `.` within its scope (just like in `range`).
{{% /note %}}
@y
{{% note %}}
`with` rebinds the context `.` within its scope (just like in `range`).
{{% /note %}}
@z

@x
It skips the block if the variable is absent, or if it evaluates to
"false" as explained above.
@y
It skips the block if the variable is absent, or if it evaluates to
"false" as explained above.
@z

@x
```go-html-template
{{ with .Params.title }}
    <h4>{{ . }}</h4>
{{ end }}
```
@y
```go-html-template
{{ with .Params.title }}
    <h4>{{ . }}</h4>
{{ end }}
```
@z

@x
#### Example 2: `with` .. `else`
@y
#### Example 2: `with` .. `else` {#example-2-with--else}
@z

@x
Below snippet uses the "description" front-matter parameter's value if
set, else uses the default `.Summary` [Page variable][pagevars]:
@y
Below snippet uses the "description" front-matter parameter's value if
set, else uses the default `.Summary` [Page variable][pagevars]:
@z

@x
```go-html-template
{{ with .Param "description" }}
    {{ . }}
{{ else }}
    {{ .Summary }}
{{ end }}
```
@y
```go-html-template
{{ with .Param "description" }}
    {{ . }}
{{ else }}
    {{ .Summary }}
{{ end }}
```
@z

@x
See the [`.Param` function][param].
@y
See the [`.Param` function][param].
@z

@x
#### Example 3: `if`
@y
#### Example 3: `if` {#example-3-if}
@z

@x
An alternative (and a more verbose) way of writing `with` is using
`if`. Here, the `.` does not get rebound.
@y
An alternative (and a more verbose) way of writing `with` is using
`if`. Here, the `.` does not get rebound.
@z

@x
Below example is "Example 1" rewritten using `if`:
@y
Below example is "Example 1" rewritten using `if`:
@z

@x
```go-html-template
{{ if isset .Params "title" }}
    <h4>{{ index .Params "title" }}</h4>
{{ end }}
```
@y
```go-html-template
{{ if isset .Params "title" }}
    <h4>{{ index .Params "title" }}</h4>
{{ end }}
```
@z

@x
#### Example 4: `if` .. `else`
@y
#### Example 4: `if` .. `else` {#example-4-if--else}
@z

@x
Below example is "Example 2" rewritten using `if` .. `else`, and using
[`isset`] + `.Params` variable (different from the
[`.Param` **function**][param]) instead:
@y
Below example is "Example 2" rewritten using `if` .. `else`, and using
[`isset`] + `.Params` variable (different from the
[`.Param` **function**][param]) instead:
@z

@x
```go-html-template
{{ if (isset .Params "description") }}
    {{ index .Params "description" }}
{{ else }}
    {{ .Summary }}
{{ end }}
```
@y
```go-html-template
{{ if (isset .Params "description") }}
    {{ index .Params "description" }}
{{ else }}
    {{ .Summary }}
{{ end }}
```
@z

@x
#### Example 5: `if` .. `else if` .. `else`
@y
#### Example 5: `if` .. `else if` .. `else` {#example-5-if--else-if--else}
@z

@x
Unlike `with`, `if` can contain `else if` clauses too.
@y
Unlike `with`, `if` can contain `else if` clauses too.
@z

@x
```go-html-template
{{ if (isset .Params "description") }}
    {{ index .Params "description" }}
{{ else if (isset .Params "summary") }}
    {{ index .Params "summary" }}
{{ else }}
    {{ .Summary }}
{{ end }}
```
@y
```go-html-template
{{ if (isset .Params "description") }}
    {{ index .Params "description" }}
{{ else if (isset .Params "summary") }}
    {{ index .Params "summary" }}
{{ else }}
    {{ .Summary }}
{{ end }}
```
@z

@x
#### Example 6: `and` & `or`
@y
#### Example 6: `and` & `or` {#example-6-and--or}
@z

@x
```go-html-template
{{ if (and (or (isset .Params "title") (isset .Params "caption")) (isset .Params "attr")) }}
```
@y
```go-html-template
{{ if (and (or (isset .Params "title") (isset .Params "caption")) (isset .Params "attr")) }}
```
@z

@x
## Pipes
@y
## Pipes {#pipes}
@z

@x
One of the most powerful components of Go Templates is the ability to stack actions one after another. This is done by using pipes. Borrowed from Unix pipes, the concept is simple: each pipeline's output becomes the input of the following pipe.
@y
One of the most powerful components of Go Templates is the ability to stack actions one after another. This is done by using pipes. Borrowed from Unix pipes, the concept is simple: each pipeline's output becomes the input of the following pipe.
@z

@x
Because of the very simple syntax of Go Templates, the pipe is essential to being able to chain together function calls. One limitation of the pipes is that they can only work with a single value and that value becomes the last parameter of the next pipeline.
@y
Because of the very simple syntax of Go Templates, the pipe is essential to being able to chain together function calls. One limitation of the pipes is that they can only work with a single value and that value becomes the last parameter of the next pipeline.
@z

@x
A few simple examples should help convey how to use the pipe.
@y
A few simple examples should help convey how to use the pipe.
@z

@x
### Example 1: `shuffle`
@y
### Example 1: `shuffle` {#example-1-shuffle}
@z

@x
The following two examples are functionally the same:
@y
The following two examples are functionally the same:
@z

@x
```go-html-template
{{ shuffle (seq 1 5) }}
```
@y
```go-html-template
{{ shuffle (seq 1 5) }}
```
@z

@x
```go-html-template
{{ (seq 1 5) | shuffle }}
```
@y
```go-html-template
{{ (seq 1 5) | shuffle }}
```
@z

@x
### Example 2: `index`
@y
### Example 2: `index` {#example-2-index}
@z

@x
The following accesses the page parameter called "disqus_url" and escapes the HTML. This example also uses the [`index`] function, which is built into Go Templates:
@y
The following accesses the page parameter called "disqus_url" and escapes the HTML. This example also uses the [`index`] function, which is built into Go Templates:
@z

@x
```go-html-template
{{ index .Params "disqus_url" | html }}
```
@y
```go-html-template
{{ index .Params "disqus_url" | html }}
```
@z

@x
### Example 3: `or` with `isset`
@y
### Example 3: `or` with `isset` {#example-3-or-with-isset}
@z

@x
```go-html-template
{{ if or (or (isset .Params "title") (isset .Params "caption")) (isset .Params "attr") }}
Stuff Here
{{ end }}
```
@y
```go-html-template
{{ if or (or (isset .Params "title") (isset .Params "caption")) (isset .Params "attr") }}
Stuff Here
{{ end }}
```
@z

@x
Could be rewritten as
@y
Could be rewritten as
@z

@x
```go-html-template
{{ if isset .Params "caption" | or isset .Params "title" | or isset .Params "attr" }}
Stuff Here
{{ end }}
```
@y
```go-html-template
{{ if isset .Params "caption" | or isset .Params "title" | or isset .Params "attr" }}
Stuff Here
{{ end }}
```
@z

@x
## Context (aka "the dot") {#the-dot}
@y
## Context (aka "the dot") {#the-dot}
@z

@x
The most easily overlooked concept to understand about Go Templates is
that `{{ . }}` always refers to the **current context**.
@y
The most easily overlooked concept to understand about Go Templates is
that `{{ . }}` always refers to the **current context**.
@z

@x
- In the top level of your template, this will be the data set made
  available to it.
- Inside an iteration, however, it will have the value of the
  current item in the loop; i.e., `{{ . }}` will no longer refer to
  the data available to the entire page.
@y
- In the top level of your template, this will be the data set made
  available to it.
- Inside an iteration, however, it will have the value of the
  current item in the loop; i.e., `{{ . }}` will no longer refer to
  the data available to the entire page.
@z

@x
If you need to access page-level data (e.g., page parameters set in front
matter) from within the loop, you will likely want to do one of the
following:
@y
If you need to access page-level data (e.g., page parameters set in front
matter) from within the loop, you will likely want to do one of the
following:
@z

@x
### 1. Define a variable independent of context
@y
### 1. Define a variable independent of context {#1-define-a-variable-independent-of-context}
@z

@x
The following shows how to define a variable independent of the context.
@y
The following shows how to define a variable independent of the context.
@z

@x
{{< code file=tags-range-with-page-variable.html >}}
{{ $title := .Site.Title }}
<ul>
{{ range .Params.tags }}
    <li>
        <a href="/tags/{{ . | urlize }}">{{ . }}</a>
        - {{ $title }}
    </li>
{{ end }}
</ul>
{{< /code >}}
@y
{{< code file=tags-range-with-page-variable.html >}}
{{ $title := .Site.Title }}
<ul>
{{ range .Params.tags }}
    <li>
        <a href="/tags/{{ . | urlize }}">{{ . }}</a>
        - {{ $title }}
    </li>
{{ end }}
</ul>
{{< /code >}}
@z

@x
{{% note %}}
Notice how once we have entered the loop (i.e. `range`), the value of `{{ . }}` has changed. We have defined a variable outside the loop (`{{ $title }}`) that we've assigned a value so that we have access to the value from within the loop as well.
{{% /note %}}
@y
{{% note %}}
Notice how once we have entered the loop (i.e. `range`), the value of `{{ . }}` has changed. We have defined a variable outside the loop (`{{ $title }}`) that we've assigned a value so that we have access to the value from within the loop as well.
{{% /note %}}
@z

@x
### 2. Use `$.` to access the global context
@y
### 2. Use `$.` to access the global context {#2-use--to-access-the-global-context}
@z

@x
`$` has special significance in your templates. `$` is set to the starting value of `.` ("the dot") by default. This is a [documented feature of Go text/template][dotdoc]. This means you have access to the global context from anywhere. Here is an equivalent example of the preceding code block but now using `$` to grab `.Site.Title` from the global context:
@y
`$` has special significance in your templates. `$` is set to the starting value of `.` ("the dot") by default. This is a [documented feature of Go text/template][dotdoc]. This means you have access to the global context from anywhere. Here is an equivalent example of the preceding code block but now using `$` to grab `.Site.Title` from the global context:
@z

@x
{{< code file=range-through-tags-w-global.html >}}
<ul>
{{ range .Params.tags }}
  <li>
    <a href="/tags/{{ . | urlize }}">{{ . }}</a>
            - {{ $.Site.Title }}
  </li>
{{ end }}
</ul>
{{< /code >}}
@y
{{< code file=range-through-tags-w-global.html >}}
<ul>
{{ range .Params.tags }}
  <li>
    <a href="/tags/{{ . | urlize }}">{{ . }}</a>
            - {{ $.Site.Title }}
  </li>
{{ end }}
</ul>
{{< /code >}}
@z

@x
{{% note %}}
The built-in magic of `$` would cease to work if someone were to mischievously redefine the special character; e.g. `{{ $ := .Site }}`. *Don't do it.* You may, of course, recover from this mischief by using `{{ $ := . }}` in a global context to reset `$` to its default value.
{{% /note %}}
@y
{{% note %}}
The built-in magic of `$` would cease to work if someone were to mischievously redefine the special character; e.g. `{{ $ := .Site }}`. *Don't do it.* You may, of course, recover from this mischief by using `{{ $ := . }}` in a global context to reset `$` to its default value.
{{% /note %}}
@z

@x
## Whitespace
@y
## Whitespace {#whitespace}
@z

@x
Go 1.6 includes the ability to trim the whitespace from either side of a Go tag by including a hyphen (`-`) and space immediately beside the corresponding `{{` or `}}` delimiter.
@y
Go 1.6 includes the ability to trim the whitespace from either side of a Go tag by including a hyphen (`-`) and space immediately beside the corresponding `{{` or `}}` delimiter.
@z

@x
For instance, the following Go Template will include the newlines and horizontal tab in its HTML output:
@y
For instance, the following Go Template will include the newlines and horizontal tab in its HTML output:
@z

@x
```go-html-template
<div>
  {{ .Title }}
</div>
```
@y
```go-html-template
<div>
  {{ .Title }}
</div>
```
@z

@x
Which will output:
@y
Which will output:
@z

@x
```html
<div>
  Hello, World!
</div>
```
@y
```html
<div>
  Hello, World!
</div>
```
@z

@x
Leveraging the `-` in the following example will remove the extra white space surrounding the `.Title` variable and remove the newline:
@y
Leveraging the `-` in the following example will remove the extra white space surrounding the `.Title` variable and remove the newline:
@z

@x
```go-html-template
<div>
  {{- .Title -}}
</div>
```
@y
```go-html-template
<div>
  {{- .Title -}}
</div>
```
@z

@x
Which then outputs:
@y
Which then outputs:
@z

@x
```html
<div>Hello, World!</div>
```
@y
```html
<div>Hello, World!</div>
```
@z

@x
Go considers the following characters _whitespace_:
@y
Go considers the following characters _whitespace_:
@z

@x
* space
* horizontal tab
* carriage return
* newline
@y
* space
* horizontal tab
* carriage return
* newline
@z

@x
## Comments
@y
## Comments {#comments}
@z

@x
In order to keep your templates organized and share information throughout your team, you may want to add comments to your templates. There are two ways to do that with Hugo.
@y
In order to keep your templates organized and share information throughout your team, you may want to add comments to your templates. There are two ways to do that with Hugo.
@z

@x
### Go templates comments
@y
### Go templates comments {#go-templates-comments}
@z

@x
Go Templates support `{{/*` and `*/}}` to open and close a comment block. Nothing within that block will be rendered.
@y
Go Templates support `{{/*` and `*/}}` to open and close a comment block. Nothing within that block will be rendered.
@z

@x
For example:
@y
For example:
@z

@x
```go-html-template
Bonsoir, {{/* {{ add 0 + 2 }} */}}Eliott.
```
@y
```go-html-template
Bonsoir, {{/* {{ add 0 + 2 }} */}}Eliott.
```
@z

@x
Will render `Bonsoir, Eliott.`, and not care about the syntax error (`add 0 + 2`) in the comment block.
@y
Will render `Bonsoir, Eliott.`, and not care about the syntax error (`add 0 + 2`) in the comment block.
@z

@x
### HTML comments
@y
### HTML comments {#html-comments}
@z

@x
You can add html comments by piping a string HTML code comment to `safeHTML`.
@y
You can add html comments by piping a string HTML code comment to `safeHTML`.
@z

@x
For example:
@y
For example:
@z

@x
```go-html-template
{{ "<!-- This is an HTML comment -->" | safeHTML }}
```
@y
```go-html-template
{{ "<!-- This is an HTML comment -->" | safeHTML }}
```
@z

@x
If you need variables to construct such HTML comments, just pipe `printf` to `safeHTML`.
@y
If you need variables to construct such HTML comments, just pipe `printf` to `safeHTML`.
@z

@x
For example:
@y
For example:
@z

@x
```go-html-template
{{ printf "<!-- Our website is named: %s -->" .Site.Title | safeHTML }}
```
@y
```go-html-template
{{ printf "<!-- Our website is named: %s -->" .Site.Title | safeHTML }}
```
@z

@x
#### HTML comments containing Go templates
@y
#### HTML comments containing Go templates {#html-comments-containing-go-templates}
@z

@x
HTML comments are by default stripped, but their content is still evaluated. That means that although the HTML comment will never render any content to the final HTML pages, code contained within the comment may fail the build process.
@y
HTML comments are by default stripped, but their content is still evaluated. That means that although the HTML comment will never render any content to the final HTML pages, code contained within the comment may fail the build process.
@z

@x
{{% note %}}
Do **not** try to comment out Go Template code using HTML comments.
{{% /note %}}
@y
{{% note %}}
Do **not** try to comment out Go Template code using HTML comments.
{{% /note %}}
@z

@x
```go-html-template
<!-- {{ $author := "Emma Goldman" }} was a great woman. -->
{{ $author }}
```
@y
```go-html-template
<!-- {{ $author := "Emma Goldman" }} was a great woman. -->
{{ $author }}
```
@z

@x
The templating engine will strip the content within the HTML comment, but will first evaluate any Go Template code if present within. So the above example will render `Emma Goldman`, as the `$author` variable got evaluated in the HTML comment. But the build would have failed if that code in the HTML comment had an error.
@y
The templating engine will strip the content within the HTML comment, but will first evaluate any Go Template code if present within. So the above example will render `Emma Goldman`, as the `$author` variable got evaluated in the HTML comment. But the build would have failed if that code in the HTML comment had an error.
@z

@x
## Hugo parameters
@y
## Hugo parameters {#hugo-parameters}
@z

@x
Hugo provides the option of passing values to your template layer through your [site configuration][config] (i.e. for site-wide values) or through the metadata of each specific piece of content (i.e. the [front matter]).
@y
Hugo provides the option of passing values to your template layer through your [site configuration][config] (i.e. for site-wide values) or through the metadata of each specific piece of content (i.e. the [front matter]).
@z

@x
## Use content (`Page`) parameters
@y
## Use content (`Page`) parameters {#use-content-page-parameters}
@z

@x
You can provide variables to be used by templates in individual content's [front matter].
@y
You can provide variables to be used by templates in individual content's [front matter].
@z

@x
An example of this is used in the Hugo docs. Most of the pages benefit from having the table of contents provided, but sometimes the table of contents doesn't make a lot of sense. We've defined a `notoc` variable in our front matter that will prevent a table of contents from rendering when specifically set to `true`.
@y
An example of this is used in the Hugo docs. Most of the pages benefit from having the table of contents provided, but sometimes the table of contents doesn't make a lot of sense. We've defined a `notoc` variable in our front matter that will prevent a table of contents from rendering when specifically set to `true`.
@z

@x
Here is the example front matter:
@y
Here is the example front matter:
@z

@x
{{< code-toggle file=content/example.md fm=true >}}
title = 'Example'
[params]
  notoc = true
{{< /code-toggle >}}
@y
{{< code-toggle file=content/example.md fm=true >}}
title = 'Example'
[params]
  notoc = true
{{< /code-toggle >}}
@z

@x
Here is an example of corresponding code that could be used inside a `toc.html` [partial template][partials]:
@y
Here is an example of corresponding code that could be used inside a `toc.html` [partial template][partials]:
@z

@x
{{< code file=layouts/partials/toc.html >}}
{{ if not .Params.notoc }}
<aside>
  <header>
    <a href="#{{ .Title | urlize }}">
    <h3>{{ .Title }}</h3>
    </a>
  </header>
  {{ .TableOfContents }}
</aside>
<a href="#" id="toc-toggle"></a>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/partials/toc.html >}}
{{ if not .Params.notoc }}
<aside>
  <header>
    <a href="#{{ .Title | urlize }}">
    <h3>{{ .Title }}</h3>
    </a>
  </header>
  {{ .TableOfContents }}
</aside>
<a href="#" id="toc-toggle"></a>
{{ end }}
{{< /code >}}
@z

@x
We want the *default* behavior to be for pages to include a TOC unless otherwise specified. This template checks to make sure that the `notoc:` field in this page's front matter is not `true`.
@y
We want the *default* behavior to be for pages to include a TOC unless otherwise specified. This template checks to make sure that the `notoc:` field in this page's front matter is not `true`.
@z

@x
## Use site configuration parameters
@y
## Use site configuration parameters {#use-site-configuration-parameters}
@z

@x
You can arbitrarily define as many site-level parameters as you want in your [site's configuration file][config]. These parameters are globally available in your templates.
@y
You can arbitrarily define as many site-level parameters as you want in your [site's configuration file][config]. These parameters are globally available in your templates.
@z

@x
For instance, you might declare the following:
@y
For instance, you might declare the following:
@z

@x
{{< code-toggle file=hugo >}}
params:
  copyrighthtml: "Copyright &#xA9; 2017 John Doe. All Rights Reserved."
  twitteruser: "spf13"
  sidebarrecentlimit: 5
{{< /code >}}
@y
{{< code-toggle file=hugo >}}
params:
  copyrighthtml: "Copyright &#xA9; 2017 John Doe. All Rights Reserved."
  twitteruser: "spf13"
  sidebarrecentlimit: 5
{{< /code >}}
@z

@x
Within a footer layout, you might then declare a `<footer>` that is only rendered if the `copyrighthtml` parameter is provided. If it *is* provided, you will then need to declare the string is safe to use via the [`safeHTML`] function so that the HTML entity is not escaped again. This would let you easily update just your top-level configuration file each January 1st, instead of hunting through your templates.
@y
Within a footer layout, you might then declare a `<footer>` that is only rendered if the `copyrighthtml` parameter is provided. If it *is* provided, you will then need to declare the string is safe to use via the [`safeHTML`] function so that the HTML entity is not escaped again. This would let you easily update just your top-level configuration file each January 1st, instead of hunting through your templates.
@z

@x
```go-html-template
{{ if .Site.Params.copyrighthtml }}
    <footer>
        <div class="text-center">{{ .Site.Params.CopyrightHTML | safeHTML }}</div>
    </footer>
{{ end }}
```
@y
```go-html-template
{{ if .Site.Params.copyrighthtml }}
    <footer>
        <div class="text-center">{{ .Site.Params.CopyrightHTML | safeHTML }}</div>
    </footer>
{{ end }}
```
@z

@x
An alternative way of writing the "`if`" and then referencing the same value is to use [`with`] instead. `with` rebinds the context (`.`) within its scope and skips the block if the variable is absent:
@y
An alternative way of writing the "`if`" and then referencing the same value is to use [`with`] instead. `with` rebinds the context (`.`) within its scope and skips the block if the variable is absent:
@z

@x
{{< code file=layouts/partials/twitter.html >}}
{{ with .Site.Params.twitteruser }}
    <div>
        <a href="https://twitter.com/{{ . }}" rel="author">
        <img src="/images/twitter.png" width="48" height="48" title="Twitter: {{ . }}" alt="Twitter"></a>
    </div>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/partials/twitter.html >}}
{{ with .Site.Params.twitteruser }}
    <div>
        <a href="https://twitter.com/{{ . }}" rel="author">
        <img src="/images/twitter.png" width="48" height="48" title="Twitter: {{ . }}" alt="Twitter"></a>
    </div>
{{ end }}
{{< /code >}}
@z

@x
Finally, you can pull "magic constants" out of your layouts as well. The following uses the [`first`] function, as well as the [`.RelPermalink`][relpermalink] page variable and the [`.Site.Pages`][sitevars] site variable.
@y
Finally, you can pull "magic constants" out of your layouts as well. The following uses the [`first`] function, as well as the [`.RelPermalink`][relpermalink] page variable and the [`.Site.Pages`][sitevars] site variable.
@z

@x
```go-html-template
<nav>
  <h1>Recent Posts</h1>
  <ul>
  {{- range first .Site.Params.SidebarRecentLimit .Site.Pages -}}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
  {{- end -}}
  </ul>
</nav>
```
@y
```go-html-template
<nav>
  <h1>Recent Posts</h1>
  <ul>
  {{- range first .Site.Params.SidebarRecentLimit .Site.Pages -}}
      <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
  {{- end -}}
  </ul>
</nav>
```
@z

@x
## Example: show future events
@y
## Example: show future events {#example-show-future-events}
@z

@x
Given the following content structure and [front matter]:
@y
Given the following content structure and [front matter]:
@z

@x
```text
content/
└── events/
    ├── event-1.md
    ├── event-2.md
    └── event-3.md
```
@y
```text
content/
└── events/
    ├── event-1.md
    ├── event-2.md
    └── event-3.md
```
@z

@x
{{< code-toggle file=content/events/event-1.md >}}
title = 'Event 1'
date = 2021-12-06T10:37:16-08:00
draft = false
[params]
start_date = 2021-12-05T09:00:00-08:00
end_date = 2021-12-05T11:00:00-08:00
{{< /code-toggle >}}
@y
{{< code-toggle file=content/events/event-1.md >}}
title = 'Event 1'
date = 2021-12-06T10:37:16-08:00
draft = false
[params]
start_date = 2021-12-05T09:00:00-08:00
end_date = 2021-12-05T11:00:00-08:00
{{< /code-toggle >}}
@z

@x
This [partial template][partials] renders future events:
@y
This [partial template][partials] renders future events:
@z

@x
{{< code file=layouts/partials/future-events.html >}}
<h2>Future Events</h2>
<ul>
  {{ range where site.RegularPages "Type" "events" }}
    {{ if gt (.Params.start_date | time.AsTime) now }}
      {{ $startDate := .Params.start_date | time.Format ":date_medium" }}
      <li>
        <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a> - {{ $startDate }}
      </li>
    {{ end }}
  {{ end }}
</ul>
{{< /code >}}
@y
{{< code file=layouts/partials/future-events.html >}}
<h2>Future Events</h2>
<ul>
  {{ range where site.RegularPages "Type" "events" }}
    {{ if gt (.Params.start_date | time.AsTime) now }}
      {{ $startDate := .Params.start_date | time.Format ":date_medium" }}
      <li>
        <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a> - {{ $startDate }}
      </li>
    {{ end }}
  {{ end }}
</ul>
{{< /code >}}
@z

@x
If you restrict front matter to the TOML format, and omit quotation marks surrounding date fields, you can perform date comparisons without casting.
@y
If you restrict front matter to the TOML format, and omit quotation marks surrounding date fields, you can perform date comparisons without casting.
@z

@x
{{< code file=layouts/partials/future-events.html >}}
<h2>Future Events</h2>
<ul>
  {{ range where (where site.RegularPages "Type" "events") "Params.start_date" "gt" now }}
    {{ $startDate := .Params.start_date | time.Format ":date_medium" }}
    <li>
      <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a> - {{ $startDate }}
    </li>
  {{ end }}
</ul>
{{< /code >}}
@y
{{< code file=layouts/partials/future-events.html >}}
<h2>Future Events</h2>
<ul>
  {{ range where (where site.RegularPages "Type" "events") "Params.start_date" "gt" now }}
    {{ $startDate := .Params.start_date | time.Format ":date_medium" }}
    <li>
      <a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a> - {{ $startDate }}
    </li>
  {{ end }}
</ul>
{{< /code >}}
@z

% snip links...
