%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Data sources
description: Use local and remote data sources to augment or create content.
categories: [content management]
keywords: [data,json,toml,yaml,xml]
menu:
  docs:
    parent: content-management
    weight: 280
weight: 280
toc: true
aliases: [/extras/datafiles/,/extras/datadrivencontent/,/doc/datafiles/,/templates/data-templates/]
---
@y
---
title: Data sources
description: Use local and remote data sources to augment or create content.
categories: [content management]
keywords: [data,json,toml,yaml,xml]
menu:
  docs:
    parent: content-management
    weight: 280
weight: 280
toc: true
aliases: [/extras/datafiles/,/extras/datadrivencontent/,/doc/datafiles/,/templates/data-templates/]
---
@z

@x
Hugo can access and [unmarshal] local and remote data sources including CSV, JSON, TOML, YAML, and XML. Use this data to augment existing content or to create new content.
@y
Hugo can access and [unmarshal] local and remote data sources including CSV, JSON, TOML, YAML, and XML. Use this data to augment existing content or to create new content.
@z

@x
[unmarshal]: /getting-started/glossary/#unmarshal
@y
[unmarshal]: /getting-started/glossary/#unmarshal
@z

@x
A data source might be a file in the data directory, a [global resource], a [page resource], or a [remote resource].
@y
A data source might be a file in the data directory, a [global resource], a [page resource], or a [remote resource].
@z

@x
[global resource]: /getting-started/glossary/#global-resource
[page resource]: /getting-started/glossary/#page-resource
[remote resource]: /getting-started/glossary/#remote-resource
@y
[global resource]: /getting-started/glossary/#global-resource
[page resource]: /getting-started/glossary/#page-resource
[remote resource]: /getting-started/glossary/#remote-resource
@z

@x
## Data directory
@y
## Data directory
@z

@x
The data directory in the root of your project may contain one or more data files, in either a flat or nested tree. Hugo merges the data files to create a single data structure, accessible with the `Data` method on a `Site` object.
@y
The data directory in the root of your project may contain one or more data files, in either a flat or nested tree. Hugo merges the data files to create a single data structure, accessible with the `Data` method on a `Site` object.
@z

@x
Hugo also merges data directories from themes and modules into this single data structure, where the data directory in the root of your project takes precedence.
@y
Hugo also merges data directories from themes and modules into this single data structure, where the data directory in the root of your project takes precedence.
@z

@x
Theme and module authors may wish to namespace their data files to prevent collisions. For example:
@y
Theme and module authors may wish to namespace their data files to prevent collisions. For example:
@z

@x
```text
project/
└── data/
    └── mytheme/
        └── foo.json
```
@y
```text
project/
└── data/
    └── mytheme/
        └── foo.json
```
@z

@x
{{% note %}}
Do not place CSV files in the data directory. Access CSV files as page, global, or remote resources.
{{% /note %}}
@y
{{% note %}}
Do not place CSV files in the data directory. Access CSV files as page, global, or remote resources.
{{% /note %}}
@z

@x
See the documentation for the [`Data`] method on `Page` object for details and examples.
@y
See the documentation for the [`Data`] method on `Page` object for details and examples.
@z

@x
[`Data`]: /methods/site/data/
@y
[`Data`]: /methods/site/data/
@z

@x
## Global resources
@y
## Global resources
@z

@x
Use the `resources.Get` and `transform.Unmarshal` functions to access data files that exist as global resources.
@y
Use the `resources.Get` and `transform.Unmarshal` functions to access data files that exist as global resources.
@z

