%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Logging
description: Enable logging to inspect events while building your site.
categories: [troubleshooting]
keywords: []
menu:
  docs:
    parent: troubleshooting
    weight: 30
weight: 30
toc: true
---
@y
---
title: Logging
description: Enable logging to inspect events while building your site.
categories: [troubleshooting]
keywords: []
menu:
  docs:
    parent: troubleshooting
    weight: 30
weight: 30
toc: true
---
@z

@x
## Command line
@y
## Command line
@z

@x
Enable console logging with the `--logLevel` command line flag.
@y
Enable console logging with the `--logLevel` command line flag.
@z

@x
Hugo has four logging levels:
@y
Hugo has four logging levels:
@z

@x
error
: Display error messages only.
@y
error
: Display error messages only.
@z

@x
```sh
hugo --logLevel error
```
@y
```sh
hugo --logLevel error
```
@z

@x
warn
: Display warning and error messages.
@y
warn
: Display warning and error messages.
@z

@x
```sh
hugo --logLevel warn
```
@y
```sh
hugo --logLevel warn
```
@z

@x
info
: Display information, warning, and error messages.
@y
info
: Display information, warning, and error messages.
@z

@x
```sh
hugo --logLevel info
```
@y
```sh
hugo --logLevel info
```
@z

@x
debug
: Display debug, information, warning, and error messages.
@y
debug
: Display debug, information, warning, and error messages.
@z

@x
```sh
hugo --logLevel debug
```
@y
```sh
hugo --logLevel debug
```
@z

@x
{{% note %}}
If you do not specify a logging level with the `--logLevel` flag, warnings and errors are always displayed.
{{% /note %}}
@y
{{% note %}}
If you do not specify a logging level with the `--logLevel` flag, warnings and errors are always displayed.
{{% /note %}}
@z

@x
## Template functions
@y
## Template functions
@z

@x
You can also use template functions to print warnings or errors to the console. These functions are typically used to report data validation errors, missing files, etc.
@y
You can also use template functions to print warnings or errors to the console. These functions are typically used to report data validation errors, missing files, etc.
@z

@x
{{< list-pages-in-section path=/functions/fmt filter=functions_fmt_logging filterType=include >}}
@y
{{< list-pages-in-section path=/functions/fmt filter=functions_fmt_logging filterType=include >}}
@z
