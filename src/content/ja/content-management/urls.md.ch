%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: URL management
description: Control the structure and appearance of URLs through front matter entries and settings in your site configuration.
categories: [content management]
keywords: [aliases,redirects,permalinks,urls]
@y
title: URL 管理
description: Control the structure and appearance of URLs through front matter entries and settings in your site configuration.
categories: [content management]
keywords: [aliases,redirects,permalinks,urls]
@z

@x
## Overview
@y
## 概要 {#ovewview}
@z

@x
By default, when Hugo renders a page, the resulting URL matches the file path within the `content` directory. For example:
@y
Hugo がページをレンダリングする際には、デフォルトで生成される URL は `content` ディレクトリ内のファイルパスに合致するものとなります。
たとえば以下のとおりです。
@z

@x
```text
content/posts/post-1.md → https://example.org/posts/post-1/
```
@y
```text
content/posts/post-1.md → https://example.org/posts/post-1/
```
@z

@x
You can change the structure and appearance of URLs with front matter values and site configuration options.
@y
You can change the structure and appearance of URLs with front matter values and site configuration options.
@z

@x
## Front matter
@y
## Front matter {#front-matter}
@z

@x
### `slug`
@y
### `slug`
@z

@x
Set the `slug` in front matter to override the last segment of the path. The `slug` value does not affect section pages.
@y
Set the `slug` in front matter to override the last segment of the path. The `slug` value does not affect section pages.
@z

@x
{{< code-toggle file=content/posts/post-1.md fm=true >}}
title = 'My First Post'
slug = 'my-first-post'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/posts/post-1.md fm=true >}}
title = 'My First Post'
slug = 'my-first-post'
{{< /code-toggle >}}
@z

@x
The resulting URL will be:
@y
The resulting URL will be:
@z

@x
```text
https://example.org/posts/my-first-post/
```
@y
```text
https://example.org/posts/my-first-post/
```
@z

@x
### `url`
@y
### `url`
@z

@x
Set the `url` in front matter to override the entire path. Use this with either regular pages or section pages.
@y
Set the `url` in front matter to override the entire path. Use this with either regular pages or section pages.
@z

@x
With this front matter:
@y
With this front matter:
@z

@x
{{< code-toggle file=content/posts/post-1.md fm=true >}}
title = 'My First Article'
url = '/articles/my-first-article'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/posts/post-1.md fm=true >}}
title = 'My First Article'
url = '/articles/my-first-article'
{{< /code-toggle >}}
@z

@x
The resulting URL will be:
@y
The resulting URL will be:
@z

@x
```text
https://example.org/articles/my-first-article/
```
@y
```text
https://example.org/articles/my-first-article/
```
@z

@x
If you include a file extension:
@y
If you include a file extension:
@z

@x
{{< code-toggle file=content/posts/post-1.md fm=true >}}
title = 'My First Article'
url = '/articles/my-first-article.html'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/posts/post-1.md fm=true >}}
title = 'My First Article'
url = '/articles/my-first-article.html'
{{< /code-toggle >}}
@z

@x
The resulting URL will be:
@y
The resulting URL will be:
@z

@x
```text
https://example.org/articles/my-first-article.html
```
@y
```text
https://example.org/articles/my-first-article.html
```
@z

@x
In a monolingual site, a `url` value with or without a leading slash is relative to the `baseURL`.
@y
In a monolingual site, a `url` value with or without a leading slash is relative to the `baseURL`.
@z

@x
In a multilingual site:
@y
In a multilingual site:
@z

@x
- A `url` value with a leading slash is relative to the `baseURL`.
- A `url` value without a leading slash is relative to the `baseURL` plus the language prefix.
@y
- A `url` value with a leading slash is relative to the `baseURL`.
- A `url` value without a leading slash is relative to the `baseURL` plus the language prefix.
@z

@x
Site type|Front matter `url`|Resulting URL
:--|:--|:--
monolingual|`/about`|`https://example.org/about/`
monolingual|`about`|`https://example.org/about/`
multilingual|`/about`|`https://example.org/about/`
multilingual|`about`|`https://example.org/de/about/`
@y
Site type|Front matter `url`|Resulting URL
:--|:--|:--
monolingual|`/about`|`https://example.org/about/`
monolingual|`about`|`https://example.org/about/`
multilingual|`/about`|`https://example.org/about/`
multilingual|`about`|`https://example.org/de/about/`
@z

