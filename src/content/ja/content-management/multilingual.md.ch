%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Multilingual mode
linkTitle: Multilingual
description: Hugo supports the creation of websites with multiple languages side by side.
categories: [content management]
keywords: [multilingual,i18n,internationalization]
@y
title: マルチ言語モード
linkTitle: マルチ言語
description: Hugo が作り出すウェブサイトでは、マルチ言語ページの共存をサポートしています。
categories: [content management]
keywords: [multilingual,i18n,internationalization]
@z

@x
You should define the available languages in a `languages` section in your site configuration.
@y
利用する言語は、サイト設定における `languages` セクション内に定義することが必要です。
@z

@x
Also See [Hugo Multilingual Part 1: Content translation].
@y
[Hugo Multilingual Part 1: Content translation] も参照してください。
@z

@x
## Configure languages
@y
## 言語の設定 {#configure-languages}
@z

@x
This is the default language configuration:
@y
以下はデフォルトの言語設定です。
@z

@x
{{< code-toggle config=languages />}}
@y
{{< code-toggle config=languages />}}
@z

@x
This is an example of a site configuration for a multilingual project. Any key not defined in a `languages` object will fall back to the global value in the root of your site configuration.
@y
ここに示すサイト設定例は、マルチ言語対応を行うプロジェクト向けのものです。
`languages` オブジェクト内にキーが定義されていなければ、サイト設定のルートにあるグローバル設定が採用されます。
@z

@x
{{< code-toggle file=hugo >}}
defaultContentLanguage = 'de'
defaultContentLanguageInSubdir = true
@y
{{< code-toggle file=hugo >}}
defaultContentLanguage = 'de'
defaultContentLanguageInSubdir = true
@z

@x
[languages.de]
contentDir = 'content/de'
disabled = false
languageCode = 'de-DE'
languageDirection = 'ltr'
languageName = 'Deutsch'
title = 'Projekt Dokumentation'
weight = 1
@y
[languages.de]
contentDir = 'content/de'
disabled = false
languageCode = 'de-DE'
languageDirection = 'ltr'
languageName = 'Deutsch'
title = 'Projekt Dokumentation'
weight = 1
@z

@x
[languages.de.params]
subtitle = 'Referenz, Tutorials und Erklärungen'
@y
[languages.de.params]
subtitle = 'Referenz, Tutorials und Erklärungen'
@z

@x
[languages.en]
contentDir = 'content/en'
disabled = false
languageCode = 'en-US'
languageDirection = 'ltr'
languageName = 'English'
title = 'Project Documentation'
weight = 2
@y
[languages.en]
contentDir = 'content/en'
disabled = false
languageCode = 'en-US'
languageDirection = 'ltr'
languageName = 'English'
title = 'Project Documentation'
weight = 2
@z

@x
[languages.en.params]
subtitle = 'Reference, Tutorials, and Explanations'
{{< /code-toggle >}}
@y
[languages.en.params]
subtitle = 'Reference, Tutorials, and Explanations'
{{< /code-toggle >}}
@z

@x
defaultContentLanguage
: (`string`) The project's default language tag as defined by [RFC 5646]. Must be lower case, and must match one of the defined language keys. Default is `en`. Examples:
@y
defaultContentLanguage
: (`string`) The project's default language tag as defined by [RFC 5646]. Must be lower case, and must match one of the defined language keys. Default is `en`. Examples:
@z

@x
- `en`
- `en-gb`
- `pt-br`
@y
- `en`
- `en-gb`
- `pt-br`
@z

@x
defaultContentLanguageInSubdir
: (`bool`)  If `true`, Hugo renders the default language site in a subdirectory matching the `defaultContentLanguage`. Default is `false`.
@y
defaultContentLanguageInSubdir
: (`bool`)  If `true`, Hugo renders the default language site in a subdirectory matching the `defaultContentLanguage`. Default is `false`.
@z

@x
contentDir
: (`string`) The content directory for this language. Omit if [translating by file name].
@y
contentDir
: (`string`) The content directory for this language. Omit if [translating by file name].
@z

@x
disabled
: (`bool`) If `true`, Hugo will not render content for this language. Default is `false`.
@y
disabled
: (`bool`) If `true`, Hugo will not render content for this language. Default is `false`.
@z

