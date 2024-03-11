%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% snip 対応

@x
title: Introduction to templating
linkTitle: Introduction
description: Create templates to render your content, resources, and data.
categories: [templates,fundamentals]
keywords: []
@y
title: Introduction to templating
linkTitle: Introduction
description: Create templates to render your content, resources, and data.
categories: [templates,fundamentals]
keywords: []
@z

@x
A template is a file in the layouts directory of a project, theme, or module. Templates use [variables] , [functions], and [methods] to transform your content, resources, and data into a published page.
@y
A template is a file in the layouts directory of a project, theme, or module. Templates use [variables] , [functions], and [methods] to transform your content, resources, and data into a published page.
@z

% snip links...

@x
{{% note %}}
Hugo uses Go's [text/template] and [html/template] packages.
@y
{{% note %}}
Hugo uses Go's [text/template] and [html/template] packages.
@z

@x
The text/template package implements data-driven templates for generating textual output, while the html/template package implements data-driven templates for generating HTML output safe against code injection.
@y
The text/template package implements data-driven templates for generating textual output, while the html/template package implements data-driven templates for generating HTML output safe against code injection.
@z

@x
By default, Hugo uses the html/template package when rendering HTML files.
@y
By default, Hugo uses the html/template package when rendering HTML files.
@z

@x
[text/template]: https://pkg.go.dev/text/template
[html/template]: https://pkg.go.dev/html/template
{{% /note %}}
@y
[text/template]: https://pkg.go.dev/text/template
[html/template]: https://pkg.go.dev/html/template
{{% /note %}}
@z

@x
For example, this HTML template initializes the `$v1` and `$v2` variables, then displays them and their product within an HTML paragraph.
@y
For example, this HTML template initializes the `$v1` and `$v2` variables, then displays them and their product within an HTML paragraph.
@z

% snip code...

@x
While HTML templates are the most common, you can create templates for any [output format] including CSV, JSON, RSS, and plain text.
@y
While HTML templates are the most common, you can create templates for any [output format] including CSV, JSON, RSS, and plain text.
@z

@x
[output format]: /templates/output-formats/
@y
[output format]: /templates/output-formats/
@z

@x
## Context
@y
## Context
@z

@x
The most important concept to understand before creating a template is _context_, the data passed into each template. The data may be a simple value, or more commonly [objects] and associated [methods].
@y
The most important concept to understand before creating a template is _context_, the data passed into each template. The data may be a simple value, or more commonly [objects] and associated [methods].
@z

% snip links...

@x
For example, a template for a single page receives a `Page` object, and the `Page` object provides methods to return values or perform actions.
@y
For example, a template for a single page receives a `Page` object, and the `Page` object provides methods to return values or perform actions.
@z

@x
### Current context
@y
### Current context
@z

@x
Within a template, the dot (`.`) represents the current context.
@y
Within a template, the dot (`.`) represents the current context.
@z

% snip code...

@x
In the example above the dot represents the `Page` object, and we call its [`Title`] method to return the title as defined in [front matter].
@y
In the example above the dot represents the `Page` object, and we call its [`Title`] method to return the title as defined in [front matter].
@z

% snip links...

@x
The current context may change within a template. For example, at the top of a template the context might be a `Page` object, but we rebind the context to another value or object within [`range`] or [`with`] blocks.
@y
The current context may change within a template. For example, at the top of a template the context might be a `Page` object, but we rebind the context to another value or object within [`range`] or [`with`] blocks.
@z

% snip links...
% snip code...

@x
In the example above, the context changes as we `range` through the [slice] of values. In the first iteration the context is "foo", and in the second iteration the context is "bar". Inside of the `with` block the context is "baz". Hugo renders the above to:
@y
In the example above, the context changes as we `range` through the [slice] of values. In the first iteration the context is "foo", and in the second iteration the context is "bar". Inside of the `with` block the context is "baz". Hugo renders the above to:
@z

% snip links...
% snip code...

