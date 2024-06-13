%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% snip 対応

@x
title: Documentation
description: Help us to improve the documentation by identifying issues and suggesting changes.
categories: [contribute]
keywords: [documentation]
@y
title: ドキュメント
description: Help us to improve the documentation by identifying issues and suggesting changes.
categories: [contribute]
keywords: [documentation]
@z

@x
## Introduction
@y
## はじめに {#introduction}
@z

@x
We welcome corrections and improvements to the documentation. Please note that the documentation resides in its own repository, separate from the project repository.
@y
We welcome corrections and improvements to the documentation. Please note that the documentation resides in its own repository, separate from the project repository.
@z

@x
For corrections and improvements to the current documentation, please submit issues and pull requests to the [documentation repository].
@y
For corrections and improvements to the current documentation, please submit issues and pull requests to the [documentation repository].
@z

@x
For documentation related to a new feature, please include the documentation changes when you submit a pull request to the [project repository].
@y
For documentation related to a new feature, please include the documentation changes when you submit a pull request to the [project repository].
@z

@x
## Guidelines
@y
## ガイドライン {#guidelines}
@z

@x
### Markdown
@y
### マークダウン {#markdown}
@z

@x
Please follow these guidelines:
@y
Please follow these guidelines:
@z

@x
- Use [ATX] headings, not [setext] headings, levels 2 through 4
- Use [fenced code blocks], not [indented code blocks]
- Use hyphens, not asterisks, with unordered [list items]
- Use the [note shortcode] instead of blockquotes
- Do not mix [raw HTML] within Markdown
- Do not use bold text instead of a heading or description term (`dt`)
- Remove consecutive blank lines (maximum of two)
- Remove trailing spaces
@y
- Use [ATX] headings, not [setext] headings, levels 2 through 4
- Use [fenced code blocks], not [indented code blocks]
- Use hyphens, not asterisks, with unordered [list items]
- Use the [note shortcode] instead of blockquotes
- Do not mix [raw HTML] within Markdown
- Do not use bold text instead of a heading or description term (`dt`)
- Remove consecutive blank lines (maximum of two)
- Remove trailing spaces
@z

@x
### Style
@y
### スタイル {#style}
@z

@x
Although we do not strictly adhere to the [Microsoft Writing Style Guide], it is an excellent resource for questions related to style, grammar, and voice.
@y
Although we do not strictly adhere to the [Microsoft Writing Style Guide], it is an excellent resource for questions related to style, grammar, and voice.
@z

@x
#### Terminology
@y
#### 用語集 {#terminology}
@z

@x
Please link to the [glossary of terms] when necessary, and use the terms consistently throughout the documentation. Of special note:
@y
Please link to the [glossary of terms] when necessary, and use the terms consistently throughout the documentation. Of special note:
@z

@x
- The term "front matter" is two words unless you are referring to the configuration key
- The term "standalone" is one word, not hyphenated
- Use the word "map" instead of "dictionary"
- Use the word "flag" instead of "option" when referring to a command line flag
- Capitalize the word "Markdown"
- Hyphenate the term "open-source" when used an adjective.
@y
- The term "front matter" is two words unless you are referring to the configuration key
- The term "standalone" is one word, not hyphenated
- Use the word "map" instead of "dictionary"
- Use the word "flag" instead of "option" when referring to a command line flag
- Capitalize the word "Markdown"
- Hyphenate the term "open-source" when used an adjective.
@z

@x
#### Page titles and headings
@y
#### ページタイトルとヘッダー {#page-titles-and-headings}
@z

@x
Please follow these guidelines for page titles and headings:
@y
Please follow these guidelines for page titles and headings:
@z

@x
- Use sentence-style capitalization
- Avoid formatted strings in headings and page titles
- Shorter is better
@y
- Use sentence-style capitalization
- Avoid formatted strings in headings and page titles
- Shorter is better
@z

@x
#### Use active voice with present tense
@y
#### Use active voice with present tense
@z

@x
In software documentation, passive voice is unavoidable in some cases. Please use active voice when possible.
@y
In software documentation, passive voice is unavoidable in some cases. Please use active voice when possible.
@z