@x
If you set both `slug` and `url` in front matter, the `url` value takes precedence.
@y
If you set both `slug` and `url` in front matter, the `url` value takes precedence.
@z

@x
## Site configuration
@y
## サイト設定 {#site-configuration}
@z

@x
### Permalinks
@y
### Permalinks
@z

@x
In your site configuration, define a URL pattern for each top-level section. Each URL pattern can target a given language and/or [page kind].
@y
サイト設定においては
In your site configuration, define a URL pattern for each top-level section. Each URL pattern can target a given language and/or [page kind].
@z

@x
Front matter `url` values override the URL patterns defined in the `permalinks` section of your site configuration.
@y
Front matter `url` values override the URL patterns defined in the `permalinks` section of your site configuration.
@z

@x
[page kind]: /templates/section-templates/#page-kinds
@y
[page kind]: /templates/section-templates/#page-kinds
@z

@x
#### Monolingual examples {#permalinks-monolingual-examples}
@y
#### Monolingual examples {#permalinks-monolingual-examples}
@z

@x
With this content structure:
@y
With this content structure:
@z

@x
```text
content/
├── posts/
│   ├── bash-in-slow-motion.md
│   └── tls-in-a-nutshell.md
├── tutorials/
│   ├── git-for-beginners.md
│   └── javascript-bundling-with-hugo.md
└── _index.md
```
@y
```text
content/
├── posts/
│   ├── bash-in-slow-motion.md
│   └── tls-in-a-nutshell.md
├── tutorials/
│   ├── git-for-beginners.md
│   └── javascript-bundling-with-hugo.md
└── _index.md
```
@z

@x
Render tutorials under "training", and render the posts under "articles" with a date-base hierarchy:
@y
Render tutorials under "training", and render the posts under "articles" with a date-base hierarchy:
@z

@x
{{< code-toggle file=hugo >}}
[permalinks.page]
posts = '/articles/:year/:month/:slug/'
tutorials = '/training/:slug/'
[permalinks.section]
posts = '/articles/'
tutorials = '/training/'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[permalinks.page]
posts = '/articles/:year/:month/:slug/'
tutorials = '/training/:slug/'
[permalinks.section]
posts = '/articles/'
tutorials = '/training/'
{{< /code-toggle >}}
@z

@x
The structure of the published site will be:
@y
The structure of the published site will be:
@z

@x
```text
public/
├── articles/
│   ├── 2023/
│   │   ├── 04/
│   │   │   └── bash-in-slow-motion/
│   │   │       └── index.html
│   │   └── 06/
│   │       └── tls-in-a-nutshell/
│   │           └── index.html
│   └── index.html
├── training/
│   ├── git-for-beginners/
│   │   └── index.html
│   ├── javascript-bundling-with-hugo/
│   │   └── index.html
│   └── index.html
└── index.html
```
@y
```text
public/
├── articles/
│   ├── 2023/
│   │   ├── 04/
│   │   │   └── bash-in-slow-motion/
│   │   │       └── index.html
│   │   └── 06/
│   │       └── tls-in-a-nutshell/
│   │           └── index.html
│   └── index.html
├── training/
│   ├── git-for-beginners/
│   │   └── index.html
│   ├── javascript-bundling-with-hugo/
│   │   └── index.html
│   └── index.html
└── index.html
```
@z

@x
To create a date-based hierarchy for regular pages in the content root:
@y
To create a date-based hierarchy for regular pages in the content root:
@z

@x
{{< code-toggle file=hugo >}}
[permalinks.page]
"/" = "/:year/:month/:slug/"
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[permalinks.page]
"/" = "/:year/:month/:slug/"
{{< /code-toggle >}}
@z

@x
Use the same approach with taxonomy terms. For example, to omit the taxonomy segment of the URL:
@y
Use the same approach with taxonomy terms. For example, to omit the taxonomy segment of the URL:
@z

