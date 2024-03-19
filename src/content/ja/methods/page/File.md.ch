%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: File
description: For pages backed by a file, returns file information for the given page.
categories: []
keywords: []
@y
title: File
description: For pages backed by a file, returns file information for the given page.
categories: []
keywords: []
@z

@x
By default, not all pages are backed by a file, including top level [section] pages, [taxonomy] pages, and [term] pages. By definition, you cannot retrieve file information when the file does not exist.
@y
By default, not all pages are backed by a file, including top level [section] pages, [taxonomy] pages, and [term] pages. By definition, you cannot retrieve file information when the file does not exist.
@z

@x
To back one of the pages above with a file, create an _index.md file in the corresponding directory. For example:
@y
To back one of the pages above with a file, create an _index.md file in the corresponding directory. For example:
@z

% snip text...

@x
{{% note %}}
Code defensively by verifying file existence as shown in the examples below.
{{% /note %}}
@y
{{% note %}}
Code defensively by verifying file existence as shown in the examples below.
{{% /note %}}
@z

@x
## Methods
@y
## Methods
@z

@x
{{% note %}}
The path separators (slash or backslash) in `Path`, `Dir`, and `Filename` depend on the operating system.
{{% /note %}}
@y
{{% note %}}
The path separators (slash or backslash) in `Path`, `Dir`, and `Filename` depend on the operating system.
{{% /note %}}
@z

@x
###### BaseFileName
@y
###### BaseFileName
@z

@x
(`string`) The file name, excluding the extension.
@y
(`string`) The file name, excluding the extension.
@z

% snip code...

@x
###### ContentBaseName
@y
###### ContentBaseName
@z

@x
(`string`) If the page is a branch or leaf bundle, the name of the containing directory, else the `TranslationBaseName`.
@y
(`string`) If the page is a branch or leaf bundle, the name of the containing directory, else the `TranslationBaseName`.
@z

% snip code...

@x
###### Dir
@y
###### Dir
@z

@x
(`string`) The file path, excluding the file name, relative to the `content` directory.
@y
(`string`) The file path, excluding the file name, relative to the `content` directory.
@z

% snip code...

@x
###### Ext
@y
###### Ext
@z

@x
(`string`) The file extension.
@y
(`string`) The file extension.
@z

% snip code...

@x
###### Filename
@y
###### Filename
@z

@x
(`string`) The absolute file path.
@y
(`string`) The absolute file path.
@z

% snip code...

@x
###### LogicalName
@y
###### LogicalName
@z

@x
(`string`) The file name.
@y
(`string`) The file name.
@z

% snip code...

@x
###### Path
@y
###### Path
@z

@x
(`string`) The file path, relative to the `content` directory.
@y
(`string`) The file path, relative to the `content` directory.
@z

% snip code...

@x
###### Section
@y
###### Section
@z

@x
(`string`) The name of the top level section in which the file resides.
@y
(`string`) The name of the top level section in which the file resides.
@z

% snip code...

@x
###### TranslationBaseName
@y
###### TranslationBaseName
@z

@x
(`string`) The file name, excluding the extension and language identifier.
@y
(`string`) The file name, excluding the extension and language identifier.
@z

% snip code...

@x
###### UniqueID
@y
###### UniqueID
@z

@x
(`string`) The MD5 hash of `.File.Path`.
@y
(`string`) The MD5 hash of `.File.Path`.
@z

% snip code...

@x
## Examples
@y
## Examples
@z

@x
Consider this content structure in a multilingual project:
@y
Consider this content structure in a multilingual project:
@z

@x
```text
content/
├── news/
│   ├── b/
│   │   ├── index.de.md   <-- leaf bundle
│   │   └── index.en.md   <-- leaf bundle
│   ├── a.de.md           <-- regular content
│   ├── a.en.md           <-- regular content
│   ├── _index.de.md      <-- branch bundle
│   └── _index.en.md      <-- branch bundle
├── _index.de.md
└── _index.en.md
```
@y
```text
content/
├── news/
│   ├── b/
│   │   ├── index.de.md   <-- leaf bundle
│   │   └── index.en.md   <-- leaf bundle
│   ├── a.de.md           <-- regular content
│   ├── a.en.md           <-- regular content
│   ├── _index.de.md      <-- branch bundle
│   └── _index.en.md      <-- branch bundle
├── _index.de.md
└── _index.en.md
```
@z

@x
With the English language site:
@y
With the English language site:
@z

@x
&nbsp;|regular content|leaf bundle|branch bundle
:--|:--|:--|:--
BaseFileName|a.en|index.en|_index.en
ContentBaseName|a|b|news
Dir|news/|news/b/|news/
Ext|md|md|md
Filename|/home/user/...|/home/user/...|/home/user/...
LogicalName|a.en.md|index.en.md|_index.en.md
Path|news/a.en.md|news/b/index.en.md|news/_index.en.md
Section|news|news|news
TranslationBaseName|a|index|_index
UniqueID|15be14b...|186868f...|7d9159d...
@y
&nbsp;|regular content|leaf bundle|branch bundle
:--|:--|:--|:--
BaseFileName|a.en|index.en|_index.en
ContentBaseName|a|b|news
Dir|news/|news/b/|news/
Ext|md|md|md
Filename|/home/user/...|/home/user/...|/home/user/...
LogicalName|a.en.md|index.en.md|_index.en.md
Path|news/a.en.md|news/b/index.en.md|news/_index.en.md
Section|news|news|news
TranslationBaseName|a|index|_index
UniqueID|15be14b...|186868f...|7d9159d...
@z

@x
## Defensive coding
@y
## Defensive coding
@z

@x
Some of the pages on a site may not be backed by a file. For example:
@y
Some of the pages on a site may not be backed by a file. For example:
@z

@x
- Top level section pages
- Taxonomy pages
- Term pages
@y
- Top level section pages
- Taxonomy pages
- Term pages
@z

@x
Without a backing file, Hugo will throw an error if you attempt to access a `.File` property. To code defensively, first check for file existence:
@y
Without a backing file, Hugo will throw an error if you attempt to access a `.File` property. To code defensively, first check for file existence:
@z

% snip code...
% snip links...