@x
No → With Hugo you can build a static site.\
Yes → Build a static site with Hugo.
@y
No → With Hugo you can build a static site.\
Yes → Build a static site with Hugo.
@z

@x
No → This will cause Hugo to generate HTML files in the public directory.\
Yes → Hugo generates HTML files in the public directory.
@y
No → This will cause Hugo to generate HTML files in the public directory.\
Yes → Hugo generates HTML files in the public directory.
@z

@x
#### Use second person instead of third person
@y
#### Use second person instead of third person
@z

@x
No → Users should exercise caution when deleting files.\
Better → You must be cautious when deleting files.\
Best → Be cautious when deleting files.
@y
No → Users should exercise caution when deleting files.\
Better → You must be cautious when deleting files.\
Best → Be cautious when deleting files.
@z

@x
#### Avoid adverbs when possible
@y
#### Avoid adverbs when possible
@z

@x
No → Hugo is extremely fast.\
Yes → Hugo is fast.
@y
No → Hugo is extremely fast.\
Yes → Hugo is fast.
@z

@x
{{% note %}}
"It's an adverb, Sam. It's a lazy tool of a weak mind." (Outbreak, 1995).
{{% /note %}}
@y
{{% note %}}
"It's an adverb, Sam. It's a lazy tool of a weak mind." (Outbreak, 1995).
{{% /note %}}
@z

@x
#### Miscellaneous
@y
#### その他 {#miscellaneous}
@z

@x
Other guidelines to consider:
@y
Other guidelines to consider:
@z