@x
### Template context
@y
### Template context
@z

@x
Within a `range` or `with` block you can access the context passed into the template by prepending a dollar sign (`$`) to the dot:
@y
Within a `range` or `with` block you can access the context passed into the template by prepending a dollar sign (`$`) to the dot:
@z

% snip code...

@x
Hugo renders this to:
@y
Hugo renders this to:
@z

% snip code...

@x
{{% note %}}
Make sure that you thoroughly understand the concept of _context_ before you continue reading. The most common templating errors made by new users relate to context.
{{% /note %}}
@y
{{% note %}}
Make sure that you thoroughly understand the concept of _context_ before you continue reading. The most common templating errors made by new users relate to context.
{{% /note %}}
@z

@x
## Actions
@y
## Actions
@z

@x
In the examples above the paired opening and closing braces represent the beginning and end of a template action, a data evaluation or control structure within a template.
@y
In the examples above the paired opening and closing braces represent the beginning and end of a template action, a data evaluation or control structure within a template.
@z

@x
A template action may contain literal values ([boolean], [string], [integer], and [float]), variables, functions, and methods.
@y
A template action may contain literal values ([boolean], [string], [integer], and [float]), variables, functions, and methods.
@z

% snip links...
% snip code...

@x
In the example above:
@y
In the example above:
@z

@x
- `$convertToLower` is a variable
- `true` is a literal boolean value
- `strings.ToLower` is a function that converts all characters to lowercase
- `Title` is a method on a the `Page` object
@y
- `$convertToLower` is a variable
- `true` is a literal boolean value
- `strings.ToLower` is a function that converts all characters to lowercase
- `Title` is a method on a the `Page` object
@z

@x
Hugo renders the above to:
@y
Hugo renders the above to:
@z

% snip code...

@x
### Whitespace
@y
### Whitespace
@z

@x
Notice the blank lines and indentation in the previous example? Although irrelevant in production when you typically minify the output, you can remove the adjacent whitespace by using template action delimiters with hyphens:
@y
Notice the blank lines and indentation in the previous example? Although irrelevant in production when you typically minify the output, you can remove the adjacent whitespace by using template action delimiters with hyphens:
@z

% snip code...

@x
Hugo renders this to:
@y
Hugo renders this to:
@z

% snip code...

@x
Whitespace includes spaces, horizontal tabs, carriage returns, and newlines.
@y
Whitespace includes spaces, horizontal tabs, carriage returns, and newlines.
@z

@x
### Pipes
@y
### Pipes
@z

@x
Within a template action you may [pipe] a value to function or method. The piped value becomes the final argument to the function or method. For example, these are equivalent:
@y
Within a template action you may [pipe] a value to function or method. The piped value becomes the final argument to the function or method. For example, these are equivalent:
@z

% snip link...
% snip code...

@x
You can pipe the result of one function or method into another. For example, these are equivalent:
@y
You can pipe the result of one function or method into another. For example, these are equivalent:
@z

% snip code...

@x
These are also equivalent:
@y
These are also equivalent:
@z

% snip code...

@x
{{% note %}}
Remember that the piped value becomes the final argument to the function or method to which you are piping.
{{% /note %}}
@y
{{% note %}}
Remember that the piped value becomes the final argument to the function or method to which you are piping.
{{% /note %}}
@z

@x
### Line splitting
@y
### Line splitting
@z

@x
You can split a template action over two or more lines. For example, these are equivalent:
@y
You can split a template action over two or more lines. For example, these are equivalent:
@z

% snip code...

@x
You can also split [raw string literals] over two or more lines. For example, these are equivalent:
@y
You can also split [raw string literals] over two or more lines. For example, these are equivalent:
@z

@x
[raw string literals]: /getting-started/glossary/#string-literal-raw
@y
[raw string literals]: /getting-started/glossary/#string-literal-raw
@z

% snip code...

@x
## Variables
@y
## Variables
@z