@x
languageCode
: (`string`) The language tag as defined by [RFC 5646]. This value may include upper and lower case characters, hyphens, or underscores, and does not affect localization or URLs. Hugo uses this value to populate the `language` element in the [built-in RSS template], and the `lang` attribute of the `html` element in the [built-in alias template]. Examples:
@y
languageCode
: (`string`) The language tag as defined by [RFC 5646]. This value may include upper and lower case characters, hyphens, or underscores, and does not affect localization or URLs. Hugo uses this value to populate the `language` element in the [built-in RSS template], and the `lang` attribute of the `html` element in the [built-in alias template]. Examples:
@z

@x
- `en`
- `en-GB`
- `pt-BR`
@y
- `en`
- `en-GB`
- `pt-BR`
@z

@x
languageDirection
: (`string`) The language direction, either left-to-right (`ltr`) or right-to-left (`rtl`). Use this value in your templates with the global [`dir`] HTML attribute.
@y
languageDirection
: (`string`) The language direction, either left-to-right (`ltr`) or right-to-left (`rtl`). Use this value in your templates with the global [`dir`] HTML attribute.
@z

@x
languageName
: (`string`) The language name, typically used when rendering a language switcher.
@y
languageName
: (`string`) The language name, typically used when rendering a language switcher.
@z

@x
title
: (`string`) The language title. When set, this overrides the site title for this language.
@y
title
: (`string`) The language title. When set, this overrides the site title for this language.
@z

@x
weight
: (`int`) The language weight. When set to a non-zero value, this is the primary sort criteria for this language.
@y
weight
: (`int`) The language weight. When set to a non-zero value, this is the primary sort criteria for this language.
@z

@x
[`dir`]: https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/dir
[built-in RSS template]: https://github.com/gohugoio/hugo/blob/master/tpl/tplimpl/embedded/templates/_default/rss.xml
[built-in alias template]: https://github.com/gohugoio/hugo/blob/master/tpl/tplimpl/embedded/templates/alias.html
[RFC 5646]: https://datatracker.ietf.org/doc/html/rfc5646
[translating by file name]: #translation-by-file-name
@y
[`dir`]: https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/dir
[built-in RSS template]: https://github.com/gohugoio/hugo/blob/master/tpl/tplimpl/embedded/templates/_default/rss.xml
[built-in alias template]: https://github.com/gohugoio/hugo/blob/master/tpl/tplimpl/embedded/templates/alias.html
[RFC 5646]: https://datatracker.ietf.org/doc/html/rfc5646
[translating by file name]: #translation-by-file-name
@z

@x
### Changes in Hugo 0.112.0
@y
### Changes in Hugo 0.112.0
@z

@x
{{< new-in 0.112.0 >}}
@y
{{< new-in 0.112.0 >}}
@z

@x
In Hugo `v0.112.0` we consolidated all configuration options, and improved how the languages and their parameters are merged with the main configuration. But while testing this on Hugo sites out there, we received some error reports and reverted some of the changes in favor of deprecation warnings:
@y
In Hugo `v0.112.0` we consolidated all configuration options, and improved how the languages and their parameters are merged with the main configuration. But while testing this on Hugo sites out there, we received some error reports and reverted some of the changes in favor of deprecation warnings:
@z

@x
1. `site.Language.Params` is deprecated. Use `site.Params` directly.
1. Adding custom parameters to the top level language configuration is deprecated. Define custom parameters within `languages.xx.params`. See `color` in the example below.
@y
1. `site.Language.Params` is deprecated. Use `site.Params` directly.
1. Adding custom parameters to the top level language configuration is deprecated. Define custom parameters within `languages.xx.params`. See `color` in the example below.
@z

@x
{{< code-toggle file=hugo >}}
@y
{{< code-toggle file=hugo >}}
@z

@x
title = "My blog"
languageCode = "en-us"
@y
title = "My blog"
languageCode = "en-us"
@z

@x
[languages]
[languages.sv]
title = "Min blogg"
languageCode = "sv"
[languages.en.params]
color = "blue"
{{< /code-toggle >}}
@y
[languages]
[languages.sv]
title = "Min blogg"
languageCode = "sv"
[languages.en.params]
color = "blue"
{{< /code-toggle >}}
@z

@x
In the example above, all settings except `color` below `params` map to predefined configuration options in Hugo for the site and its language, and should be accessed via the documented accessors:
@y
In the example above, all settings except `color` below `params` map to predefined configuration options in Hugo for the site and its language, and should be accessed via the documented accessors:
@z

@x
```go-html-template
{{ site.Title }}
{{ site.LanguageCode }}
{{ site.Params.color }}
```
@y
```go-html-template
{{ site.Title }}
{{ site.LanguageCode }}
{{ site.Params.color }}
```
@z

@x
### Disable a language
@y
### Disable a language
@z

