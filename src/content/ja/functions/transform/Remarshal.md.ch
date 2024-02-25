%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: transform.Remarshal
description: Marshals a string of serialized data, or a map, into a string of serialized data in the specified format.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/encoding/Jsonify
    - functions/transform/Unmarshal
  returnType: string
  signatures: [transform.Remarshal FORMAT INPUT]
aliases: [/functions/transform.remarshal]
---
@y
---
title: transform.Remarshal
description: Marshals a string of serialized data, or a map, into a string of serialized data in the specified format.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/encoding/Jsonify
    - functions/transform/Unmarshal
  returnType: string
  signatures: [transform.Remarshal FORMAT INPUT]
aliases: [/functions/transform.remarshal]
---
@z

@x
The format must be one of `json`, `toml`, `yaml`, or `xml`. If the input is a string of serialized data, it must be valid JSON, TOML, YAML, or XML.
@y
The format must be one of `json`, `toml`, `yaml`, or `xml`. If the input is a string of serialized data, it must be valid JSON, TOML, YAML, or XML.
@z

@x
{{% note %}}
This function is primarily a helper for Hugo's documentation, used to convert configuration and front matter examples to JSON, TOML, and YAML.
@y
{{% note %}}
This function is primarily a helper for Hugo's documentation, used to convert configuration and front matter examples to JSON, TOML, and YAML.
@z

@x
This is not a general purpose converter, and may change without notice if required for Hugo's documentation site.
{{% /note %}}
@y
This is not a general purpose converter, and may change without notice if required for Hugo's documentation site.
{{% /note %}}
@z

@x
Example 1
: Convert a string of TOML to JSON.
@y
Example 1
: Convert a string of TOML to JSON.
@z

@x
```go-html-template
{{ $s := `
  baseURL = 'https://example.org/'
  languageCode = 'en-US'
  title = 'ABC Widgets'
`}}
<pre>{{ transform.Remarshal "json" $s }}</pre>
```
@y
```go-html-template
{{ $s := `
  baseURL = 'https://example.org/'
  languageCode = 'en-US'
  title = 'ABC Widgets'
`}}
<pre>{{ transform.Remarshal "json" $s }}</pre>
```
@z

@x
Resulting HTML:
@y
Resulting HTML:
@z

@x
```html
<pre>{
   &#34;baseURL&#34;: &#34;https://example.org/&#34;,
   &#34;languageCode&#34;: &#34;en-US&#34;,
   &#34;title&#34;: &#34;ABC Widgets&#34;
}
</pre>
```
@y
```html
<pre>{
   &#34;baseURL&#34;: &#34;https://example.org/&#34;,
   &#34;languageCode&#34;: &#34;en-US&#34;,
   &#34;title&#34;: &#34;ABC Widgets&#34;
}
</pre>
```
@z

@x
Rendered in browser:
@y
Rendered in browser:
@z

@x
```text
{
   "baseURL": "https://example.org/",
   "languageCode": "en-US",
   "title": "ABC Widgets"
}
```
@y
```text
{
   "baseURL": "https://example.org/",
   "languageCode": "en-US",
   "title": "ABC Widgets"
}
```
@z

@x
Example 2
: Convert a map to YAML.
@y
Example 2
: Convert a map to YAML.
@z

@x
```go-html-template
{{ $m := dict
  "a" "Hugo rocks!"
  "b" (dict "question" "What is 6x7?" "answer" 42)
  "c" (slice "foo" "bar")
}}
<pre>{{ transform.Remarshal "yaml" $m }}</pre>
```
@y
```go-html-template
{{ $m := dict
  "a" "Hugo rocks!"
  "b" (dict "question" "What is 6x7?" "answer" 42)
  "c" (slice "foo" "bar")
}}
<pre>{{ transform.Remarshal "yaml" $m }}</pre>
```
@z

@x
Resulting HTML:
@y
Resulting HTML:
@z

@x
```html
<pre>a: Hugo rocks!
b:
  answer: 42
  question: What is 6x7?
c:
- foo
- bar
</pre>
```
@y
```html
<pre>a: Hugo rocks!
b:
  answer: 42
  question: What is 6x7?
c:
- foo
- bar
</pre>
```
@z

@x
Rendered in browser:
@y
Rendered in browser:
@z

@x
```text
a: Hugo rocks!
b:
  answer: 42
  question: What is 6x7?
c:
- foo
- bar
```
@y
```text
a: Hugo rocks!
b:
  answer: 42
  question: What is 6x7?
c:
- foo
- bar
```
@z