@x
- Do not place list items directly under a heading; include an introductory sentence or phrase before the list.
- Avoid use of **bold** text. Use the [note shortcode] to draw attention to important content.
- Do not place description terms (`dt`) within backticks unless required for syntactic clarity.
- Do not use Hugo's `ref` or `relref` shortcodes. We use a link render hook to resolve and validate link destinations, including fragments.
- Shorter is better. If there is more than one way to do something, describe the current best practice. For example, avoid phrases such as "you can also do..." and "in older versions you had to..."
- When including code samples, use short snippets that demonstrate the concept.
- The Hugo user community is global; use  [basic english](https://simple.wikipedia.org/wiki/Basic_English) when possible.
@y
- Do not place list items directly under a heading; include an introductory sentence or phrase before the list.
- Avoid use of **bold** text. Use the [note shortcode] to draw attention to important content.
- Do not place description terms (`dt`) within backticks unless required for syntactic clarity.
- Do not use Hugo's `ref` or `relref` shortcodes. We use a link render hook to resolve and validate link destinations, including fragments.
- Shorter is better. If there is more than one way to do something, describe the current best practice. For example, avoid phrases such as "you can also do..." and "in older versions you had to..."
- When including code samples, use short snippets that demonstrate the concept.
- The Hugo user community is global; use  [basic english](https://simple.wikipedia.org/wiki/Basic_English) when possible.
@z

@x
#### Level 6 headings
@y
#### Level 6 headings
@z

@x
Level 6 headings are styled as `dt` elements. This was implemented to support a [glossary] with linkable terms.
@y
Level 6 headings are styled as `dt` elements. This was implemented to support a [glossary] with linkable terms.
@z

% snip link...

@x
## Code examples
@y
## コーディング例 {#code-examples}
@z

@x
Indent code by two spaces. With examples of template code, include a space after opening action delimiters, and include a space before closing action delimiters.
@y
Indent code by two spaces. With examples of template code, include a space after opening action delimiters, and include a space before closing action delimiters.
@z

@x
### Fenced code blocks
@y
### Fenced code blocks
@z

@x
Always include the language code when using a fenced code block:
@y
Always include the language code when using a fenced code block:
@z

@x
````text
```go-html-template
{{ if eq $foo "bar" }}
  {{ print "foo is bar" }}
{{ end }}
```
````
@y
````text
```go-html-template
{{ if eq $foo "bar" }}
  {{ print "foo is bar" }}
{{ end }}
```
````
@z

@x
Rendered:
@y
Rendered:
@z

@x
```go-html-template
{{ if eq $foo "bar" }}
  {{ print "foo is bar" }}
{{ end }}
```
@y
```go-html-template
{{ if eq $foo "bar" }}
  {{ print "foo is bar" }}
{{ end }}
```
@z

@x
### Shortcode calls
@y
### Shortcode calls
@z

@x
Use this syntax to include shortcodes calls within your code examples:
@y
Use this syntax to include shortcodes calls within your code examples:
@z

@x
```text
{{</*/* foo */*/>}}
{{%/*/* foo */*/%}}
```
@y
```text
{{</*/* foo */*/>}}
{{%/*/* foo */*/%}}
```
@z

@x
Rendered:
@y
Rendered:
@z

@x
```text
{{</* foo */>}}
{{%/* foo */%}}
```
@y
```text
{{</* foo */>}}
{{%/* foo */%}}
```
@z

@x
### Site configuration
@y
### Site configuration
@z

@x
Use the [code-toggle shortcode] to include site configuration examples:
@y
Use the [code-toggle shortcode] to include site configuration examples:
@z

@x
```text
{{</* code-toggle file=hugo */>}}
baseURL = 'https://example.org/'
languageCode = 'en-US'
title = 'My Site'
{{</* /code-toggle */>}}
```
@y
```text
{{</* code-toggle file=hugo */>}}
baseURL = 'https://example.org/'
languageCode = 'en-US'
title = 'My Site'
{{</* /code-toggle */>}}
```
@z

@x
Rendered:
@y
Rendered:
@z

@x
{{< code-toggle file=hugo >}}
baseURL = 'https://example.org/'
languageCode = 'en-US'
title = 'My Site'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
baseURL = 'https://example.org/'
languageCode = 'en-US'
title = 'My Site'
{{< /code-toggle >}}
@z

@x
### Front matter
@y
### Front matter
@z

@x
Use the [code-toggle shortcode] to include front matter examples:
@y
Use the [code-toggle shortcode] to include front matter examples:
@z

@x
```text
{{</* code-toggle file=content/posts/my-first-post.md fm=true */>}}
title = 'My first post'
date = 2023-11-09T12:56:07-08:00
draft = false
{{</* /code-toggle */>}}
```
@y
```text
{{</* code-toggle file=content/posts/my-first-post.md fm=true */>}}
title = 'My first post'
date = 2023-11-09T12:56:07-08:00
draft = false
{{</* /code-toggle */>}}
```
@z

@x
Rendered:
@y
Rendered:
@z

@x
{{< code-toggle file=content/posts/my-first-post.md fm=true >}}
title = 'My first post'
date = 2023-11-09T12:56:07-08:00
draft = false
{{< /code-toggle >}}
@y
{{< code-toggle file=content/posts/my-first-post.md fm=true >}}
title = 'My first post'
date = 2023-11-09T12:56:07-08:00
draft = false
{{< /code-toggle >}}
@z

@x
### Other code examples
@y
### Other code examples
@z

@x
Use the [code shortcode] for other code examples that require a file name:
@y
Use the [code shortcode] for other code examples that require a file name:
@z

@x
```text
{{</* code file=layouts/_default/single.html */>}}
{{ range .Site.RegularPages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
{{</* /code */>}}
```
@y
```text
{{</* code file=layouts/_default/single.html */>}}
{{ range .Site.RegularPages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
{{</* /code */>}}
```
@z

@x
Rendered:
@y
Rendered:
@z

@x
{{< code file=layouts/_default/single.html >}}
{{ range .Site.RegularPages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/single.html >}}
{{ range .Site.RegularPages }}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
{{< /code >}}
@z

@x
## Shortcodes
@y
## Shortcodes
@z

@x
These shortcodes are commonly used throughout the documentation. Other shortcodes are available for specialized use.
@y
These shortcodes are commonly used throughout the documentation. Other shortcodes are available for specialized use.
@z

@x
### deprecated-in
@y
### deprecated-in
@z

@x
Use the “deprecated-in” shortcode to indicate that a feature is deprecated:
@y
Use the “deprecated-in” shortcode to indicate that a feature is deprecated:
@z

% snip code...

@x
Rendered:
@y
Rendered:
@z

@x
{{% deprecated-in 0.127.0 %}}
Use [`hugo.IsServer`] instead.
@y
{{% deprecated-in 0.127.0 %}}
Use [`hugo.IsServer`] instead.
@z

@x
[`hugo.IsServer`]: /functions/hugo/isserver/
{{% /deprecated-in %}}
@y
[`hugo.IsServer`]: /functions/hugo/isserver/
{{% /deprecated-in %}}
@z

@x
### eturl
@y
### eturl
@z

@x
Use the embedded template URL (eturl) shortcode to insert an absolute URL to the source code for an embedded template. The shortcode takes a single argument, the base file name of the template (omit the file extension).
@y
Use the embedded template URL (eturl) shortcode to insert an absolute URL to the source code for an embedded template. The shortcode takes a single argument, the base file name of the template (omit the file extension).
@z

@x
```text
This is a link to the [embedded alias template].
@y
```text
This is a link to the [embedded alias template].
@z

@x
[embedded alias template]: {{%/* eturl alias */%}}
```
@y
[embedded alias template]: {{%/* eturl alias */%}}
```
@z

@x
Rendered:
@y
Rendered:
@z

@x
This is a link to the [embedded alias template].
@y
This is a link to the [embedded alias template].
@z

@x
[embedded alias template]: {{% eturl alias %}}
@y
[embedded alias template]: {{% eturl alias %}}
@z

@x
### new-in
@y
### new-in
@z

@x
Use the "new-in" shortcode to indicate a new feature:
@y
Use the "new-in" shortcode to indicate a new feature:
@z

% snip text ...

@x
Rendered:
@y
Rendered:
@z

@x
{{< new-in 0.127.0 >}}
@y
{{< new-in 0.127.0 >}}
@z

@x
### note
@y
### note
@z

@x
Use the "note" shortcode with `{{%/* */%}}` delimiters to call attention to important content:
@y
Use the "note" shortcode with `{{%/* */%}}` delimiters to call attention to important content:
@z

@x
```text
{{%/* note */%}}
Use the [`math.Mod`] function to control...
@y
```text
{{%/* note */%}}
Use the [`math.Mod`] function to control...
@z

@x
[`math.Mod`]: /functions/math/mod/
{{%/* /note */%}}
```
@y
[`math.Mod`]: /functions/math/mod/
{{%/* /note */%}}
```
@z

@x
Rendered:
@y
Rendered:
@z

@x
{{% note %}}
Use the [`math.Mod`] function to control...
@y
{{% note %}}
Use the [`math.Mod`] function to control...
@z

@x
[`math.Mod`]: /functions/math/mod/
{{% /note %}}
@y
[`math.Mod`]: /functions/math/mod/
{{% /note %}}
@z

@x
## New features
@y
## New features
@z

@x
Use the "new-in" shortcode to indicate a new feature:
@y
Use the "new-in" shortcode to indicate a new feature:
@z

@x
{{< code file=content/something/foo.md lang=text >}}
{{</* new-in 0.120.0 */>}}
{{< /code >}}
@y
{{< code file=content/something/foo.md lang=text >}}
{{</* new-in 0.120.0 */>}}
{{< /code >}}
@z

@x
The "new in" label will be hidden if the specified version is older than a predefined threshold, based on differences in major and minor versions. See&nbsp;[details](https://github.com/gohugoio/hugoDocs/blob/master/_vendor/github.com/gohugoio/gohugoioTheme/layouts/shortcodes/new-in.html).
@y
The "new in" label will be hidden if the specified version is older than a predefined threshold, based on differences in major and minor versions. See&nbsp;[details](https://github.com/gohugoio/hugoDocs/blob/master/_vendor/github.com/gohugoio/gohugoioTheme/layouts/shortcodes/new-in.html).
@z

@x
## Deprecated features
@y
## Deprecated features
@z

@x
Use the "deprecated-in" shortcode to indicate that a feature is deprecated:
@y
Use the "deprecated-in" shortcode to indicate that a feature is deprecated:
@z

@x
{{< code file=content/something/foo.md >}}
{{%/* deprecated-in 0.120.0 */%}}
Use [`hugo.IsServer`] instead.
@y
{{< code file=content/something/foo.md >}}
{{%/* deprecated-in 0.120.0 */%}}
Use [`hugo.IsServer`] instead.
@z

@x
[`hugo.IsServer`]: /functions/hugo/isserver/
{{%/* /deprecated-in */%}}
{{< /code >}}
@y
[`hugo.IsServer`]: /functions/hugo/isserver/
{{%/* /deprecated-in */%}}
{{< /code >}}
@z

@x
When deprecating a function or method, add this to front matter:
@y
When deprecating a function or method, add this to front matter:
@z

@x
{{< code-toggle file=content/something/foo.md fm=true >}}
expiryDate: 2024-10-30
{{< /code-toggle >}}
@y
{{< code-toggle file=content/something/foo.md fm=true >}}
expiryDate: 2024-10-30
{{< /code-toggle >}}
@z

@x
Set the `expiryDate` to one year from the date of deprecation, and add a brief front matter comment to explain the setting.
@y
Set the `expiryDate` to one year from the date of deprecation, and add a brief front matter comment to explain the setting.
@z

@x
## GitHub workflow
@y
## GitHub workflow
@z

@x
{{% note %}}
This section assumes that you have a working knowledge of Git and GitHub, and are comfortable working on the command line.
{{% /note %}}
@y
{{% note %}}
This section assumes that you have a working knowledge of Git and GitHub, and are comfortable working on the command line.
{{% /note %}}
@z

@x
Use this workflow to create and submit pull requests.
@y
Use this workflow to create and submit pull requests.
@z

@x
Step 1
: Fork the [documentation repository].
@y
Step 1
: Fork the [documentation repository].
@z

@x
Step 2
: Clone your fork.
@y
Step 2
: Clone your fork.
@z

@x
Step 3
: Create a new branch with a descriptive name that includes the corresponding issue number, if any:
@y
Step 3
: Create a new branch with a descriptive name that includes the corresponding issue number, if any:
@z

@x
```sh
git checkout -b restructure-foo-page-99999
```
@y
```sh
git checkout -b restructure-foo-page-99999
```
@z

@x
Step 4
: Make changes.
@y
Step 4
: Make changes.
@z

@x
Step 5
: Build the site locally to preview your changes.
@y
Step 5
: Build the site locally to preview your changes.
@z

@x
Step 6
: Commit your changes with a descriptive commit message:
@y
Step 6
: Commit your changes with a descriptive commit message:
@z

@x
- Provide a summary on the first line, typically 50 characters or less, followed by a blank line.
- Optionally, provide a detailed description where each line is 80 characters or less, followed by a blank line.
- Optionally, add one or more "Fixes" or "Closes" keywords, each on its own line, referencing the [issues] addressed by this change.
@y
- Provide a summary on the first line, typically 50 characters or less, followed by a blank line.
- Optionally, provide a detailed description where each line is 80 characters or less, followed by a blank line.
- Optionally, add one or more "Fixes" or "Closes" keywords, each on its own line, referencing the [issues] addressed by this change.
@z

@x
For example:
@y
For example:
@z

@x
```sh
git commit -m "Restructure the taxonomy page
@y
```sh
git commit -m "Restructure the taxonomy page
@z

@x
This restructures the taxonomy page by splitting topics into logical
sections, each with one or more examples.
@y
This restructures the taxonomy page by splitting topics into logical
sections, each with one or more examples.
@z

@x
Fixes #9999
Closes #9998"
```
@y
Fixes #9999
Closes #9998"
```
@z

@x
Step 7
: Push the new branch to your fork of the documentation repository.
@y
Step 7
: Push the new branch to your fork of the documentation repository.
@z

@x
Step 8
: Visit the [documentation repository] and create a pull request (PR).
@y
Step 8
: Visit the [documentation repository] and create a pull request (PR).
@z

@x
Step 9
: A project maintainer will review your PR and may request changes. You may delete your branch after the maintainer merges your PR.
@y
Step 9
: A project maintainer will review your PR and may request changes. You may delete your branch after the maintainer merges your PR.
@z

% snip links...