@x
To disable a language within a `languages` object in your site configuration:
@y
To disable a language within a `languages` object in your site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[languages.es]
disabled = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[languages.es]
disabled = true
{{< /code-toggle >}}
@z

@x
To disable one or more languages in the root of your site configuration:
@y
To disable one or more languages in the root of your site configuration:
@z

@x
{{< code-toggle file=hugo >}}
disableLanguages = ["es", "fr"]
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
disableLanguages = ["es", "fr"]
{{< /code-toggle >}}
@z

@x
To disable one or more languages using an environment variable:
@y
To disable one or more languages using an environment variable:
@z

@x
```sh
HUGO_DISABLELANGUAGES="es fr" hugo
```
@y
```sh
HUGO_DISABLELANGUAGES="es fr" hugo
```
@z

@x
Note that you cannot disable the default content language.
@y
Note that you cannot disable the default content language.
@z

@x
### Configure multilingual multihost
@y
### Configure multilingual multihost
@z

@x
Hugo supports multiple languages in a multihost configuration. This means you can configure a `baseURL` per `language`.
@y
Hugo supports multiple languages in a multihost configuration. This means you can configure a `baseURL` per `language`.
@z

@x
{{% note %}}
If a `baseURL` is set on the `language` level, then all languages must have one and they must all be different.
{{% /note %}}
@y
{{% note %}}
If a `baseURL` is set on the `language` level, then all languages must have one and they must all be different.
{{% /note %}}
@z

@x
Example:
@y
Example:
@z

