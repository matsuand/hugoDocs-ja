%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% snip 対応

@x
title: partials.Include
description: Executes the given partial template, optionally passing context. If the partial template contains a return statement, returns the given value, else returns the rendered output.
categories: []
keywords: []
@y
title: partials.Include
description: Executes the given partial template, optionally passing context. If the partial template contains a return statement, returns the given value, else returns the rendered output.
categories: []
keywords: []
@z

@x
Without a [`return`] statement, the `partial` function returns a string of type `template.HTML`. With a `return` statement, the `partial` function can return any data type.
@y
Without a [`return`] statement, the `partial` function returns a string of type `template.HTML`. With a `return` statement, the `partial` function can return any data type.
@z

% snip link...

@x
In this example we have three partial templates:
@y
In this example we have three partial templates:
@z

% snip text...

@x
The "average" partial returns the average of one or more numbers. We pass the numbers in context:
@y
The "average" partial returns the average of one or more numbers. We pass the numbers in context:
@z

% snip code...

@x
The "breadcrumbs" partial renders [breadcrumb navigation], and needs to receive the current page in context:
@y
The "breadcrumbs" partial renders [breadcrumb navigation], and needs to receive the current page in context:
@z

% snip code...

@x
The "footer" partial renders the site footer. In this contrived example, the footer does not need access to the current page, so we can omit context:
@y
The "footer" partial renders the site footer. In this contrived example, the footer does not need access to the current page, so we can omit context:
@z

% snip code...

@x
You can pass anything in context: a page, a page collection, a scalar value, a slice, or a map. In this example we pass the current page and three scalar values:
@y
You can pass anything in context: a page, a page collection, a scalar value, a slice, or a map. In this example we pass the current page and three scalar values:
@z

% snip code...

@x
Then, within the partial template:
@y
Then, within the partial template:
@z

@x
```go-html-template
<p>{{ .name }} is majoring in {{ .major }}.</p>
<p>Their grade point average is {{ .gpa }}.</p>
<p>See <a href="{{ .page.RelPermalink }}">details.</a></p>
```
@y
```go-html-template
<p>{{ .name }} is majoring in {{ .major }}.</p>
<p>Their grade point average is {{ .gpa }}.</p>
<p>See <a href="{{ .page.RelPermalink }}">details.</a></p>
```
@z

@x
To return a value from a partial template, it must contain only one `return` statement, placed at the end of the template:
@y
To return a value from a partial template, it must contain only one `return` statement, placed at the end of the template:
@z

% snip code...

@x
See&nbsp;[details][`return`].
@y
See&nbsp;[details][`return`].
@z

% snip links...