@x
A variable is a user-defined [identifier] prepended with a dollar sign (`$`), representing a value of any data type, initialized or assigned within a template action. For example, `$foo` and `$bar` are variables.
@y
A variable is a user-defined [identifier] prepended with a dollar sign (`$`), representing a value of any data type, initialized or assigned within a template action. For example, `$foo` and `$bar` are variables.
@z

% snip link...

@x
Variables may contain [scalars], [slices], [maps], or [objects].
@y
Variables may contain [scalars], [slices], [maps], or [objects].
@z

% snip links...

@x
Use `:=` to initialize a variable, and use `=` to assign a value to a variable that has been previously initialized. For example:
@y
Use `:=` to initialize a variable, and use `=` to assign a value to a variable that has been previously initialized. For example:
@z

% snip code...

@x
Variables initialized inside of an `if`, `range`, or `with` block are scoped to the block. Variables initialized outside of these blocks are scoped to the template.
@y
Variables initialized inside of an `if`, `range`, or `with` block are scoped to the block. Variables initialized outside of these blocks are scoped to the template.
@z

@x
With variables that represent a slice or map, use the [`index`] function to return the desired value.
@y
With variables that represent a slice or map, use the [`index`] function to return the desired value.
@z

% snip link...
% snip code...

@x
{{% note %}}
Slices and arrays are zero-based; element 0 is the first element.
{{% /note %}}
@y
{{% note %}}
Slices and arrays are zero-based; element 0 is the first element.
{{% /note %}}
@z

@x
With variables that represent a map or object, [chain] identifiers to return the desired value or to access the desired method.
@y
With variables that represent a map or object, [chain] identifiers to return the desired value or to access the desired method.
@z

% snip link...
% snip code...

@x
{{% note %}}
As seen above, object and method names are capitalized. Although not required, to avoid confusion we recommend beginning variable and map key names with a lowercase letter or underscore.
{{% /note %}}
@y
{{% note %}}
As seen above, object and method names are capitalized. Although not required, to avoid confusion we recommend beginning variable and map key names with a lowercase letter or underscore.
{{% /note %}}
@z

@x
## Functions
@y
## Functions
@z

@x
Used within a template action, a function takes one or more arguments and returns a value. Unlike methods, functions are not associated with an object.
@y
Used within a template action, a function takes one or more arguments and returns a value. Unlike methods, functions are not associated with an object.
@z

@x
Go's text/template and html/template packages provide a small set of functions, operators, and statements for general use. See the [go-templates] section of the function documentation for details.
@y
Go's text/template and html/template packages provide a small set of functions, operators, and statements for general use. See the [go-templates] section of the function documentation for details.
@z

@x
[go-templates]: /functions/go-template/
@y
[go-templates]: /functions/go-template/
@z

@x
Hugo provides hundreds of custom [functions] categorized by namespace. For example, the `strings` namespace includes these and other functions:
@y
Hugo provides hundreds of custom [functions] categorized by namespace. For example, the `strings` namespace includes these and other functions:
@z

@x
[functions]: /functions
@y
[functions]: /functions
@z

@x
Function|Alias
:--|:--
[`strings.ToLower`](/functions/strings/tolower)|`lower`
[`strings.ToUpper`](/functions/strings/toupper)|`upper`
[`strings.Replace`](/functions/strings/replace)|`replace`
@y
Function|Alias
:--|:--
[`strings.ToLower`](/functions/strings/tolower)|`lower`
[`strings.ToUpper`](/functions/strings/toupper)|`upper`
[`strings.Replace`](/functions/strings/replace)|`replace`
@z

@x
As shown above, frequently used functions have an alias. Use aliases in your templates to reduce code length.
@y
As shown above, frequently used functions have an alias. Use aliases in your templates to reduce code length.
@z

@x
When calling a function, separate the arguments from the function, and from each other, with a space. For example:
@y
When calling a function, separate the arguments from the function, and from each other, with a space. For example:
@z

% snip code...

