%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Data
description: Returns a data structure composed from the files in the data directory.
categories: []
keywords: []
action:
  related:
    - functions/collections/IndexFunction
    - functions/transform/Unmarshal
    - functions/collections/Where
    - functions/collections/Sort
  returnType: map
  signatures: [SITE.Data]
---
@y
---
title: Data
description: Returns a data structure composed from the files in the data directory.
categories: []
keywords: []
action:
  related:
    - functions/collections/IndexFunction
    - functions/transform/Unmarshal
    - functions/collections/Where
    - functions/collections/Sort
  returnType: map
  signatures: [SITE.Data]
---
@z

@x
Use the `Data` method on a `Site` object to access data within the data directory, or within any directory [mounted] to the data directory. Supported data formats include JSON, TOML, YAML, and XML.
@y
Use the `Data` method on a `Site` object to access data within the data directory, or within any directory [mounted] to the data directory. Supported data formats include JSON, TOML, YAML, and XML.
@z

@x
[mounted]: /hugo-modules/configuration/#module-configuration-mounts
@y
[mounted]: /hugo-modules/configuration/#module-configuration-mounts
@z

@x
{{% note %}}
Although Hugo can unmarshal CSV files with the [`transform.Unmarshal`] function, do not place CSV files in the data directory. You cannot access data within CSV files using this method.
@y
{{% note %}}
Although Hugo can unmarshal CSV files with the [`transform.Unmarshal`] function, do not place CSV files in the data directory. You cannot access data within CSV files using this method.
@z

@x
[`transform.Unmarshal`]: /functions/transform/unmarshal/
{{% /note %}}
@y
[`transform.Unmarshal`]: /functions/transform/unmarshal/
{{% /note %}}
@z

@x
Consider this data directory:
@y
Consider this data directory:
@z

@x
```text
data/
├── books/
│   ├── fiction.yaml
│   └── nonfiction.yaml
├── films.json
├── paintings.xml
└── sculptures.toml
```
@y
```text
data/
├── books/
│   ├── fiction.yaml
│   └── nonfiction.yaml
├── films.json
├── paintings.xml
└── sculptures.toml
```
@z

@x
And these data files:
@y
And these data files:
@z

@x
{{< code file=data/books/fiction.yaml lang=yaml >}}
- title: The Hunchback of Notre Dame
  author: Victor Hugo
  isbn: 978-0140443530
- title: Les Misérables
  author: Victor Hugo
  isbn: 978-0451419439
{{< /code >}}
@y
{{< code file=data/books/fiction.yaml lang=yaml >}}
- title: The Hunchback of Notre Dame
  author: Victor Hugo
  isbn: 978-0140443530
- title: Les Misérables
  author: Victor Hugo
  isbn: 978-0451419439
{{< /code >}}
@z

@x
{{< code file=data/books/nonfiction.yaml lang=yaml >}}
- title: The Ancien Régime and the Revolution
  author: Alexis de Tocqueville
  isbn: 978-0141441641
- title: Interpreting the French Revolution
  author: François Furet
  isbn: 978-0521280495
{{< /code >}}
@y
{{< code file=data/books/nonfiction.yaml lang=yaml >}}
- title: The Ancien Régime and the Revolution
  author: Alexis de Tocqueville
  isbn: 978-0141441641
- title: Interpreting the French Revolution
  author: François Furet
  isbn: 978-0521280495
{{< /code >}}
@z

@x
Access the data by [chaining] the [identifiers]:
@y
Access the data by [chaining] the [identifiers]:
@z

@x
```go-html-template
{{ range $category, $books := .Site.Data.books }}
  <p>{{ $category | title }}</p>
  <ul>
    {{ range $books }}
      <li>{{ .title }} ({{ .isbn }})</li>
    {{ end }}
  </ul>
{{ end }}
```
@y
```go-html-template
{{ range $category, $books := .Site.Data.books }}
  <p>{{ $category | title }}</p>
  <ul>
    {{ range $books }}
      <li>{{ .title }} ({{ .isbn }})</li>
    {{ end }}
  </ul>
{{ end }}
```
@z

@x
Hugo renders this to:
@y
Hugo renders this to:
@z

@x
```html
<p>Fiction</p>
<ul>
  <li>The Hunchback of Notre Dame (978-0140443530)</li>
  <li>Les Misérables (978-0451419439)</li>
</ul>
<p>Nonfiction</p>
<ul>
  <li>The Ancien Régime and the Revolution (978-0141441641)</li>
  <li>Interpreting the French Revolution (978-0521280495)</li>
</ul>
```
@y
```html
<p>Fiction</p>
<ul>
  <li>The Hunchback of Notre Dame (978-0140443530)</li>
  <li>Les Misérables (978-0451419439)</li>
</ul>
<p>Nonfiction</p>
<ul>
  <li>The Ancien Régime and the Revolution (978-0141441641)</li>
  <li>Interpreting the French Revolution (978-0521280495)</li>
</ul>
```
@z

@x
To limit the listing to fiction, and sort by title:
@y
To limit the listing to fiction, and sort by title:
@z

@x
```go-html-template
<ul>
  {{ range sort .Site.Data.books.fiction "title" }}
    <li>{{ .title }} ({{ .author }})</li>
  {{ end }}
</ul>
```
@y
```go-html-template
<ul>
  {{ range sort .Site.Data.books.fiction "title" }}
    <li>{{ .title }} ({{ .author }})</li>
  {{ end }}
</ul>
```
@z

@x
To find a fiction book by ISBN:
@y
To find a fiction book by ISBN:
@z

@x
```go-html-template
{{ range where .Site.Data.books.fiction "isbn" "978-0140443530" }}
  <li>{{ .title }} ({{ .author }})</li>
{{ end }}
```
@y
```go-html-template
{{ range where .Site.Data.books.fiction "isbn" "978-0140443530" }}
  <li>{{ .title }} ({{ .author }})</li>
{{ end }}
```
@z

@x
In the template examples above, each of the keys is a valid [identifier]. For example, none of the keys contains a hyphen. To access a key that is not a valid identifier, use the [`index`] function. For example:
@y
In the template examples above, each of the keys is a valid [identifier]. For example, none of the keys contains a hyphen. To access a key that is not a valid identifier, use the [`index`] function. For example:
@z

@x
[identifier]: /getting-started/glossary/#identifier
@y
[identifier]: /getting-started/glossary/#identifier
@z

@x
```go-html-template
{{ index .Site.Data.books "historical-fiction" }}
```
@y
```go-html-template
{{ index .Site.Data.books "historical-fiction" }}
```
@z

@x
[`index`]: /functions/collections/indexfunction/
[chaining]: /getting-started/glossary/#chain
[identifiers]: /getting-started/glossary/#identifier
@y
[`index`]: /functions/collections/indexfunction/
[chaining]: /getting-started/glossary/#chain
[identifiers]: /getting-started/glossary/#identifier
@z