@x
{{< code-toggle file=hugo >}}
[languages]
  [languages.en]
    baseURL = 'https://en.example.org/'
    languageName = 'English'
    title = 'In English'
    weight = 2
  [languages.fr]
    baseURL = 'https://fr.example.org'
    languageName = 'Français'
    title = 'En Français'
    weight = 1
{{</ code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[languages]
  [languages.en]
    baseURL = 'https://en.example.org/'
    languageName = 'English'
    title = 'In English'
    weight = 2
  [languages.fr]
    baseURL = 'https://fr.example.org'
    languageName = 'Français'
    title = 'En Français'
    weight = 1
{{</ code-toggle >}}
@z

@x
With the above, the two sites will be generated into `public` with their own root:
@y
With the above, the two sites will be generated into `public` with their own root:
@z

@x
```text
public
├── en
└── fr
```
@y
```text
public
├── en
└── fr
```
@z

@x
**All URLs (i.e `.Permalink` etc.) will be generated from that root. So the English home page above will have its `.Permalink` set to `https://example.org/`.**
@y
**All URLs (i.e `.Permalink` etc.) will be generated from that root. So the English home page above will have its `.Permalink` set to `https://example.org/`.**
@z

@x
When you run `hugo server` we will start multiple HTTP servers. You will typically see something like this in the console:
@y
When you run `hugo server` we will start multiple HTTP servers. You will typically see something like this in the console:
@z

@x
```text
Web Server is available at 127.0.0.1:1313 (bind address 127.0.0.1) fr
Web Server is available at 127.0.0.1:1314 (bind address 127.0.0.1) en
Press Ctrl+C to stop
```
@y
```text
Web Server is available at 127.0.0.1:1313 (bind address 127.0.0.1) fr
Web Server is available at 127.0.0.1:1314 (bind address 127.0.0.1) en
Press Ctrl+C to stop
```
@z

@x
Live reload and `--navigateToChanged` between the servers work as expected.
@y
Live reload and `--navigateToChanged` between the servers work as expected.
@z

@x
## Translate your content
@y
## Translate your content
@z

@x
There are two ways to manage your content translations. Both ensure each page is assigned a language and is linked to its counterpart translations.
@y
There are two ways to manage your content translations. Both ensure each page is assigned a language and is linked to its counterpart translations.
@z

@x
### Translation by file name
@y
### Translation by file name
@z

@x
Considering the following example:
@y
Considering the following example:
@z

@x
1. `/content/about.en.md`
2. `/content/about.fr.md`
@y
1. `/content/about.en.md`
2. `/content/about.fr.md`
@z

@x
The first file is assigned the English language and is linked to the second.
The second file is assigned the French language and is linked to the first.
@y
The first file is assigned the English language and is linked to the second.
The second file is assigned the French language and is linked to the first.
@z

@x
Their language is __assigned__ according to the language code added as a __suffix to the file name__.
@y
Their language is __assigned__ according to the language code added as a __suffix to the file name__.
@z

@x
By having the same **path and base file name**, the content pieces are __linked__ together as translated pages.
@y
By having the same **path and base file name**, the content pieces are __linked__ together as translated pages.
@z

@x
{{% note %}}
If a file has no language code, it will be assigned the default language.
{{% /note %}}
@y
{{% note %}}
If a file has no language code, it will be assigned the default language.
{{% /note %}}
@z

@x
### Translation by content directory
@y
### Translation by content directory
@z

@x
This system uses different content directories for each of the languages. Each language's content directory is set using the `contentDir` parameter.
@y
This system uses different content directories for each of the languages. Each language's content directory is set using the `contentDir` parameter.
@z

@x
{{< code-toggle file=hugo >}}
languages:
  en:
    weight: 10
    languageName: "English"
    contentDir: "content/english"
  fr:
    weight: 20
    languageName: "Français"
    contentDir: "content/french"
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
languages:
  en:
    weight: 10
    languageName: "English"
    contentDir: "content/english"
  fr:
    weight: 20
    languageName: "Français"
    contentDir: "content/french"
{{< /code-toggle >}}
@z

@x
The value of `contentDir` can be any valid path -- even absolute path references. The only restriction is that the content directories cannot overlap.
@y
The value of `contentDir` can be any valid path -- even absolute path references. The only restriction is that the content directories cannot overlap.
@z

@x
Considering the following example in conjunction with the configuration above:
@y
Considering the following example in conjunction with the configuration above:
@z

@x
1. `/content/english/about.md`
2. `/content/french/about.md`
@y
1. `/content/english/about.md`
2. `/content/french/about.md`
@z

@x
The first file is assigned the English language and is linked to the second.
The second file is assigned the French language and is linked to the first.
@y
The first file is assigned the English language and is linked to the second.
The second file is assigned the French language and is linked to the first.
@z

@x
Their language is __assigned__ according to the content directory they are __placed__ in.
@y
Their language is __assigned__ according to the content directory they are __placed__ in.
@z

@x
By having the same **path and basename** (relative to their language content directory), the content pieces are __linked__ together as translated pages.
@y
By having the same **path and basename** (relative to their language content directory), the content pieces are __linked__ together as translated pages.
@z

@x
### Bypassing default linking
@y
### Bypassing default linking
@z

@x
Any pages sharing the same `translationKey` set in front matter will be linked as translated pages regardless of basename or location.
@y
Any pages sharing the same `translationKey` set in front matter will be linked as translated pages regardless of basename or location.
@z

@x
Considering the following example:
@y
Considering the following example:
@z

@x
1. `/content/about-us.en.md`
2. `/content/om.nn.md`
3. `/content/presentation/a-propos.fr.md`
@y
1. `/content/about-us.en.md`
2. `/content/om.nn.md`
3. `/content/presentation/a-propos.fr.md`
@z

@x
{{< code-toggle >}}
translationKey: "about"
{{< /code-toggle >}}
@y
{{< code-toggle >}}
translationKey: "about"
{{< /code-toggle >}}
@z

@x
By setting the `translationKey` front matter parameter to `about` in all three pages, they will be __linked__ as translated pages.
@y
By setting the `translationKey` front matter parameter to `about` in all three pages, they will be __linked__ as translated pages.
@z

@x
### Localizing permalinks
@y
### Localizing permalinks
@z

@x
Because paths and file names are used to handle linking, all translated pages will share the same URL (apart from the language subdirectory).
@y
Because paths and file names are used to handle linking, all translated pages will share the same URL (apart from the language subdirectory).
@z

@x
To localize URLs:
@y
To localize URLs:
@z

@x
- For a regular page, set either [`slug`] or [`url`] in front matter
- For a section page, set [`url`] in front matter
@y
- For a regular page, set either [`slug`] or [`url`] in front matter
- For a section page, set [`url`] in front matter
@z

@x
[`slug`]: /content-management/urls/#slug
[`url`]: /content-management/urls/#url
@y
[`slug`]: /content-management/urls/#slug
[`url`]: /content-management/urls/#url
@z

@x
For example, a French translation can have its own localized slug.
@y
For example, a French translation can have its own localized slug.
@z

@x
{{< code-toggle file=content/about.fr.md fm=true >}}
title: A Propos
slug: "a-propos"
{{< /code-toggle >}}
@y
{{< code-toggle file=content/about.fr.md fm=true >}}
title: A Propos
slug: "a-propos"
{{< /code-toggle >}}
@z

@x
At render, Hugo will build both `/about/` and `/fr/a-propos/` without affecting the translation link.
@y
At render, Hugo will build both `/about/` and `/fr/a-propos/` without affecting the translation link.
@z

@x
### Page bundles
@y
### Page bundles
@z

@x
To avoid the burden of having to duplicate files, each Page Bundle inherits the resources of its linked translated pages' bundles except for the content files (Markdown files, HTML files etc...).
@y
To avoid the burden of having to duplicate files, each Page Bundle inherits the resources of its linked translated pages' bundles except for the content files (Markdown files, HTML files etc...).
@z

@x
Therefore, from within a template, the page will have access to the files from all linked pages' bundles.
@y
Therefore, from within a template, the page will have access to the files from all linked pages' bundles.
@z

@x
If, across the linked bundles, two or more files share the same basename, only one will be included and chosen as follows:
@y
If, across the linked bundles, two or more files share the same basename, only one will be included and chosen as follows:
@z

@x
* File from current language bundle, if present.
* First file found across bundles by order of language `Weight`.
@y
* File from current language bundle, if present.
* First file found across bundles by order of language `Weight`.
@z

@x
{{% note %}}
Page Bundle resources follow the same language assignment logic as content files, both by file name (`image.jpg`, `image.fr.jpg`) and by directory (`english/about/header.jpg`, `french/about/header.jpg`).
{{%/ note %}}
@y
{{% note %}}
Page Bundle resources follow the same language assignment logic as content files, both by file name (`image.jpg`, `image.fr.jpg`) and by directory (`english/about/header.jpg`, `french/about/header.jpg`).
{{%/ note %}}
@z

@x
## Reference translated content
@y
## Reference translated content
@z

@x
To create a list of links to translated content, use a template similar to the following:
@y
To create a list of links to translated content, use a template similar to the following:
@z

@x
{{< code file=layouts/partials/i18nlist.html >}}
{{ if .IsTranslated }}
<h4>{{ i18n "translations" }}</h4>
<ul>
  {{ range .Translations }}
  <li>
    <a href="{{ .RelPermalink }}">{{ .Language.Lang }}: {{ .LinkTitle }}{{ if .IsPage }} ({{ i18n "wordCount" . }}){{ end }}</a>
  </li>
  {{ end }}
</ul>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/partials/i18nlist.html >}}
{{ if .IsTranslated }}
<h4>{{ i18n "translations" }}</h4>
<ul>
  {{ range .Translations }}
  <li>
    <a href="{{ .RelPermalink }}">{{ .Language.Lang }}: {{ .LinkTitle }}{{ if .IsPage }} ({{ i18n "wordCount" . }}){{ end }}</a>
  </li>
  {{ end }}