@x
## Methods
@y
## Methods
@z

@x
Used within a template action and associated with an object, a method takes zero or more arguments and either returns a value or performs an action.
@y
Used within a template action and associated with an object, a method takes zero or more arguments and either returns a value or performs an action.
@z

@x
The most commonly accessed objects are the [`Page`] and [`Site`] objects. This is a small sampling of the [methods] available to each object.
@y
The most commonly accessed objects are the [`Page`] and [`Site`] objects. This is a small sampling of the [methods] available to each object.
@z

% snip links...

@x
Object|Method|Description
:--|:--|:--
`Page`|[`Date`](methods/page/date/)|Returns the date of the given page.
`Page`|[`Params`](methods/page/params/)|Returns a map of custom parameters as defined in the front matter of the given page.
`Page`|[`Title`](methods/page/title/)|Returns the title of the given page.
`Site`|[`Data`](methods/site/data/)|Returns a data structure composed from the files in the data directory.
`Site`|[`Params`](methods/site/params/)|Returns a map of custom parameters as defined in the site configuration.
`Site`|[`Title`](methods/site/title/)|Returns the title as defined in the site configuration.
@y
Object|Method|Description
:--|:--|:--
`Page`|[`Date`](methods/page/date/)|Returns the date of the given page.
`Page`|[`Params`](methods/page/params/)|Returns a map of custom parameters as defined in the front matter of the given page.
`Page`|[`Title`](methods/page/title/)|Returns the title of the given page.
`Site`|[`Data`](methods/site/data/)|Returns a data structure composed from the files in the data directory.
`Site`|[`Params`](methods/site/params/)|Returns a map of custom parameters as defined in the site configuration.
`Site`|[`Title`](methods/site/title/)|Returns the title as defined in the site configuration.
@z

@x
Chain the method to its object with a dot (`.`) as shown below, remembering that the leading dot represents the [current context].
@y
Chain the method to its object with a dot (`.`) as shown below, remembering that the leading dot represents the [current context].
@z

@x
[current context]: #current-context
@y
[current context]: #current-context
@z

@x
{{< code file=layouts/_default/single.html >}}
{{ .Site.Title }} → My Site Title
{{ .Page.Title }} → My Page Title
{{< /code >}}
@y
{{< code file=layouts/_default/single.html >}}
{{ .Site.Title }} → My Site Title
{{ .Page.Title }} → My Page Title
{{< /code >}}
@z

@x
The context passed into most templates is a `Page` object, so this is equivalent to the previous example:
@y
The context passed into most templates is a `Page` object, so this is equivalent to the previous example:
@z

@x
{{< code file=layouts/_default/single.html >}}
{{ .Site.Title }} → My Site Title
{{ .Title }} → My Page Title
{{< /code >}}
@y
{{< code file=layouts/_default/single.html >}}
{{ .Site.Title }} → My Site Title
{{ .Title }} → My Page Title
{{< /code >}}
@z

@x
Some methods take an argument. Separate the argument from the method with a space. For example:
@y
Some methods take an argument. Separate the argument from the method with a space. For example:
@z

@x
{{< code file=layouts/_default/single.html >}}
{{ $page := .Page.GetPage "/books/les-miserables" }}
{{ $page.Title }} → Les Misérables
{{< /code >}}
@y
{{< code file=layouts/_default/single.html >}}
{{ $page := .Page.GetPage "/books/les-miserables" }}
{{ $page.Title }} → Les Misérables
{{< /code >}}
@z

@x
## Comments
@y
## Comments
@z

@x
{{% note %}}
Do not attempt to use HTML comment delimiters to comment out template code.
@y
{{% note %}}
Do not attempt to use HTML comment delimiters to comment out template code.
@z

@x
Hugo strips HTML comments when rendering a page, but first evaluates any template code within the HTML comment delimiters. Depending on the template code within the HTML comment delimeters, this could cause unexpected results or fail the build.
{{% /note %}}
@y
Hugo strips HTML comments when rendering a page, but first evaluates any template code within the HTML comment delimiters. Depending on the template code within the HTML comment delimeters, this could cause unexpected results or fail the build.
{{% /note %}}
@z

