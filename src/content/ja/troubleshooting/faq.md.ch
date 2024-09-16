%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Frequently asked questions
linkTitle: FAQs
description: These questions are frequently asked by new users.
categories: [troubleshooting]
keywords: [faq]
@y
title: よくたずねられる質問
linkTitle: FAQs
description: These questions are frequently asked by new users.
categories: [troubleshooting]
keywords: [faq]
@z

@x
Hugo’s [forum] is an active community of users and developers who answer questions, share knowledge, and provide examples. A quick search of over 20,000 topics will often answer your question. Please be sure to read about [requesting help] before asking your first question.
@y
Hugo’s [forum] is an active community of users and developers who answer questions, share knowledge, and provide examples. A quick search of over 20,000 topics will often answer your question. Please be sure to read about [requesting help] before asking your first question.
@z

@x
These are just a few of the questions most frequently asked by new users.
@y
These are just a few of the questions most frequently asked by new users.
@z

@x
###### An error message indicates that a feature is not available. Why?
@y
###### An error message indicates that a feature is not available. Why?
@z

@x
Hugo is available in two editions: standard and extended. With the extended edition you can (a) encode to the WebP format when processing images, and (b) transpile Sass to CSS using the embedded LibSass transpiler. The extended edition is not required to use the Dart Sass transpiler.
@y
Hugo is available in two editions: standard and extended. With the extended edition you can (a) encode to the WebP format when processing images, and (b) transpile Sass to CSS using the embedded LibSass transpiler. The extended edition is not required to use the Dart Sass transpiler.
@z

@x
When you attempt to perform either of the operations above with the standard edition, Hugo throws this error:
@y
When you attempt to perform either of the operations above with the standard edition, Hugo throws this error:
@z

@x
```go-html-template
Error: this feature is not available in your current Hugo version
```
@y
```go-html-template
Error: this feature is not available in your current Hugo version
```
@z

@x
To resolve, uninstall the standard edition, then install the extended edition. See the [installation] section for details.
@y
To resolve, uninstall the standard edition, then install the extended edition. See the [installation] section for details.
@z

@x
###### Why do I see "Page Not Found" when visiting the home page?
@y
###### Why do I see "Page Not Found" when visiting the home page?
@z

@x
In the content/_index.md file:
@y
In the content/_index.md file:
@z

@x
  - Is `draft` set to `true`?
  - Is the `date` in the future?
  - Is the `publishDate` in the future?
  - Is the `expiryDate` in the past?
@y
  - Is `draft` set to `true`?
  - Is the `date` in the future?
  - Is the `publishDate` in the future?
  - Is the `expiryDate` in the past?
@z

@x
If the answer to any of these questions is yes, either change the field values, or use one of these command line flags: `--buildDrafts`, `--buildFuture`, or `--buildExpired`.
@y
If the answer to any of these questions is yes, either change the field values, or use one of these command line flags: `--buildDrafts`, `--buildFuture`, or `--buildExpired`.
@z

@x
###### Why is a given page not published?
@y
###### Why is a given page not published?
@z

@x
In the content/section/page.md file, or in the content/section/page/index.md file:
@y
In the content/section/page.md file, or in the content/section/page/index.md file:
@z

@x
  - Is `draft` set to `true`?
  - Is the `date` in the future?
  - Is the `publishDate` in the future?
  - Is the `expiryDate` in the past?
@y
  - Is `draft` set to `true`?
  - Is the `date` in the future?
  - Is the `publishDate` in the future?
  - Is the `expiryDate` in the past?
@z

@x
If the answer to any of these questions is yes, either change the field values, or use one of these command line flags: `--buildDrafts`, `--buildFuture`, or `--buildExpired`.
@y
If the answer to any of these questions is yes, either change the field values, or use one of these command line flags: `--buildDrafts`, `--buildFuture`, or `--buildExpired`.
@z

@x
###### Why can't I see any of a page's descendants?
@y
###### Why can't I see any of a page's descendants?
@z

@x
You may have an index.md file instead of an _index.md file. See&nbsp;[details](/content-management/page-bundles/).
@y
You may have an index.md file instead of an _index.md file. See&nbsp;[details](/content-management/page-bundles/).
@z

@x
###### What is the difference between an index.md file and an _index.md file?
@y
###### What is the difference between an index.md file and an _index.md file?
@z