</ul>
{{ end }}
{{< /code >}}
@z

@x
The above can be put in a `partial` (i.e., inside `layouts/partials/`) and included in any template, whether a [single content page][contenttemplate] or the [homepage]. It will not print anything if there are no translations for a given page.
@y
The above can be put in a `partial` (i.e., inside `layouts/partials/`) and included in any template, whether a [single content page][contenttemplate] or the [homepage]. It will not print anything if there are no translations for a given page.
@z

@x
The above also uses the [`i18n` function][i18func] described in the next section.
@y
The above also uses the [`i18n` function][i18func] described in the next section.
@z

@x
### List all available languages
@y
### List all available languages
@z

@x
`.AllTranslations` on a `Page` can be used to list all translations, including the page itself. On the home page it can be used to build a language navigator:
@y
`.AllTranslations` on a `Page` can be used to list all translations, including the page itself. On the home page it can be used to build a language navigator:
@z

@x
{{< code file=layouts/partials/allLanguages.html >}}
<ul>
{{ range $.Site.Home.AllTranslations }}
<li><a href="{{ .RelPermalink }}">{{ .Language.LanguageName }}</a></li>
{{ end }}
</ul>
{{< /code >}}
@y
{{< code file=layouts/partials/allLanguages.html >}}
<ul>
{{ range $.Site.Home.AllTranslations }}
<li><a href="{{ .RelPermalink }}">{{ .Language.LanguageName }}</a></li>
{{ end }}
</ul>
{{< /code >}}
@z

@x
## Translation of strings
@y
## Translation of strings
@z

@x
See the [`lang.Translate`] template function.
@y
See the [`lang.Translate`] template function.
@z

@x
[`lang.Translate`]: /functions/lang/translate
@y
[`lang.Translate`]: /functions/lang/translate
@z

@x
## Localization
@y
## Localization
@z

@x
The following localization examples assume your site's primary language is English, with translations to French and German.
@y
The following localization examples assume your site's primary language is English, with translations to French and German.
@z