@x
{{< code-toggle file=hugo >}}
[permalinks.term]
'tags' = '/:slug/'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[permalinks.term]
'tags' = '/:slug/'
{{< /code-toggle >}}
@z

@x
#### Multilingual example {#permalinks-multilingual-example}
@y
#### Multilingual example {#permalinks-multilingual-example}
@z

@x
Use the `permalinks` configuration as a component of your localization strategy.
@y
Use the `permalinks` configuration as a component of your localization strategy.
@z

@x
With this content structure:
@y
With this content structure:
@z

@x
```text
content/
├── en/
│   ├── books/
│   │   ├── les-miserables.md
│   │   └── the-hunchback-of-notre-dame.md
│   └── _index.md
└── es/
    ├── books/
    │   ├── les-miserables.md
    │   └── the-hunchback-of-notre-dame.md
    └── _index.md
```
@y
```text
content/
├── en/
│   ├── books/
│   │   ├── les-miserables.md
│   │   └── the-hunchback-of-notre-dame.md
│   └── _index.md
└── es/
    ├── books/
    │   ├── les-miserables.md
    │   └── the-hunchback-of-notre-dame.md
    └── _index.md
```
@z

@x
And this site configuration:
@y
And this site configuration:
@z

@x
{{< code-toggle file=hugo >}}
defaultContentLanguage = 'en'
defaultContentLanguageInSubdir = true
@y
{{< code-toggle file=hugo >}}
defaultContentLanguage = 'en'
defaultContentLanguageInSubdir = true
@z

@x
[languages.en]
contentDir = 'content/en'
languageCode = 'en-US'
languageDirection = 'ltr'
languageName = 'English'
weight = 1
@y
[languages.en]
contentDir = 'content/en'
languageCode = 'en-US'
languageDirection = 'ltr'
languageName = 'English'
weight = 1
@z

@x
[languages.en.permalinks.page]
books = "/books/:slug/"
@y
[languages.en.permalinks.page]
books = "/books/:slug/"
@z

@x
[languages.en.permalinks.section]
books = "/books/"
@y
[languages.en.permalinks.section]
books = "/books/"
@z

@x
[languages.es]
contentDir = 'content/es'
languageCode = 'es-ES'
languageDirection = 'ltr'
languageName = 'Español'
weight = 2
@y
[languages.es]
contentDir = 'content/es'
languageCode = 'es-ES'
languageDirection = 'ltr'
languageName = 'Español'
weight = 2
@z

@x
[languages.es.permalinks.page]
books = "/libros/:slug/"
@y
[languages.es.permalinks.page]
books = "/libros/:slug/"
@z

@x
[languages.es.permalinks.section]
books = "/libros/"
{{< /code-toggle >}}
@y
[languages.es.permalinks.section]
books = "/libros/"
{{< /code-toggle >}}
@z

@x
The structure of the published site will be:
@y
The structure of the published site will be:
@z

@x
```text
public/
├── en/
│   ├── books/
│   │   ├── les-miserables/
│   │   │   └── index.html
│   │   ├── the-hunchback-of-notre-dame/
│   │   │   └── index.html
│   │   └── index.html
│   └── index.html
├── es/
│   ├── libros/
│   │   ├── les-miserables/
│   │   │   └── index.html
│   │   ├── the-hunchback-of-notre-dame/
│   │   │   └── index.html
│   │   └── index.html
│   └── index.html
└── index.html
````
@y
```text
public/
├── en/
│   ├── books/
│   │   ├── les-miserables/
│   │   │   └── index.html
│   │   ├── the-hunchback-of-notre-dame/
│   │   │   └── index.html
│   │   └── index.html
│   └── index.html
├── es/
│   ├── libros/
│   │   ├── les-miserables/
│   │   │   └── index.html
│   │   ├── the-hunchback-of-notre-dame/
│   │   │   └── index.html
│   │   └── index.html
│   └── index.html
└── index.html
````
@z

@x
#### Tokens
@y
#### Tokens
@z

@x
Use these tokens when defining the URL pattern. The `date` field in front matter determines the value of time-related tokens.
@y
Use these tokens when defining the URL pattern. The `date` field in front matter determines the value of time-related tokens.
@z