@x
A directory with an index.md file is a [leaf bundle]. A directory with an _index.md file is a [branch bundle]. See&nbsp;[details](/content-management/page-bundles/).
@y
A directory with an index.md file is a [leaf bundle]. A directory with an _index.md file is a [branch bundle]. See&nbsp;[details](/content-management/page-bundles/).
@z

@x
[branch bundle]: /getting-started/glossary/#branch-bundle
[leaf bundle]: /getting-started/glossary/#leaf-bundle
@y
[branch bundle]: /getting-started/glossary/#branch-bundle
[leaf bundle]: /getting-started/glossary/#leaf-bundle
@z

@x
###### Why is my partial template not rendered as expected? {#foo}
@y
###### Why is my partial template not rendered as expected? {#foo}
@z

@x
You may have neglected to pass the required [context] when calling the partial. For example:
@y
You may have neglected to pass the required [context] when calling the partial. For example:
@z

@x
```go-html-template
{{/* incorrect */}}
{{ partial "_internal/pagination.html" }}
@y
```go-html-template
{{/* incorrect */}}
{{ partial "_internal/pagination.html" }}
@z

@x
{{/* correct */}}
{{ partial "_internal/pagination.html" . }}
```
@y
{{/* correct */}}
{{ partial "_internal/pagination.html" . }}
```
@z

@x
###### In a template, what's the difference between `:=` and `=` when assigning values to variables?
@y
###### In a template, what's the difference between `:=` and `=` when assigning values to variables?
@z

