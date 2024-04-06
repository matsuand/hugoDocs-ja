%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Page bundles
description: Use page bundles to logically associate one or more resources with content.
categories: [content management]
keywords: [page,bundle,leaf,branch]
@y
title: ページバンドル
description: Use page bundles to logically associate one or more resources with content.
categories: [content management]
keywords: [page,bundle,leaf,branch]
@z

@x
## Introduction
@y
## はじめに {#introduction}
@z

@x
A page bundle is a directory that encapsulates both content and associated resources.
@y
A page bundle is a directory that encapsulates both content and associated resources.
@z

@x
By way of example, this site has an "about" page and a "privacy" page:
@y
By way of example, this site has an "about" page and a "privacy" page:
@z

% snip text...

@x
The "about" page is a page bundle. It logically associates a resource with content by bundling them together. Resources within a page bundle are [page resources], accessible with the [`Resources`] method on the `Page` object.
@y
The "about" page is a page bundle. It logically associates a resource with content by bundling them together. Resources within a page bundle are [page resources], accessible with the [`Resources`] method on the `Page` object.
@z

@x
Page bundles are either _leaf bundles_ or _branch bundles_.
@y
ページバンドルとは **リーフバンドル** または **ブランチバンドル** のいずれかです。
@z

@x
leaf bundle
: A _leaf bundle_ is a directory that contains an index.md file and zero or more resources. Analogous to a physical leaf, a leaf bundle is at the end of a branch. It has no descendants.
@y
リーフバンドル
: A _leaf bundle_ is a directory that contains an index.md file and zero or more resources. Analogous to a physical leaf, a leaf bundle is at the end of a branch. It has no descendants.
@z

@x
branch bundle
: A _branch bundle_ is a directory that contains an _index.md file and zero or more resources. Analogous to a physical branch, a branch bundle may have descendants including leaf bundles and other branch bundles. Top level directories with or without _index.md files are also branch bundles. This includes the home page.
@y
ブランチバンドル
: A _branch bundle_ is a directory that contains an _index.md file and zero or more resources. Analogous to a physical branch, a branch bundle may have descendants including leaf bundles and other branch bundles. Top level directories with or without _index.md files are also branch bundles. This includes the home page.
@z

@x
{{% note %}}
In the definitions above and the examples below, the extension of the index file depends on the [content format]. For example, use index.md for Markdown content, index.html for HTML content, index.adoc for AsciiDoc content, etc.
@y
{{% note %}}
In the definitions above and the examples below, the extension of the index file depends on the [content format]. For example, use index.md for Markdown content, index.html for HTML content, index.adoc for AsciiDoc content, etc.
@z

@x
[content format]: /getting-started/glossary/#content-format
{{% /note %}}
@y
[content format]: /getting-started/glossary/#content-format
{{% /note %}}
@z

@x
## Comparison
@y
## Comparison
@z

@x
Page bundle characteristics vary by bundle type.
@y
Page bundle characteristics vary by bundle type.
@z

@x
|                     | Leaf bundle                                             | Branch bundle                                           |
|---------------------|---------------------------------------------------------|---------------------------------------------------------|
| Index file          | index.md                                                | _index.md                                               |
| Example             | content/about/index.md                                  | content/posts/_index.md                                 |
| [Page kinds]        | `page`                                                  | `home`, `section`, `taxonomy`, or `term`                |
| Layout type         | [single]                                                | [list]                                                  |
| Descendant pages    | None                                                    | Zero or more                                            |
| Resource location   | Adjacent to the index file or in a nested subdirectory  | Same as a leaf bundles, but excludes descendant bundles |
| [Resource types]    | `page`, `image`, `video`, etc.                          | all but `page`                                          |
@y
|                     | Leaf bundle                                             | Branch bundle                                           |
|---------------------|---------------------------------------------------------|---------------------------------------------------------|
| Index file          | index.md                                                | _index.md                                               |
| Example             | content/about/index.md                                  | content/posts/_index.md                                 |
| [Page kinds]        | `page`                                                  | `home`, `section`, `taxonomy`, or `term`                |
| Layout type         | [single]                                                | [list]                                                  |
| Descendant pages    | None                                                    | Zero or more                                            |
| Resource location   | Adjacent to the index file or in a nested subdirectory  | Same as a leaf bundles, but excludes descendant bundles |
| [Resource types]    | `page`, `image`, `video`, etc.                          | all but `page`                                          |
@z