@x
`:year`
: the 4-digit year
@y
`:year`
: the 4-digit year
@z

@x
`:month`
: the 2-digit month
@y
`:month`
: the 2-digit month
@z

@x
`:monthname`
: the name of the month
@y
`:monthname`
: the name of the month
@z

@x
`:day`
: the 2-digit day
@y
`:day`
: the 2-digit day
@z

@x
`:weekday`
: the 1-digit day of the week (Sunday = 0)
@y
`:weekday`
: the 1-digit day of the week (Sunday = 0)
@z

@x
`:weekdayname`
: the name of the day of the week
@y
`:weekdayname`
: the name of the day of the week
@z

@x
`:yearday`
: the 1- to 3-digit day of the year
@y
`:yearday`
: the 1- to 3-digit day of the year
@z

@x
`:section`
: the content's section
@y
`:section`
: the content's section
@z

@x
`:sections`
: the content's sections hierarchy. You can use a selection of the sections using _slice syntax_: `:sections[1:]` includes all but the first, `:sections[:last]` includes all but the last, `:sections[last]` includes only the last, `:sections[1:2]` includes section 2 and 3. Note that this slice access will not throw any out-of-bounds errors, so you don't have to be exact.
@y
`:sections`
: the content's sections hierarchy. You can use a selection of the sections using _slice syntax_: `:sections[1:]` includes all but the first, `:sections[:last]` includes all but the last, `:sections[last]` includes only the last, `:sections[1:2]` includes section 2 and 3. Note that this slice access will not throw any out-of-bounds errors, so you don't have to be exact.
@z

@x
`:title`
: the content's title
@y
`:title`
: the content's title
@z

@x
`:slug`
: the content's slug (or title if no slug is provided in the front matter)
@y
`:slug`
: the content's slug (or title if no slug is provided in the front matter)
@z

@x
`:slugorfilename`
: the content's slug (or file name if no slug is provided in the front matter)
@y
`:slugorfilename`
: the content's slug (or file name if no slug is provided in the front matter)
@z

@x
`:filename`
: the content's file name (without extension)
@y
`:filename`
: the content's file name (without extension)
@z

@x
For time-related values, you can also use the layout string components defined in Go's [time package]. For example:
@y
For time-related values, you can also use the layout string components defined in Go's [time package]. For example:
@z

@x
[time package]: https://pkg.go.dev/time#pkg-constants
@y
[time package]: https://pkg.go.dev/time#pkg-constants
@z

@x
{{< code-toggle file=hugo >}}
permalinks:
  posts: /:06/:1/:2/:title/
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
permalinks:
  posts: /:06/:1/:2/:title/
{{< /code-toggle >}}
@z

@x
### Appearance
@y
### Appearance
@z

@x
The appearance of a URL is either ugly or pretty.
@y
The appearance of a URL is either ugly or pretty.
@z

@x
Type|Path|URL
:--|:--|:--
ugly|content/about.md|`https://example.org/about.html`
pretty|content/about.md|`https://example.org/about/`
@y
Type|Path|URL
:--|:--|:--
ugly|content/about.md|`https://example.org/about.html`
pretty|content/about.md|`https://example.org/about/`
@z

@x
By default, Hugo produces pretty URLs. To generate ugly URLs, change your site configuration:
@y
By default, Hugo produces pretty URLs. To generate ugly URLs, change your site configuration:
@z

@x
{{< code-toggle file=hugo >}}
uglyURLs = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
uglyURLs = true
{{< /code-toggle >}}
@z

@x
### Post-processing
@y
### Post-processing
@z

@x
Hugo provides two mutually exclusive configuration options to alter URLs _after_ it renders a page.
@y
Hugo provides two mutually exclusive configuration options to alter URLs _after_ it renders a page.
@z

@x
#### Canonical URLs
@y
#### Canonical URLs
@z

@x
{{% note %}}
This is a legacy configuration option, superseded by template functions and Markdown render hooks, and will likely be [removed in a future release].