@x
{{< code-toggle file=hugo >}}
defaultContentLanguage = 'en'
@y
{{< code-toggle file=hugo >}}
defaultContentLanguage = 'en'
@z

@x
[languages]
[languages.en]
contentDir = 'content/en'
languageName = 'English'
weight = 1
[languages.fr]
contentDir = 'content/fr'
languageName = 'Français'
weight = 2
[languages.de]
contentDir = 'content/de'
languageName = 'Deutsch'
weight = 3
@y
[languages]
[languages.en]
contentDir = 'content/en'
languageName = 'English'
weight = 1
[languages.fr]
contentDir = 'content/fr'
languageName = 'Français'
weight = 2
[languages.de]
contentDir = 'content/de'
languageName = 'Deutsch'
weight = 3
@z

@x
{{< /code-toggle >}}
@y
{{< /code-toggle >}}
@z

@x
### Dates
@y
### Dates
@z

@x
With this front matter:
@y
With this front matter:
@z

@x
{{< code-toggle >}}
date = 2021-11-03T12:34:56+01:00
{{< /code-toggle >}}
@y
{{< code-toggle >}}
date = 2021-11-03T12:34:56+01:00
{{< /code-toggle >}}
@z

@x
And this template code:
@y
And this template code:
@z

@x
```go-html-template
{{ .Date | time.Format ":date_full" }}
```
@y
```go-html-template
{{ .Date | time.Format ":date_full" }}
```
@z

@x
The rendered page displays:
@y
The rendered page displays:
@z

@x
Language|Value
:--|:--
English|Wednesday, November 3, 2021
Français|mercredi 3 novembre 2021
Deutsch|Mittwoch, 3. November 2021
@y
Language|Value
:--|:--
English|Wednesday, November 3, 2021
Français|mercredi 3 novembre 2021
Deutsch|Mittwoch, 3. November 2021
@z

@x
See [`time.Format`] for details.
@y
See [`time.Format`] for details.
@z

@x
### Currency
@y
### Currency
@z

@x
With this template code:
@y
With this template code:
@z

@x
```go-html-template
{{ 512.5032 | lang.FormatCurrency 2 "USD" }}
```
@y
```go-html-template
{{ 512.5032 | lang.FormatCurrency 2 "USD" }}
```
@z

@x
The rendered page displays:
@y
The rendered page displays:
@z

@x
Language|Value
:--|:--
English|$512.50
Français|512,50 $US
Deutsch|512,50 $
@y
Language|Value
:--|:--
English|$512.50
Français|512,50 $US
Deutsch|512,50 $
@z

@x
See [lang.FormatCurrency] and [lang.FormatAccounting] for details.
@y
See [lang.FormatCurrency] and [lang.FormatAccounting] for details.
@z

@x
### Numbers
@y
### Numbers
@z

@x
With this template code:
@y
With this template code:
@z

@x
```go-html-template
{{ 512.5032 | lang.FormatNumber 2 }}
```
@y
```go-html-template
{{ 512.5032 | lang.FormatNumber 2 }}
```
@z

@x
The rendered page displays:
@y
The rendered page displays:
@z

@x
Language|Value
:--|:--
English|512.50
Français|512,50
Deutsch|512,50
@y
Language|Value
:--|:--
English|512.50
Français|512,50
Deutsch|512,50
@z

@x
See [lang.FormatNumber] and [lang.FormatNumberCustom] for details.
@y
See [lang.FormatNumber] and [lang.FormatNumberCustom] for details.
@z

@x
### Percentages
@y
### Percentages
@z

@x
With this template code:
@y
With this template code:
@z

@x
```go-html-template
{{ 512.5032 | lang.FormatPercent 2 }}
```
@y
```go-html-template
{{ 512.5032 | lang.FormatPercent 2 }}
```
@z

@x
The rendered page displays:
@y
The rendered page displays:
@z

@x
Language|Value
:--|:--
English|512.50%
Français|512,50 %
Deutsch|512,50 %
@y
Language|Value
:--|:--
English|512.50%
Français|512,50 %
Deutsch|512,50 %
@z

@x
See [lang.FormatPercent] for details.
@y
See [lang.FormatPercent] for details.
@z

@x
## Menus
@y
## Menus
@z

@x
Localization of menu entries depends on how you define them:
@y
Localization of menu entries depends on how you define them:
@z