@x
Template comments are similar to template actions. Paired opening and closing braces represent the beginning and end of a comment. For example:
@y
Template comments are similar to template actions. Paired opening and closing braces represent the beginning and end of a comment. For example:
@z

% snip text...

@x
Code within a comment is not parsed, executed, or displayed. Comments may be inline, as shown above, or in block form:
@y
Code within a comment is not parsed, executed, or displayed. Comments may be inline, as shown above, or in block form:
@z

@x
```text
{{/*
This is a block comment.
*/}}
@y
```text
{{/*
This is a block comment.
*/}}
@z

@x
{{- /*
This is a block comment with
adjacent whitespace removed.
*/ -}}
```
@y
{{- /*
This is a block comment with
adjacent whitespace removed.
*/ -}}
```
@z

@x
You may not nest one comment inside of another.
@y
You may not nest one comment inside of another.
@z

@x
To render an HTML comment, pass a string through the [`safeHTML`] template function. For example:
@y
To render an HTML comment, pass a string through the [`safeHTML`] template function. For example:
@z

@x
[`safeHTML`]: /functions/safe/html
@y
[`safeHTML`]: /functions/safe/html
@z

@x
```go-html-template
{{ "<!-- I am an HTML comment. -->" | safeHTML }}
{{ printf "<!-- This is the %s site. -->" .Site.Title | safeHTML }}
```
@y
```go-html-template
{{ "<!-- I am an HTML comment. -->" | safeHTML }}
{{ printf "<!-- This is the %s site. -->" .Site.Title | safeHTML }}
```
@z

@x
## Include
@y
## Include
@z

@x
Use the [`template`] function to include one or more of Hugo's [embedded templates]:
@y
Use the [`template`] function to include one or more of Hugo's [embedded templates]:
@z

@x
[embedded templates]: /templates/embedded/
@y
[embedded templates]: /templates/embedded/
@z

% snip code...
% snip links...

@x
Use the [`partial`] or [`partialCached`] function to include one or more [partial templates]:
@y
Use the [`partial`] or [`partialCached`] function to include one or more [partial templates]:
@z

@x
[partial templates]: /templates/partials
@y
[partial templates]: /templates/partials
@z

% snip code...

@x
Create your partial templates in the layouts/partials directory.
@y
Create your partial templates in the layouts/partials directory.
@z

@x
{{% note %}}
In the examples above, note that we are passing the current context (the dot) to each of the templates.
{{% /note %}}
@y
{{% note %}}
In the examples above, note that we are passing the current context (the dot) to each of the templates.
{{% /note %}}
@z

@x
## Examples
@y
## Examples
@z

@x
This limited set of contrived examples demonstrates some of concepts described above. Please see the [functions], [methods], and [templates] documentation for specific examples.
@y
This limited set of contrived examples demonstrates some of concepts described above. Please see the [functions], [methods], and [templates] documentation for specific examples.
@z

@x
[templates]: /templates/
@y
[templates]: /templates/
@z

@x
### Conditional blocks
@y
### Conditional blocks
@z

@x
See documentation for [`if`], [`else`], and [`end`].
@y
See documentation for [`if`], [`else`], and [`end`].
@z

@x
[`if`]: /functions/go-template/if/
[`else`]: /functions/go-template/else/
[`end`]: /functions/go-template/end/
@y
[`if`]: /functions/go-template/if/
[`else`]: /functions/go-template/else/
[`end`]: /functions/go-template/end/
@z

% snip code...

@x
### Logical operators
@y
### Logical operators
@z

@x
See documentation for [`and`] and [`or`].
@y
See documentation for [`and`] and [`or`].
@z

% snip links...
% snip code...

@x
### Loops
@y
### Loops
@z