@x
Use `:=` to initialize a variable, and use `=` to assign a value to a variable that has been previously initialized. See&nbsp;[details](https://pkg.go.dev/text/template#hdr-Variables).
@y
Use `:=` to initialize a variable, and use `=` to assign a value to a variable that has been previously initialized. See&nbsp;[details](https://pkg.go.dev/text/template#hdr-Variables).
@z

@x
###### When I paginate a list page, why is the page collection not filtered as specified?
@y
###### When I paginate a list page, why is the page collection not filtered as specified?
@z

@x
You are probably invoking the [`Paginate`] or [`Paginator`] method more than once on the same page. See&nbsp;[details](/templates/pagination/).
@y
You are probably invoking the [`Paginate`] or [`Paginator`] method more than once on the same page. See&nbsp;[details](/templates/pagination/).
@z

@x
###### Why are there two ways to call a shortcode?
@y
###### Why are there two ways to call a shortcode?
@z

@x
Use the `{{%/* shortcode */%}}` notation if the shortcode template, or the content between the opening and closing shortcode tags, contains Markdown. Otherwise use the\
`{{</* shortcode */>}}` notation. See&nbsp;[details](/content-management/shortcodes/).
@y
Use the `{{%/* shortcode */%}}` notation if the shortcode template, or the content between the opening and closing shortcode tags, contains Markdown. Otherwise use the\
`{{</* shortcode */>}}` notation. See&nbsp;[details](/content-management/shortcodes/).
@z

@x
###### Can I use environment variables to control configuration?
@y
###### Can I use environment variables to control configuration?
@z

@x
Yes. See&nbsp;[details](/getting-started/configuration/#configure-with-environment-variables).
@y
Yes. See&nbsp;[details](/getting-started/configuration/#configure-with-environment-variables).
@z

@x
###### Why am I seeing inconsistent output from one build to the next?
@y
###### Why am I seeing inconsistent output from one build to the next?
@z

@x
The most common causes are page collisions (publishing two pages to the same path) and the effects of concurrency. Use the `--printPathWarnings` command line flag to check for page collisions, and create a topic on the [forum] if you suspect concurrency problems.
@y
The most common causes are page collisions (publishing two pages to the same path) and the effects of concurrency. Use the `--printPathWarnings` command line flag to check for page collisions, and create a topic on the [forum] if you suspect concurrency problems.
@z

@x
###### Why isn't Hugo's development server detecting file changes?
@y
###### Why isn't Hugo's development server detecting file changes?
@z

@x
In its default configuration, Hugo's file watcher may not be able detect file changes when:
@y
In its default configuration, Hugo's file watcher may not be able detect file changes when:
@z

@x
- Running Hugo within Windows Subsystem for Linux (WSL/WSL2) with project files on a Windows partition
- Running Hugo locally with project files on a removable drive
- Running Hugo locally with project files on a storage server accessed via the NFS, SMB, or CIFS protocols
@y
- Running Hugo within Windows Subsystem for Linux (WSL/WSL2) with project files on a Windows partition
- Running Hugo locally with project files on a removable drive
- Running Hugo locally with project files on a storage server accessed via the NFS, SMB, or CIFS protocols
@z

@x
In these cases, instead of monitoring native file system events, use the `--poll` command line flag. For example, to poll the project files every 700 milliseconds, use `--poll 700ms`.
@y
In these cases, instead of monitoring native file system events, use the `--poll` command line flag. For example, to poll the project files every 700 milliseconds, use `--poll 700ms`.
@z

@x
###### Why is my page Scratch or Store missing a value?
@y
###### Why is my page Scratch or Store missing a value?
@z

@x
The [`Scratch`] and [`Store`] methods on a `Page` object allow you to create a [scratch pad] on the given page to store and manipulate data. Values are often set within a shortcode, a partial template called by a shortcode, or by a Markdown render hook. In all three cases, the scratch pad values are not determinate until Hugo renders the page content.
@y
The [`Scratch`] and [`Store`] methods on a `Page` object allow you to create a [scratch pad] on the given page to store and manipulate data. Values are often set within a shortcode, a partial template called by a shortcode, or by a Markdown render hook. In all three cases, the scratch pad values are not determinate until Hugo renders the page content.
@z

@x
[scratch pad]: /getting-started/glossary/#scratch-pad
@y
[scratch pad]: /getting-started/glossary/#scratch-pad
@z

@x
If you need to access a scratch pad value from a parent template, and the parent template has not yet rendered the page content, you can trigger content rendering by assigning the returned value to a [noop] variable:
@y
If you need to access a scratch pad value from a parent template, and the parent template has not yet rendered the page content, you can trigger content rendering by assigning the returned value to a [noop] variable:
@z

@x
[noop]: /getting-started/glossary/#noop
@y
[noop]: /getting-started/glossary/#noop
@z

@x
```go-html-template
{{ $noop := .Content }}
{{ .Store.Get "mykey" }}
```
@y
```go-html-template
{{ $noop := .Content }}
{{ .Store.Get "mykey" }}
```
@z

@x
You can trigger content rendering with other methods as well. See next FAQ.
@y
You can trigger content rendering with other methods as well. See next FAQ.
@z

@x
[`Scratch`]: /methods/page/scratch
[`Store`]: /methods/page/store
@y
[`Scratch`]: /methods/page/scratch
[`Store`]: /methods/page/store
@z

@x
###### Which page methods trigger content rendering?
@y
###### Which page methods trigger content rendering?
@z

@x
The following methods on a `Page` object trigger content rendering: `Content`, `ContentWithoutSummary`, `FuzzyWordCount`, `Len`, `Plain`, `PlainWords`, `ReadingTime`, `Summary`, `Truncated`, and `WordCount`.
@y
The following methods on a `Page` object trigger content rendering: `Content`, `ContentWithoutSummary`, `FuzzyWordCount`, `Len`, `Plain`, `PlainWords`, `ReadingTime`, `Summary`, `Truncated`, and `WordCount`.
@z

@x
{{% note %}}
For other questions please visit the [forum]. A quick search of over 20,000 topics will often answer your question. Please be sure to read about [requesting help] before asking your first question.
@y
{{% note %}}
For other questions please visit the [forum]. A quick search of over 20,000 topics will often answer your question. Please be sure to read about [requesting help] before asking your first question.
@z

@x
[forum]: https://discourse.gohugo.io
[requesting help]: https://discourse.gohugo.io/t/requesting-help/9132
{{% /note %}}
@y
[forum]: https://discourse.gohugo.io
[requesting help]: https://discourse.gohugo.io/t/requesting-help/9132
{{% /note %}}
@z

@x
[`Paginate`]: /methods/page/paginate/
[`Paginator`]: /methods/page/paginator/
[context]: /getting-started/glossary/#context
[forum]: https://discourse.gohugo.io
[installation]: /installation/
[requesting help]: https://discourse.gohugo.io/t/requesting-help/9132
@y
[`Paginate`]: /methods/page/paginate/
[`Paginator`]: /methods/page/paginator/
[context]: /getting-started/glossary/#context
[forum]: https://discourse.gohugo.io
[installation]: /installation/
[requesting help]: https://discourse.gohugo.io/t/requesting-help/9132
@z
