%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Performance
description: Tools and suggestions for evaluating and improving performance.
categories: [troubleshooting]
keywords: []
menu:
  docs:
    parent: troubleshooting
    weight: 60
weight: 60
toc: true
aliases: [/troubleshooting/build-performance/]
---
@y
---
title: Performance
description: Tools and suggestions for evaluating and improving performance.
categories: [troubleshooting]
keywords: []
menu:
  docs:
    parent: troubleshooting
    weight: 60
weight: 60
toc: true
aliases: [/troubleshooting/build-performance/]
---
@z

@x
## Virus scanning
@y
## Virus scanning
@z

@x
Virus scanners are an essential component of system protection, but the performance impact can be severe for applications like Hugo that frequently read and write to disk. For example, with Microsoft Defender Antivirus, build times for some sites may increase by 400% or more.
@y
Virus scanners are an essential component of system protection, but the performance impact can be severe for applications like Hugo that frequently read and write to disk. For example, with Microsoft Defender Antivirus, build times for some sites may increase by 400% or more.
@z

@x
Before building a site, your virus scanner has already evaluated the files in your project directory. Scanning them again while building the site is superfluous. To improve performance, add Hugo's executable to your virus scanner's process exclusion list.
@y
Before building a site, your virus scanner has already evaluated the files in your project directory. Scanning them again while building the site is superfluous. To improve performance, add Hugo's executable to your virus scanner's process exclusion list.
@z

@x
For example, with Microsoft Defender Antivirus:
@y
For example, with Microsoft Defender Antivirus:
@z

@x
**Start**&nbsp;> **Settings**&nbsp;> **Privacy&nbsp;&&nbsp;security**&nbsp;> **Windows&nbsp;Security**&nbsp;> **Open&nbsp;Windows&nbsp;Security**&nbsp;> **Virus&nbsp;&&nbsp;threat&nbsp;protection**&nbsp;> **Manage&nbsp;settings**&nbsp;> **Add&nbsp;or&nbsp;remove&nbsp;exclusions**&nbsp;> **Add&nbsp;an&nbsp;exclusion**&nbsp;> **Process**
@y
**Start**&nbsp;> **Settings**&nbsp;> **Privacy&nbsp;&&nbsp;security**&nbsp;> **Windows&nbsp;Security**&nbsp;> **Open&nbsp;Windows&nbsp;Security**&nbsp;> **Virus&nbsp;&&nbsp;threat&nbsp;protection**&nbsp;> **Manage&nbsp;settings**&nbsp;> **Add&nbsp;or&nbsp;remove&nbsp;exclusions**&nbsp;> **Add&nbsp;an&nbsp;exclusion**&nbsp;> **Process**
@z

@x
Then type `hugo.exe` add press the **Add** button.
@y
Then type `hugo.exe` add press the **Add** button.
@z

@x
{{% note %}}
Virus scanning exclusions are common, but use caution when changing these settings. See the Microsoft Defender Antivirus documentation for details.
@y
{{% note %}}
Virus scanning exclusions are common, but use caution when changing these settings. See the Microsoft Defender Antivirus documentation for details.
@z