[removed in a future release]: https://github.com/gohugoio/hugo/issues/4733
{{% /note %}}
@y
{{% note %}}
This is a legacy configuration option, superseded by template functions and Markdown render hooks, and will likely be [removed in a future release].

[removed in a future release]: https://github.com/gohugoio/hugo/issues/4733
{{% /note %}}
@z

@x
If enabled, Hugo performs a search and replace _after_ it renders the page. It searches for site-relative URLs (those with a leading slash) associated with `action`, `href`, `src`, `srcset`, and `url` attributes. It then prepends the `baseURL` to create absolute URLs.
@y
If enabled, Hugo performs a search and replace _after_ it renders the page. It searches for site-relative URLs (those with a leading slash) associated with `action`, `href`, `src`, `srcset`, and `url` attributes. It then prepends the `baseURL` to create absolute URLs.
@z

@x
```html
<a href="/about"> → <a href="https://example.org/about/">
<img src="/a.gif"> → <img src="https://example.org/a.gif">
```
@y
```html
<a href="/about"> → <a href="https://example.org/about/">
<img src="/a.gif"> → <img src="https://example.org/a.gif">
```
@z

@x
This is an imperfect, brute force approach that can affect content as well as HTML attributes. As noted above, this is a legacy configuration option that will likely be removed in a future release.
@y
This is an imperfect, brute force approach that can affect content as well as HTML attributes. As noted above, this is a legacy configuration option that will likely be removed in a future release.
@z

@x
To enable:
@y
To enable:
@z

@x
{{< code-toggle file=hugo >}}
canonifyURLs = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
canonifyURLs = true
{{< /code-toggle >}}
@z

@x
#### Relative URLs
@y
#### Relative URLs
@z

@x
{{% note %}}
Do not enable this option unless you are creating a serverless site, navigable via the file system.
{{% /note %}}
@y
{{% note %}}
Do not enable this option unless you are creating a serverless site, navigable via the file system.
{{% /note %}}
@z

@x
If enabled, Hugo performs a search and replace _after_ it renders the page. It searches for site-relative URLs (those with a leading slash) associated with `action`, `href`, `src`, `srcset`, and `url` attributes. It then transforms the URL to be relative to the current page.
@y
If enabled, Hugo performs a search and replace _after_ it renders the page. It searches for site-relative URLs (those with a leading slash) associated with `action`, `href`, `src`, `srcset`, and `url` attributes. It then transforms the URL to be relative to the current page.
@z

@x
For example, when rendering `content/posts/post-1`:
@y
For example, when rendering `content/posts/post-1`:
@z

@x
```html
<a href="/about"> → <a href="../../about">
<img src="/a.gif"> → <img src="../../a.gif">
```
@y
```html
<a href="/about"> → <a href="../../about">
<img src="/a.gif"> → <img src="../../a.gif">
```
@z

@x
This is an imperfect, brute force approach that can affect content as well as HTML attributes. As noted above, do not enable this option unless you are creating a serverless site.
@y
This is an imperfect, brute force approach that can affect content as well as HTML attributes. As noted above, do not enable this option unless you are creating a serverless site.
@z

@x
To enable:
@y
To enable:
@z

@x
{{< code-toggle file=hugo >}}
relativeURLs = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
relativeURLs = true
{{< /code-toggle >}}
@z

@x
## Aliases
@y
## Aliases
@z

@x
Create redirects from old URLs to new URLs with aliases:
@y
Create redirects from old URLs to new URLs with aliases:
@z

@x
- An alias with a leading slash is relative to the `baseURL`
- An alias without a leading slash is relative to the current directory
@y
- An alias with a leading slash is relative to the `baseURL`
- An alias without a leading slash is relative to the current directory
@z

@x
### Examples {#alias-examples}
@y
### Examples {#alias-examples}
@z

@x
Change the file name of an existing page, and create an alias from the previous URL to the new URL:
@y
Change the file name of an existing page, and create an alias from the previous URL to the new URL:
@z

@x
{{< code-toggle file=content/posts/new-file-name.md >}}
aliases = ['/posts/previous-file-name']
{{< /code-toggle >}}
@y
{{< code-toggle file=content/posts/new-file-name.md >}}
aliases = ['/posts/previous-file-name']
{{< /code-toggle >}}
@z