@x
- When you define menu entries [automatically] using the section pages menu, you must use translation tables to localize each entry.
- When you define menu entries [in front matter], they are already localized based on the front matter itself. If the front matter values are insufficient, use translation tables to localize each entry.
- When you define menu entries [in site configuration], you must create language-specific menu entries under each language key. If the names of the menu entries are insufficient, use translation tables to localize each entry.
@y
- When you define menu entries [automatically] using the section pages menu, you must use translation tables to localize each entry.
- When you define menu entries [in front matter], they are already localized based on the front matter itself. If the front matter values are insufficient, use translation tables to localize each entry.
- When you define menu entries [in site configuration], you must create language-specific menu entries under each language key. If the names of the menu entries are insufficient, use translation tables to localize each entry.
@z

@x
### Create language-specific menu entries
@y
### Create language-specific menu entries
@z

@x
#### Method 1 -- Use a single configuration file
@y
#### Method 1 -- Use a single configuration file
@z

@x
For a simple menu with a small number of entries, use a single configuration file. For example:
@y
For a simple menu with a small number of entries, use a single configuration file. For example:
@z

@x
{{< code-toggle file=hugo >}}
[languages.de]
languageCode = 'de-DE'
languageName = 'Deutsch'
weight = 1
@y
{{< code-toggle file=hugo >}}
[languages.de]
languageCode = 'de-DE'
languageName = 'Deutsch'
weight = 1
@z

@x
[[languages.de.menus.main]]
name = 'Produkte'
pageRef = '/products'
weight = 10
@y
[[languages.de.menus.main]]
name = 'Produkte'
pageRef = '/products'
weight = 10
@z

@x
[[languages.de.menus.main]]
name = 'Leistungen'
pageRef = '/services'
weight = 20
@y
[[languages.de.menus.main]]
name = 'Leistungen'
pageRef = '/services'
weight = 20
@z

@x
[languages.en]
languageCode = 'en-US'
languageName = 'English'
weight = 2
@y
[languages.en]
languageCode = 'en-US'
languageName = 'English'
weight = 2
@z

@x
[[languages.en.menus.main]]
name = 'Products'
pageRef = '/products'
weight = 10
@y
[[languages.en.menus.main]]
name = 'Products'
pageRef = '/products'
weight = 10
@z

@x
[[languages.en.menus.main]]
name = 'Services'
pageRef = '/services'
weight = 20
{{< /code-toggle >}}
@y
[[languages.en.menus.main]]
name = 'Services'
pageRef = '/services'
weight = 20
{{< /code-toggle >}}
@z

@x
#### Method 2 -- Use a configuration directory
@y
#### Method 2 -- Use a configuration directory
@z

@x
With a more complex menu structure, create a [configuration directory] and split the menu entries into multiple files, one file per language. For example:
@y
With a more complex menu structure, create a [configuration directory] and split the menu entries into multiple files, one file per language. For example:
@z

% snip text...

@x
{{< code-toggle file=config/_default/menus.de >}}
[[main]]
name = 'Produkte'
pageRef = '/products'
weight = 10
[[main]]
name = 'Leistungen'
pageRef = '/services'
weight = 20
{{< /code-toggle >}}
@y
{{< code-toggle file=config/_default/menus.de >}}
[[main]]
name = 'Produkte'
pageRef = '/products'
weight = 10
[[main]]
name = 'Leistungen'
pageRef = '/services'
weight = 20
{{< /code-toggle >}}
@z

@x
{{< code-toggle file=config/_default/menus.en >}}
[[main]]
name = 'Products'
pageRef = '/products'
weight = 10
[[main]]
name = 'Services'
pageRef = '/services'
weight = 20
{{< /code-toggle >}}
@y
{{< code-toggle file=config/_default/menus.en >}}
[[main]]
name = 'Products'
pageRef = '/products'
weight = 10
[[main]]
name = 'Services'
pageRef = '/services'
weight = 20
{{< /code-toggle >}}
@z

@x
[configuration directory]: /getting-started/configuration/#configuration-directory
@y
[configuration directory]: /getting-started/configuration/#configuration-directory
@z

@x
### Use translation tables
@y
### Use translation tables
@z

@x
When rendering the text that appears in menu each entry, the [example menu template] does this:
@y
When rendering the text that appears in menu each entry, the [example menu template] does this:
@z

% snip code...

@x
It queries the translation table for the current language using the menu entry's `identifier` and returns the translated string. If the translation table does not exist, or if the `identifier` key is not present in the translation table, it falls back to `name`.
@y
It queries the translation table for the current language using the menu entry's `identifier` and returns the translated string. If the translation table does not exist, or if the `identifier` key is not present in the translation table, it falls back to `name`.
@z