@x
Files with [resource type] `page` include content written in Markdown, HTML, AsciiDoc, Pandoc, reStructuredText, and Emacs Org Mode. In a leaf bundle, excluding the index file, these files are only accessible as page resources. In a branch bundle, these files are only accessible as content pages.
@y
Files with [resource type] `page` include content written in Markdown, HTML, AsciiDoc, Pandoc, reStructuredText, and Emacs Org Mode. In a leaf bundle, excluding the index file, these files are only accessible as page resources. In a branch bundle, these files are only accessible as content pages.
@z

@x
## Leaf bundles
@y
## Leaf bundles
@z

@x
A _leaf bundle_ is a directory that contains an index.md file and zero or more resources. Analogous to a physical leaf, a leaf bundle is at the end of a branch. It has no descendants.
@y
A _leaf bundle_ is a directory that contains an index.md file and zero or more resources. Analogous to a physical leaf, a leaf bundle is at the end of a branch. It has no descendants.
@z

% snip text...

@x
There are four leaf bundles in the example above:
@y
There are four leaf bundles in the example above:
@z

@x
about
: This leaf bundle does not contain any page resources.
@y
about
: This leaf bundle does not contain any page resources.
@z

@x
my-post
: This leaf bundle contains an index file, two resources of [resource type] `page`, and two resources of resource type `image`.
@y
my-post
: This leaf bundle contains an index file, two resources of [resource type] `page`, and two resources of resource type `image`.
@z

@x
- content-1, content-2
@y
- content-1, content-2
@z

@x
  These are resources of resource type `page`, accessible via the [`Resources`] method on the `Page` object. Hugo will not render these as individual pages.
@y
  These are resources of resource type `page`, accessible via the [`Resources`] method on the `Page` object. Hugo will not render these as individual pages.
@z

@x
- image-1, image-2
@y
- image-1, image-2
@z

@x
  These are resources of resource type `image`, accessible via the `Resources` method on the `Page` object
@y
  These are resources of resource type `image`, accessible via the `Resources` method on the `Page` object
@z

@x
my-other-post
: This leaf bundle does not contain any page resources.
@y
my-other-post
: This leaf bundle does not contain any page resources.
@z

@x
another-leaf-bundle
: This leaf bundle does not contain any page resources.
@y
another-leaf-bundle
: This leaf bundle does not contain any page resources.
@z

@x
{{% note %}}
Create leaf bundles at any depth within the content directory, but a leaf bundle may not contain another bundle. Leaf bundles do not have descendants.
{{% /note %}}
@y
{{% note %}}
Create leaf bundles at any depth within the content directory, but a leaf bundle may not contain another bundle. Leaf bundles do not have descendants.
{{% /note %}}
@z

@x
## Branch bundles
@y
## Branch bundles
@z

@x
A _branch bundle_ is a directory that contains an _index.md file and zero or more resources. Analogous to a physical branch, a branch bundle may have descendants including leaf bundles and other branch bundles. Top level directories with or without _index.md files are also branch bundles. This includes the home page.
@y
A _branch bundle_ is a directory that contains an _index.md file and zero or more resources. Analogous to a physical branch, a branch bundle may have descendants including leaf bundles and other branch bundles. Top level directories with or without _index.md files are also branch bundles. This includes the home page.
@z

% snip text...

@x
There are three branch bundles in the example above:
@y
There are three branch bundles in the example above:
@z

@x
home page
: This branch bundle contains an index file, two descendant branch bundles, and no resources.
@y
home page
: This branch bundle contains an index file, two descendant branch bundles, and no resources.
@z

@x
branch-bundle-1
:  This branch bundle contains an index file, two resources of [resource type] `page`, and two resources of resource type `image`.
@y
branch-bundle-1
:  This branch bundle contains an index file, two resources of [resource type] `page`, and two resources of resource type `image`.
@z

@x
branch-bundle-2
: This branch bundle contains an index file and a leaf bundle.
@y
branch-bundle-2
: This branch bundle contains an index file and a leaf bundle.
@z

@x
{{% note %}}
Create branch bundles at any depth within the content directory, but a leaf bundle may not contain another bundle. Leaf bundles do not have descendants.
{{% /note %}}
@y
{{% note %}}
Create branch bundles at any depth within the content directory, but a leaf bundle may not contain another bundle. Leaf bundles do not have descendants.
{{% /note %}}
@z

@x
## Headless bundles
@y
## Headless bundles
@z

@x
Use [build options] in front matter to create an unpublished leaf or branch bundle whose content and resources you can include in other pages.
@y
Use [build options] in front matter to create an unpublished leaf or branch bundle whose content and resources you can include in other pages.
@z

% snip links...