@x
Each of these directory-relative aliases is equivalent to the site-relative alias above:
@y
Each of these directory-relative aliases is equivalent to the site-relative alias above:
@z

@x
- `previous-file-name`
- `./previous-file-name`
- `../posts/previous-file-name`
@y
- `previous-file-name`
- `./previous-file-name`
- `../posts/previous-file-name`
@z

@x
You can create more than one alias to the current page:
@y
You can create more than one alias to the current page:
@z

@x
{{< code-toggle file=content/posts/new-file-name.md >}}
aliases = ['previous-file-name','original-file-name']
{{< /code-toggle >}}
@y
{{< code-toggle file=content/posts/new-file-name.md >}}
aliases = ['previous-file-name','original-file-name']
{{< /code-toggle >}}
@z

@x
In a multilingual site, use a directory-relative alias, or include the language prefix with a site-relative alias:
@y
In a multilingual site, use a directory-relative alias, or include the language prefix with a site-relative alias:
@z

@x
{{< code-toggle file=content/posts/new-file-name.de.md >}}
aliases = ['/de/posts/previous-file-name']
{{< /code-toggle >}}
@y
{{< code-toggle file=content/posts/new-file-name.de.md >}}
aliases = ['/de/posts/previous-file-name']
{{< /code-toggle >}}
@z

@x
### How aliases work
@y
### How aliases work
@z

@x
Using the first example above, Hugo generates the following site structure:
@y
Using the first example above, Hugo generates the following site structure:
@z

@x
```text
public/
├── posts/
│   ├── new-file-name/
│   │   └── index.html
│   ├── previous-file-name/
│   │   └── index.html
│   └── index.html
└── index.html
```
@y
```text
public/
├── posts/
│   ├── new-file-name/
│   │   └── index.html
│   ├── previous-file-name/
│   │   └── index.html
│   └── index.html
└── index.html
```
@z

@x
The alias from the previous URL to the new URL is a client-side redirect:
@y
The alias from the previous URL to the new URL is a client-side redirect:
@z

@x
{{< code file=posts/previous-file-name/index.html >}}
<!DOCTYPE html>
<html lang="en-us">
  <head>
    <title>https://example.org/posts/new-file-name/</title>
    <link rel="canonical" href="https://example.org/posts/new-file-name/">
    <meta name="robots" content="noindex">
    <meta charset="utf-8">
    <meta http-equiv="refresh" content="0; url=https://example.org/posts/new-file-name/">
  </head>
</html>
{{< /code >}}
@y
{{< code file=posts/previous-file-name/index.html >}}
<!DOCTYPE html>
<html lang="en-us">
  <head>
    <title>https://example.org/posts/new-file-name/</title>
    <link rel="canonical" href="https://example.org/posts/new-file-name/">
    <meta name="robots" content="noindex">
    <meta charset="utf-8">
    <meta http-equiv="refresh" content="0; url=https://example.org/posts/new-file-name/">
  </head>
</html>
{{< /code >}}
@z

@x
Collectively, the elements in the `head` section:
@y
Collectively, the elements in the `head` section:
@z

@x
- Tell search engines that the new URL is canonical
- Tell search engines not to index the previous URL
- Tell the browser to redirect to the new URL
@y
- Tell search engines that the new URL is canonical
- Tell search engines not to index the previous URL
- Tell the browser to redirect to the new URL
@z

@x
Hugo renders alias files before rendering pages. A new page with the previous file name will overwrite the alias, as expected.
@y
Hugo renders alias files before rendering pages. A new page with the previous file name will overwrite the alias, as expected.
@z

@x
### Customize
@y
### Customize
@z

@x
To override Hugo's embedded `alias` template, copy the [source code] to a file with the same name in the layouts directory. The template receives the following context:
@y
To override Hugo's embedded `alias` template, copy the [source code] to a file with the same name in the layouts directory. The template receives the following context:
@z

@x
Permalink
: the link to the page being aliased
@y
Permalink
: the link to the page being aliased
@z

@x
Page
: the Page data for the page being aliased
@y
Page
: the Page data for the page being aliased
@z