@x
[How to add a file type or process exclusion to Windows Security](https://support.microsoft.com/en-us/topic/how-to-add-a-file-type-or-process-exclusion-to-windows-security-e524cbc2-3975-63c2-f9d1-7c2eb5331e53)
{{% /note %}}
@y
[How to add a file type or process exclusion to Windows Security](https://support.microsoft.com/en-us/topic/how-to-add-a-file-type-or-process-exclusion-to-windows-security-e524cbc2-3975-63c2-f9d1-7c2eb5331e53)
{{% /note %}}
@z

@x
Other virus scanners have similar exclusion mechanisms. See their respective documentation.
@y
Other virus scanners have similar exclusion mechanisms. See their respective documentation.
@z

@x
## Template metrics
@y
## Template metrics
@z

@x
Hugo is fast, but inefficient templates impede performance. Enable template metrics to determine which templates take the most time, and to identify caching opportunities:
@y
Hugo is fast, but inefficient templates impede performance. Enable template metrics to determine which templates take the most time, and to identify caching opportunities:
@z

@x
```sh
hugo --templateMetrics --templateMetricsHints
```
@y
```sh
hugo --templateMetrics --templateMetricsHints
```
@z

@x
The result will look something like this:
@y
The result will look something like this:
@z

@x
```text
Template Metrics:
@y
```text
Template Metrics:
@z

@x
     cumulative       average       maximum      cache  percent  cached  total  
       duration      duration      duration  potential   cached   count  count  template
     ----------      --------      --------  ---------  -------  ------  -----  --------
  36.037476822s  135.990478ms  225.765245ms         11        0       0    265  partials/head.html
  35.920040902s  164.018451ms  233.475072ms          0        0       0    219  articles/single.html
  34.163268129s  128.917992ms  224.816751ms         23        0       0    265  partials/head/meta/opengraph.html
   1.041227437s     3.92916ms  186.303376ms         47        0       0    265  partials/head/meta/schema.html
   805.628827ms   27.780304ms  114.678523ms          0        0       0     29  _default/list.html
    624.08354ms   15.221549ms  108.420729ms          8        0       0     41  partials/utilities/render-page-collection.html
   545.968801ms     775.523µs  105.045775ms          0        0       0    704  _default/summary.html
   334.680981ms    1.262947ms  127.412027ms        100        0       0    265  partials/head/js.html
   272.763205ms    2.050851ms   24.371757ms          0        0       0    133  _default/_markup/render-codeblock.html
   230.490038ms    8.865001ms    177.4615ms          0        0       0     26  shortcodes/template.html
   176.921913ms  176.921913ms  176.921913ms          0        0       0      1  examples.tmpl
   163.951469ms   14.904679ms   70.267953ms          0        0       0     11  articles/list.html
    153.07021ms     577.623µs   73.593597ms        100        0       0    265  partials/head/init.html
   150.910984ms  150.910984ms  150.910984ms          0        0       0      1  _default/single.html
   146.785804ms  146.785804ms  146.785804ms          0        0       0      1  _default/contact.html
   115.364617ms  115.364617ms  115.364617ms          0        0       0      1  authors/term.html
    87.392071ms     329.781µs   10.687132ms        100        0       0    265  partials/head/css.html
    86.803122ms   86.803122ms   86.803122ms          0        0       0      1  _default/home.html
```
@y
     cumulative       average       maximum      cache  percent  cached  total  
       duration      duration      duration  potential   cached   count  count  template
     ----------      --------      --------  ---------  -------  ------  -----  --------
  36.037476822s  135.990478ms  225.765245ms         11        0       0    265  partials/head.html
  35.920040902s  164.018451ms  233.475072ms          0        0       0    219  articles/single.html
  34.163268129s  128.917992ms  224.816751ms         23        0       0    265  partials/head/meta/opengraph.html
   1.041227437s     3.92916ms  186.303376ms         47        0       0    265  partials/head/meta/schema.html
   805.628827ms   27.780304ms  114.678523ms          0        0       0     29  _default/list.html
    624.08354ms   15.221549ms  108.420729ms          8        0       0     41  partials/utilities/render-page-collection.html
   545.968801ms     775.523µs  105.045775ms          0        0       0    704  _default/summary.html
   334.680981ms    1.262947ms  127.412027ms        100        0       0    265  partials/head/js.html
   272.763205ms    2.050851ms   24.371757ms          0        0       0    133  _default/_markup/render-codeblock.html
   230.490038ms    8.865001ms    177.4615ms          0        0       0     26  shortcodes/template.html
   176.921913ms  176.921913ms  176.921913ms          0        0       0      1  examples.tmpl
   163.951469ms   14.904679ms   70.267953ms          0        0       0     11  articles/list.html
    153.07021ms     577.623µs   73.593597ms        100        0       0    265  partials/head/init.html
   150.910984ms  150.910984ms  150.910984ms          0        0       0      1  _default/single.html
   146.785804ms  146.785804ms  146.785804ms          0        0       0      1  _default/contact.html
   115.364617ms  115.364617ms  115.364617ms          0        0       0      1  authors/term.html
    87.392071ms     329.781µs   10.687132ms        100        0       0    265  partials/head/css.html
    86.803122ms   86.803122ms   86.803122ms          0        0       0      1  _default/home.html
```
@z

@x
From left to right, the columns represent:
@y
From left to right, the columns represent:
@z

@x
cumulative duration
: The cumulative time spent executing the template.
@y
cumulative duration
: The cumulative time spent executing the template.
@z

@x
average duration
: The average time spent executing the template.
@y
average duration
: The average time spent executing the template.
@z

@x
maximum duration
: The maximum time spent executing the template.
@y
maximum duration
: The maximum time spent executing the template.
@z

@x
cache potential
: Displayed as a percentage, any partial template with a 100% cache potential should be called with the [`partialCached`] function instead of the [`partial`] function. See the [caching](#caching) section below.
@y
cache potential
: Displayed as a percentage, any partial template with a 100% cache potential should be called with the [`partialCached`] function instead of the [`partial`] function. See the [caching](#caching) section below.
@z

@x
percent cached
: The number of times the rendered templated was cached divided by the number of times the template was executed.
@y
percent cached
: The number of times the rendered templated was cached divided by the number of times the template was executed.
@z

@x
cached count
: The number of times the rendered templated was cached.
@y
cached count
: The number of times the rendered templated was cached.
@z

@x
total count
: The number of times the template was executed.
@y
total count
: The number of times the template was executed.
@z

@x
template
: The path to the template, relative to the layouts directory.
@y
template
: The path to the template, relative to the layouts directory.
@z

@x
[`partial`]: /functions/partials/include/
[`partialCached`]: /functions/partials/includecached/
@y
[`partial`]: /functions/partials/include/
[`partialCached`]: /functions/partials/includecached/
@z

@x
{{% note %}}
Hugo builds pages in parallel where multiple pages are generated simultaneously. Because of this parallelism, the sum of "cumulative duration" values is usually greater than the actual time it takes to build a site.
{{% /note %}}
@y
{{% note %}}
Hugo builds pages in parallel where multiple pages are generated simultaneously. Because of this parallelism, the sum of "cumulative duration" values is usually greater than the actual time it takes to build a site.
{{% /note %}}
@z

@x
## Caching
@y
## Caching
@z

@x
Some partial templates such as sidebars or menus are executed many times during a site build. Depending on the content within the partial template and the desired output, the template may benefit from caching to reduce the number of executions. The [`partialCached`] template function provides caching capabilities for partial templates.
@y
Some partial templates such as sidebars or menus are executed many times during a site build. Depending on the content within the partial template and the desired output, the template may benefit from caching to reduce the number of executions. The [`partialCached`] template function provides caching capabilities for partial templates.
@z

@x
{{% note %}}
Note that you can create cached variants of each partial by passing additional parameters to `partialCached` beyond the initial context. See the `partialCached` documentation for more details.
{{% /note %}}
@y
{{% note %}}
Note that you can create cached variants of each partial by passing additional parameters to `partialCached` beyond the initial context. See the `partialCached` documentation for more details.
{{% /note %}}
@z

@x
## Timers
@y
## Timers
@z

@x
Use the `debug.Timer` function to determine execution time for a block of code, useful for finding performance bottle necks in templates. See&nbsp;[details](/functions/debug/timer/).
@y
Use the `debug.Timer` function to determine execution time for a block of code, useful for finding performance bottle necks in templates. See&nbsp;[details](/functions/debug/timer/).
@z