@x
See the [`transform.Unmarshal`](/functions/transform/unmarshal/#global-resource) documentation for details and examples.
@y
See the [`transform.Unmarshal`](/functions/transform/unmarshal/#global-resource) documentation for details and examples.
@z

@x
## Page resources
@y
## Page resources
@z

@x
Use the `Resources.Get` method on a `Page` object combined with the `transform.Unmarshal` function to access data files that exist as page resources.
@y
Use the `Resources.Get` method on a `Page` object combined with the `transform.Unmarshal` function to access data files that exist as page resources.
@z

@x
See the [`transform.Unmarshal`](/functions/transform/unmarshal/#page-resource) documentation for details and examples.
@y
See the [`transform.Unmarshal`](/functions/transform/unmarshal/#page-resource) documentation for details and examples.
@z

@x
## Remote resources
@y
## Remote resources
@z

@x
Use the `resources.GetRemote` and `transform.Unmarshal` functions to access remote data.
@y
Use the `resources.GetRemote` and `transform.Unmarshal` functions to access remote data.
@z

@x
See the [`transform.Unmarshal`](/functions/transform/unmarshal/#remote-resource) documentation for details and examples.
@y
See the [`transform.Unmarshal`](/functions/transform/unmarshal/#remote-resource) documentation for details and examples.
@z

@x
## Augment existing content
@y
## Augment existing content
@z

@x
Use data sources to augment existing content. For example, create a shortcode to render an HTML table from a global CSV resource.
@y
Use data sources to augment existing content. For example, create a shortcode to render an HTML table from a global CSV resource.
@z

@x
{{< code file=assets/pets.csv >}}
"name","type","breed","age"
"Spot","dog","Collie","3"
"Felix","cat","Malicious","7"
{{< /code >}}
@y
{{< code file=assets/pets.csv >}}
"name","type","breed","age"
"Spot","dog","Collie","3"
"Felix","cat","Malicious","7"
{{< /code >}}
@z

@x
{{< code file=content/example.md lang=text >}}
{{</* csv-to-table "pets.csv" */>}}
{{< /code >}}
@y
{{< code file=content/example.md lang=text >}}
{{</* csv-to-table "pets.csv" */>}}
{{< /code >}}
@z

@x
{{< code file=layouts/shortcodes/csv-to-table.html >}}
{{ with $file := .Get 0 }}
  {{ with resources.Get $file }}
    {{ with . | transform.Unmarshal }}
      <table>
        <thead>
          <tr>
            {{ range index . 0 }}
              <th>{{ . }}</th>
            {{ end }}
          </tr>
        </thead>
        <tbody>
          {{ range after 1 . }}
            <tr>
              {{ range . }}
                <td>{{ . }}</td>
              {{ end }}
            </tr>
          {{ end }}
        </tbody>
      </table>
    {{ end }}
  {{ else }}
    {{ errorf "The %q shortcode was unable to find %s. See %s" $.Name $file $.Position }}
  {{ end }}
{{ else }}
  {{ errorf "The %q shortcode requires one positional argument, the path to the CSV file relative to the assets directory. See %s" .Name .Position }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/shortcodes/csv-to-table.html >}}
{{ with $file := .Get 0 }}
  {{ with resources.Get $file }}
    {{ with . | transform.Unmarshal }}
      <table>
        <thead>
          <tr>
            {{ range index . 0 }}
              <th>{{ . }}</th>
            {{ end }}
          </tr>
        </thead>
        <tbody>
          {{ range after 1 . }}
            <tr>
              {{ range . }}
                <td>{{ . }}</td>
              {{ end }}
            </tr>
          {{ end }}
        </tbody>
      </table>
    {{ end }}
  {{ else }}
    {{ errorf "The %q shortcode was unable to find %s. See %s" $.Name $file $.Position }}
  {{ end }}
{{ else }}
  {{ errorf "The %q shortcode requires one positional argument, the path to the CSV file relative to the assets directory. See %s" .Name .Position }}
{{ end }}
{{< /code >}}
@z

@x
Hugo renders this to:
@y
Hugo renders this to:
@z

@x
name|type|breed|age
:--|:--|:--|:--
Spot|dog|Collie|3
Felix|cat|Malicious|7
@y
name|type|breed|age
:--|:--|:--|:--
Spot|dog|Collie|3
Felix|cat|Malicious|7
@z

@x
## Create new content
@y
## Create new content
@z

@x
Use [content adapters] to create new content.
@y
Use [content adapters] to create new content.
@z

@x
[content adapters]: /content-management/content-adapters/
@y
[content adapters]: /content-management/content-adapters/
@z