@x
The `identifier` depends on how you define menu entries:
@y
The `identifier` depends on how you define menu entries:
@z

@x
- If you define the menu entry [automatically] using the section pages menu, the `identifier` is the page's `.Section`.
- If you define the menu entry [in site configuration] or [in front matter], set the `identifier` property to the desired value.
@y
- If you define the menu entry [automatically] using the section pages menu, the `identifier` is the page's `.Section`.
- If you define the menu entry [in site configuration] or [in front matter], set the `identifier` property to the desired value.
@z

@x
For example, if you define menu entries in site configuration:
@y
For example, if you define menu entries in site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[[menus.main]]
  identifier = 'products'
  name = 'Products'
  pageRef = '/products'
  weight = 10
[[menus.main]]
  identifier = 'services'
  name = 'Services'
  pageRef = '/services'
  weight = 20
{{< / code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[[menus.main]]
  identifier = 'products'
  name = 'Products'
  pageRef = '/products'
  weight = 10
[[menus.main]]
  identifier = 'services'
  name = 'Services'
  pageRef = '/services'
  weight = 20
{{< / code-toggle >}}
@z

@x
Create corresponding entries in the translation tables:
@y
Create corresponding entries in the translation tables:
@z

@x
{{< code-toggle file=i18n/de >}}
products = 'Produkte'
services = 'Leistungen'
{{< / code-toggle >}}
@y
{{< code-toggle file=i18n/de >}}
products = 'Produkte'
services = 'Leistungen'
{{< / code-toggle >}}
@z

% snip links...

@x
## Missing translations
@y
## Missing translations
@z

@x
If a string does not have a translation for the current language, Hugo will use the value from the default language. If no default value is set, an empty string will be shown.
@y
If a string does not have a translation for the current language, Hugo will use the value from the default language. If no default value is set, an empty string will be shown.
@z

@x
While translating a Hugo website, it can be handy to have a visual indicator of missing translations. The [`enableMissingTranslationPlaceholders` configuration option][config] will flag all untranslated strings with the placeholder `[i18n] identifier`, where `identifier` is the id of the missing translation.
@y
While translating a Hugo website, it can be handy to have a visual indicator of missing translations. The [`enableMissingTranslationPlaceholders` configuration option][config] will flag all untranslated strings with the placeholder `[i18n] identifier`, where `identifier` is the id of the missing translation.
@z

@x
{{% note %}}
Hugo will generate your website with these missing translation placeholders. It might not be suitable for production environments.
{{% /note %}}
@y
{{% note %}}
Hugo will generate your website with these missing translation placeholders. It might not be suitable for production environments.
{{% /note %}}
@z

@x
For merging of content from other languages (i.e. missing content translations), see [lang.Merge].
@y
For merging of content from other languages (i.e. missing content translations), see [lang.Merge].
@z

@x
To track down missing translation strings, run Hugo with the `--printI18nWarnings` flag:
@y
To track down missing translation strings, run Hugo with the `--printI18nWarnings` flag:
@z

% snip code...

@x
## Multilingual themes support
@y
## Multilingual themes support
@z

@x
To support Multilingual mode in your themes, some considerations must be taken for the URLs in the templates. If there is more than one language, URLs must meet the following criteria:
@y
To support Multilingual mode in your themes, some considerations must be taken for the URLs in the templates. If there is more than one language, URLs must meet the following criteria:
@z

@x
* Come from the built-in `.Permalink` or `.RelPermalink`
* Be constructed with the [`relLangURL`] or [`absLangURL`] template function, or be prefixed with `{{ .LanguagePrefix }}`
@y
* Come from the built-in `.Permalink` or `.RelPermalink`
* Be constructed with the [`relLangURL`] or [`absLangURL`] template function, or be prefixed with `{{ .LanguagePrefix }}`
@z

@x
If there is more than one language defined, the `LanguagePrefix` variable will equal `/en` (or whatever your `CurrentLanguage` is). If not enabled, it will be an empty string (and is therefore harmless for single-language Hugo websites).
@y
If there is more than one language defined, the `LanguagePrefix` variable will equal `/en` (or whatever your `CurrentLanguage` is). If not enabled, it will be an empty string (and is therefore harmless for single-language Hugo websites).
@z

@x
## Generate multilingual content with `hugo new content`
@y
## Generate multilingual content with `hugo new content`
@z

@x
If you organize content with translations in the same directory:
@y
If you organize content with translations in the same directory:
@z

% snip code...

@x
If you organize content with translations in different directories:
@y
If you organize content with translations in different directories:
@z

% snip code...
% snip links...