@x
See documentation for [`range`], [`else`], and [`end`].
@y
See documentation for [`range`], [`else`], and [`end`].
@z

@x
[`range`]: /functions/go-template/range/
@y
[`range`]: /functions/go-template/range/
@z

@x
Use the [`seq`] function to loop a specified number of times:
@y
Use the [`seq`] function to loop a specified number of times:
@z

@x
[`seq`]: /functions/collections/seq
@y
[`seq`]: /functions/collections/seq
@z

@x
### Rebind context
@y
### Rebind context
@z

@x
See documentation for [`with`], [`else`], and [`end`].
@y
See documentation for [`with`], [`else`], and [`end`].
@z

% snip link...
% snip code...

@x
### Access site parameters
@y
### Access site parameters
@z

@x
See documentation for the [`Params`](/methods/site/params/) method on a `Site` object.
@y
See documentation for the [`Params`](/methods/site/params/) method on a `Site` object.
@z

@x
With this site configuration:
@y
With this site configuration:
@z

@x
{{< code-toggle file=hugo >}}
title = 'ABC Widgets'
baseURL = 'https://example.org'
[params]
  subtitle = 'The Best Widgets on Earth'
  copyright-year = '2023'
  [params.author]
    email = 'jsmith@example.org'
    name = 'John Smith'
  [params.layouts]
    rfc_1123 = 'Mon, 02 Jan 2006 15:04:05 MST'
    rfc_3339 = '2006-01-02T15:04:05-07:00'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
title = 'ABC Widgets'
baseURL = 'https://example.org'
[params]
  subtitle = 'The Best Widgets on Earth'
  copyright-year = '2023'
  [params.author]
    email = 'jsmith@example.org'
    name = 'John Smith'
  [params.layouts]
    rfc_1123 = 'Mon, 02 Jan 2006 15:04:05 MST'
    rfc_3339 = '2006-01-02T15:04:05-07:00'
{{< /code-toggle >}}
@z

@x
Access the custom site parameters by chaining the identifiers:
@y
Access the custom site parameters by chaining the identifiers:
@z

@x
```go-html-template
{{ .Site.Params.subtitle }} → The Best Widgets on Earth
{{ .Site.Params.author.name }} → John Smith
@y
```go-html-template
{{ .Site.Params.subtitle }} → The Best Widgets on Earth
{{ .Site.Params.author.name }} → John Smith
@z

@x
{{ $layout := .Site.Params.layouts.rfc_1123 }}
{{ .Site.Lastmod.Format $layout }} → Tue, 17 Oct 2023 13:21:02 PDT
```
@y
{{ $layout := .Site.Params.layouts.rfc_1123 }}
{{ .Site.Lastmod.Format $layout }} → Tue, 17 Oct 2023 13:21:02 PDT
```
@z

@x
### Access page parameters
@y
### Access page parameters
@z

@x
See documentation for the [`Params`](/methods/page/params/) method on a `Page` object.
@y
See documentation for the [`Params`](/methods/page/params/) method on a `Page` object.
@z

@x
With this front matter:
@y
With this front matter:
@z

@x
{{< code-toggle file=content/news/annual-conference.md >}}
title = 'Annual conference'
date = 2023-10-17T15:11:37-07:00
[params]
display_related = true
[params.author]
  email = 'jsmith@example.org'
  name = 'John Smith'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/news/annual-conference.md >}}
title = 'Annual conference'
date = 2023-10-17T15:11:37-07:00
[params]
display_related = true
[params.author]
  email = 'jsmith@example.org'
  name = 'John Smith'
{{< /code-toggle >}}
@z

@x
Access the custom page parameters by chaining the identifiers:
@y
Access the custom page parameters by chaining the identifiers:
@z

@x
```go-html-template
{{ .Params.display_related }} → true
{{ .Params.author.name }} → John Smith
```
@y
```go-html-template
{{ .Params.display_related }} → true
{{ .Params.author.name }} → John Smith
```
@z
