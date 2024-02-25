%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: hugo.Deps
description: Returns a slice of project dependencies, either Hugo Modules or local theme components.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: '[]hugo.Dependency'
  signatures: [hugo.Deps]
---
@y
---
title: hugo.Deps
description: Returns a slice of project dependencies, either Hugo Modules or local theme components.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: '[]hugo.Dependency'
  signatures: [hugo.Deps]
---
@z

@x
The `hugo.Deps` function returns a slice of project dependencies, either Hugo Modules or local theme components. Each dependency contains:
@y
The `hugo.Deps` function returns a slice of project dependencies, either Hugo Modules or local theme components. Each dependency contains:
@z

@x
Owner
: (`hugo.Dependency`) In the dependency tree, this is the first module that defines this module as a dependency (e.g., `github.com/gohugoio/hugo-mod-bootstrap-scss/v5`).
@y
Owner
: (`hugo.Dependency`) In the dependency tree, this is the first module that defines this module as a dependency (e.g., `github.com/gohugoio/hugo-mod-bootstrap-scss/v5`).
@z

@x
Path
: (`string`) The module path or the path below your `themes` directory (e.g., `github.com/gohugoio/hugo-mod-jslibs-dist/popperjs/v2`).
@y
Path
: (`string`) The module path or the path below your `themes` directory (e.g., `github.com/gohugoio/hugo-mod-jslibs-dist/popperjs/v2`).
@z

@x
Replace
: (`hugo.Dependency`) Replaced by this dependency.
@y
Replace
: (`hugo.Dependency`) Replaced by this dependency.
@z

@x
Time
: (`time.Time`) The time that the version was created (e.g., `2022-02-13 15:11:28 +0000 UTC`).
@y
Time
: (`time.Time`) The time that the version was created (e.g., `2022-02-13 15:11:28 +0000 UTC`).
@z

@x
Vendor
: (`bool`) Reports whether the dependency is vendored.
@y
Vendor
: (`bool`) Reports whether the dependency is vendored.
@z

@x
Version
: (`string`) The module version (e.g., `v2.21100.20000`).
@y
Version
: (`string`) The module version (e.g., `v2.21100.20000`).
@z

@x
An example table listing the dependencies:
@y
An example table listing the dependencies:
@z

@x
```go-html-template
<h2>Dependencies</h2>
<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Owner</th>
      <th scope="col">Path</th>
      <th scope="col">Version</th>
      <th scope="col">Time</th>
      <th scope="col">Vendor</th>
    </tr>
  </thead>
  <tbody>
    {{ range $index, $element := hugo.Deps }}
    <tr>
      <th scope="row">{{ add $index 1 }}</th>
      <td>{{ with $element.Owner }}{{ .Path }}{{ end }}</td>
      <td>
        {{ $element.Path }}
        {{ with $element.Replace }}
        => {{ .Path }}
        {{ end }}
      </td>
      <td>{{ $element.Version }}</td>
      <td>{{ with $element.Time }}{{ . }}{{ end }}</td>
      <td>{{ $element.Vendor }}</td>
    </tr>
    {{ end }}
  </tbody>
</table>
```
@y
```go-html-template
<h2>Dependencies</h2>
<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Owner</th>
      <th scope="col">Path</th>
      <th scope="col">Version</th>
      <th scope="col">Time</th>
      <th scope="col">Vendor</th>
    </tr>
  </thead>
  <tbody>
    {{ range $index, $element := hugo.Deps }}
    <tr>
      <th scope="row">{{ add $index 1 }}</th>
      <td>{{ with $element.Owner }}{{ .Path }}{{ end }}</td>
      <td>
        {{ $element.Path }}
        {{ with $element.Replace }}
        => {{ .Path }}
        {{ end }}
      </td>
      <td>{{ $element.Version }}</td>
      <td>{{ with $element.Time }}{{ . }}{{ end }}</td>
      <td>{{ $element.Vendor }}</td>
    </tr>
    {{ end }}
  </tbody>
</table>
```
@z
