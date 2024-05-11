%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Configure Hugo
linkTitle: Configuration
description: How to configure your Hugo site.
categories: [getting started,fundamentals]
keywords: [configuration,toml,yaml,json]
@y
title: Hugo の設定
linkTitle: 設定
description: Hugo サイトを設定する方法について示します。
categories: [getting started,fundamentals]
keywords: [configuration,toml,yaml,json]
@z

@x
## Configuration file
@y
## 設定ファイル {#configuration-file}
@z

@x
Create a site configuration file in the root of your project directory, naming it `hugo.toml`, `hugo.yaml`, or `hugo.json`, with that order of precedence.
@y
サイトを設定するファイルを、プロジェクトディレクトリのルートに生成します。
名前は `hugo.toml`、`hugo.yaml`、`hugo.json` のいずれかとします。
この順番で優先的に取り扱われます。
@z

% snip text...

@x note
With v0.109.0 and earlier the basename of the site configuration file was `config` instead of `hugo`. You can use either, but should transition to the new naming convention when practical.
@y
v0.109.0 以前ではサイト設定ファイルのベース名は `hugo` ではなく `config` でした。
今でも古いものを用いることができますが、これから利用していくにあたっては、新しい名前を用いるようにしてください。
@z

@x
A simple example:
@y
以下はその単純な例です。
@z

% snip code...

@x
To use a different configuration file when building your site, use the `--config` flag:
@y
サイトビルド時に別の設定ファイルを利用する場合は `--config` フラグを使います。
@z

% snip code...

@x
Combine two or more configuration files, with left-to-right precedence:
@y
複数の設定ファイルを連結する場合は、左のものから順に優先されます。
@z

% snip command...

@x note
See the specifications for each file format: [TOML], [YAML], and [JSON].
@y
[TOML]、[YAML]、[JSON] の各フォーマットごとの仕様を参照してください。
@z

@x
## Configuration directory
@y
## 設定ディレクトリ {#configuration-directory}
@z

@x
Instead of a single site configuration file, split your configuration by [environment], root configuration key, and language. For example:
@y
Instead of a single site configuration file, split your configuration by [environment], root configuration key, and language. For example:
@z

% snip link...
% snip text...

@x
The root configuration keys are `build`, `caches`, `cascade`, `deployment`, `frontmatter`, `imaging`, `languages`, `markup`, `mediatypes`, `menus`, `minify`, `module`, `outputformats`, `outputs`, `params`, `permalinks`, `privacy`, `related`, `security`, `segments`, `server`, `services`, `sitemap`, and `taxonomies`.
@y
The root configuration keys are `build`, `caches`, `cascade`, `deployment`, `frontmatter`, `imaging`, `languages`, `markup`, `mediatypes`, `menus`, `minify`, `module`, `outputformats`, `outputs`, `params`, `permalinks`, `privacy`, `related`, `security`, `segments`, `server`, `services`, `sitemap`, and `taxonomies`.
@z

@x
### Omit the root key
@y
### Omit the root key
@z

@x
When splitting the configuration by root key, omit the root key in the given file. For example, these are equivalent:
@y
When splitting the configuration by root key, omit the root key in the given file. For example, these are equivalent:
@z

% snip code...

@x
### Recursive parsing
@y
### Recursive parsing
@z

@x
Hugo parses the `config` directory recursively, allowing you to organize the files into subdirectories. For example:
@y
Hugo parses the `config` directory recursively, allowing you to organize the files into subdirectories. For example:
@z

% snip text...

@x
### Example
@y
### Example
@z

% snip text...

@x
Considering the structure above, when running `hugo --environment staging`, Hugo will use every setting from `config/_default` and merge `staging`'s on top of those.
@y
Considering the structure above, when running `hugo --environment staging`, Hugo will use every setting from `config/_default` and merge `staging`'s on top of those.
@z

@x
Let's take an example to understand this better. Let's say you are using Google Analytics for your website. This requires you to specify a [Google tag ID] in your site configuration:
@y
Let's take an example to understand this better. Let's say you are using Google Analytics for your website. This requires you to specify a [Google tag ID] in your site configuration:
@z

@x
[Google tag ID]: https://support.google.com/tagmanager/answer/12326985?hl=en
@y
[Google tag ID]: https://support.google.com/tagmanager/answer/12326985?hl=en
@z

% snip code...

@x
Now consider the following scenario:
@y
Now consider the following scenario:
@z

@x
1. You don't want to load the analytics code when running `hugo server`.
2. You want to use different Google tag IDs for your production and staging environments. For example:
@y
1. You don't want to load the analytics code when running `hugo server`.
2. You want to use different Google tag IDs for your production and staging environments. For example:
@z

@x
    - `G-PPPPPPPPP` for production
    - `G-SSSSSSSSS` for staging
@y
    - `G-PPPPPPPPP` for production
    - `G-SSSSSSSSS` for staging
@z

@x
To satisfy these requirements, configure your site as follows:
@y
To satisfy these requirements, configure your site as follows:
@z

@x
1. `config/_default/hugo.toml`
@y
1. `config/_default/hugo.toml`
@z

@x
    Exclude the `services.googleAnalytics` section. This will prevent loading of the analytics code when you run `hugo server`.
@y
    Exclude the `services.googleAnalytics` section. This will prevent loading of the analytics code when you run `hugo server`.
@z

@x
    By default, Hugo sets its `environment` to `development` when running `hugo server`. In the absence of a `config/development` directory, Hugo uses the `config/_default` directory.
@y
    By default, Hugo sets its `environment` to `development` when running `hugo server`. In the absence of a `config/development` directory, Hugo uses the `config/_default` directory.
@z

@x
2. `config/production/hugo.toml`
@y
2. `config/production/hugo.toml`
@z

@x
    Include this section only:
@y
    Include this section only:
@z

% snip code...

@x
    You do not need to include other parameters in this file. Include only those parameters that are specific to your production environment. Hugo will merge these parameters with the default configuration.
@y
    You do not need to include other parameters in this file. Include only those parameters that are specific to your production environment. Hugo will merge these parameters with the default configuration.
@z

@x
    By default, Hugo sets its `environment` to `production` when running `hugo`. The analytics code will use the `G-PPPPPPPPP` tag ID.
@y
    By default, Hugo sets its `environment` to `production` when running `hugo`. The analytics code will use the `G-PPPPPPPPP` tag ID.
@z

@x
3. `config/staging/hugo.toml`
@y
3. `config/staging/hugo.toml`
@z

@x
    Include this section only:
@y
    Include this section only:
@z

% snip code...

@x
    You do not need to include other parameters in this file. Include only those parameters that are specific to your staging environment. Hugo will merge these parameters with the default configuration.
@y
    You do not need to include other parameters in this file. Include only those parameters that are specific to your staging environment. Hugo will merge these parameters with the default configuration.
@z

@x
    To build your staging site, run `hugo --environment staging`. The analytics code will use the `G-SSSSSSSSS` tag ID.
@y
    To build your staging site, run `hugo --environment staging`. The analytics code will use the `G-SSSSSSSSS` tag ID.
@z

@x
## Merge configuration from themes
@y
## Merge configuration from themes
@z

@x
The configuration value for `_merge` can be one of:
@y
The configuration value for `_merge` can be one of:
@z

@x
none
: No merge.
@y
none
: No merge.
@z

@x
shallow
: Only add values for new keys.
@y
shallow
: Only add values for new keys.
@z

@x
deep
: Add values for new keys, merge existing.
@y
deep
: Add values for new keys, merge existing.
@z

@x
Note that you don't need to be so verbose as in the default setup below; a `_merge` value higher up will be inherited if not set.
@y
Note that you don't need to be so verbose as in the default setup below; a `_merge` value higher up will be inherited if not set.
@z

@x
{{< code-toggle file=hugo dataKey="config_helpers.mergeStrategy" skipHeader=true />}}
@y
{{< code-toggle file=hugo dataKey="config_helpers.mergeStrategy" skipHeader=true />}}
@z

@x
## All configuration settings
@y
## All configuration settings
@z

@x
###### archetypeDir
@y
###### archetypeDir
@z

@x
(`string`) The directory where Hugo finds archetype files (content templates). Default is `archetypes`. {{% module-mounts-note %}}
@y
(`string`) The directory where Hugo finds archetype files (content templates). Default is `archetypes`. {{% module-mounts-note %}}
@z

@x
###### assetDir
@y
###### assetDir
@z

@x
(`string`) The directory where Hugo finds asset files used in [Hugo Pipes](/hugo-pipes/). Default is `assets`. {{% module-mounts-note %}}
@y
(`string`) The directory where Hugo finds asset files used in [Hugo Pipes](/hugo-pipes/). Default is `assets`. {{% module-mounts-note %}}
@z

@x
###### baseURL
@y
###### baseURL
@z

@x
(`string`) The absolute URL (protocol, host, path, and trailing slash) of your published site (e.g., `https://www.example.org/docs/`).
@y
(`string`) The absolute URL (protocol, host, path, and trailing slash) of your published site (e.g., `https://www.example.org/docs/`).
@z

@x
###### build
@y
###### build
@z

@x
See [Configure Build](#configure-build).
@y
See [Configure Build](#configure-build).
@z

@x
###### buildDrafts
@y
###### buildDrafts
@z

@x
(`bool`) Include drafts when building. Default is `false`.
@y
(`bool`) Include drafts when building. Default is `false`.
@z

@x
###### buildExpired
@y
###### buildExpired
@z

@x
(`bool`) Include content already expired. Default is `false`.
@y
(`bool`) Include content already expired. Default is `false`.
@z

@x
###### buildFuture
@y
###### buildFuture
@z

@x
(`bool`) Include content with a future publication date. Default is `false`.
@y
(`bool`) Include content with a future publication date. Default is `false`.
@z

@x
###### caches
@y
###### caches
@z

@x
See [Configure File Caches](#configure-file-caches).
@y
See [Configure File Caches](#configure-file-caches).
@z

@x
###### cascade
@y
###### cascade
@z

@x
Pass down default configuration values (front matter) to pages in the content tree. The options in site config is the same as in page front matter, see [Front Matter Cascade](/content-management/front-matter#cascade).
@y
Pass down default configuration values (front matter) to pages in the content tree. The options in site config is the same as in page front matter, see [Front Matter Cascade](/content-management/front-matter#cascade).
@z

@x
{{% note %}}
For a website in a single language, define the `[[cascade]]` in [Front Matter](/content-management/front-matter#cascade). For a multilingual website, define the `[[cascade]]` in [Site Config](/getting-started/configuration/#cascade).

To remain consistent and prevent unexpected behavior, do not mix these strategies.
{{% /note %}}
@y
{{% note %}}
For a website in a single language, define the `[[cascade]]` in [Front Matter](/content-management/front-matter#cascade). For a multilingual website, define the `[[cascade]]` in [Site Config](/getting-started/configuration/#cascade).

To remain consistent and prevent unexpected behavior, do not mix these strategies.
{{% /note %}}
@z

@x
###### canonifyURLs
@y
###### canonifyURLs
@z

@x
(`bool`) See [details](/content-management/urls/#canonical-urls) before enabling this feature. Default is `false`.
@y
(`bool`) See [details](/content-management/urls/#canonical-urls) before enabling this feature. Default is `false`.
@z

@x
###### cleanDestinationDir
@y
###### cleanDestinationDir
@z

@x
(`bool`) When building, removes files from destination not found in static directories. Default is `false`.
@y
(`bool`) When building, removes files from destination not found in static directories. Default is `false`.
@z

@x
###### contentDir
@y
###### contentDir
@z

@x
(`string`) The directory from where Hugo reads content files.  Default is `content`. {{% module-mounts-note %}}
@y
(`string`) The directory from where Hugo reads content files.  Default is `content`. {{% module-mounts-note %}}
@z

@x
###### copyright
@y
###### copyright
@z

@x
(`string`) Copyright notice for your site, typically displayed in the footer.
@y
(`string`) Copyright notice for your site, typically displayed in the footer.
@z

@x
###### dataDir
@y
###### dataDir
@z

@x
(`string`) The directory from where Hugo reads data files. Default is `data`. {{% module-mounts-note %}}
@y
(`string`) The directory from where Hugo reads data files. Default is `data`. {{% module-mounts-note %}}
@z

@x
###### defaultContentLanguage
@y
###### defaultContentLanguage
@z

@x
(`string`) Content without language indicator will default to this language. Default is `en`.
@y
(`string`) Content without language indicator will default to this language. Default is `en`.
@z

@x
###### defaultContentLanguageInSubdir
@y
###### defaultContentLanguageInSubdir
@z

@x
(`bool`) Render the default content language in subdir, e.g. `content/en/`. The site root `/` will then redirect to `/en/`. Default is `false`.
@y
(`bool`) Render the default content language in subdir, e.g. `content/en/`. The site root `/` will then redirect to `/en/`. Default is `false`.
@z

@x
###### disableAliases
@y
###### disableAliases
@z

@x
(`bool`) Will disable generation of alias redirects. Note that even if `disableAliases` is set, the aliases themselves are preserved on the page. The motivation with this is to be able to generate 301 redirects in an `.htaccess`, a Netlify `_redirects` file or similar using a custom output format. Default is `false`.
@y
(`bool`) Will disable generation of alias redirects. Note that even if `disableAliases` is set, the aliases themselves are preserved on the page. The motivation with this is to be able to generate 301 redirects in an `.htaccess`, a Netlify `_redirects` file or similar using a custom output format. Default is `false`.
@z

@x
###### disableHugoGeneratorInject
@y
###### disableHugoGeneratorInject
@z

@x
(`bool`) Hugo will, by default, inject a generator meta tag in the HTML head on the _home page only_. You can turn it off, but we would really appreciate if you don't, as this is a good way to watch Hugo's popularity on the rise. Default is `false`.
@y
(`bool`) Hugo will, by default, inject a generator meta tag in the HTML head on the _home page only_. You can turn it off, but we would really appreciate if you don't, as this is a good way to watch Hugo's popularity on the rise. Default is `false`.
@z

@x
###### disableKinds
@y
###### disableKinds
@z

@x
(`string slice`) Disable rendering of the specified page [kinds], any of `404`, `home`, `page`, `robotstxt`, `rss`, `section`, `sitemap`, `taxonomy`, or `term`.
@y
(`string slice`) Disable rendering of the specified page [kinds], any of `404`, `home`, `page`, `robotstxt`, `rss`, `section`, `sitemap`, `taxonomy`, or `term`.
@z

@x
[kinds]: /getting-started/glossary/#page-kind
@y
[kinds]: /getting-started/glossary/#page-kind
@z

@x
###### disableLiveReload
@y
###### disableLiveReload
@z

@x
(`bool`) Disable automatic live reloading of browser window. Default is `false`.
@y
(`bool`) Disable automatic live reloading of browser window. Default is `false`.
@z

@x
###### disablePathToLower
@y
###### disablePathToLower
@z

@x
(`bool`) Do not convert the url/path to lowercase. Default is `false`.
@y
(`bool`) Do not convert the url/path to lowercase. Default is `false`.
@z

@x
###### enableEmoji
@y
###### enableEmoji
@z

@x
(`bool`) Enable Emoji emoticons support for page content; see the [emoji shortcode quick reference guide](/quick-reference/emojis/). Default is `false`.
@y
(`bool`) Enable Emoji emoticons support for page content; see the [emoji shortcode quick reference guide](/quick-reference/emojis/). Default is `false`.
@z

@x
###### enableGitInfo
@y
###### enableGitInfo
@z

@x
(`bool`) Enable `.GitInfo` object for each page (if the Hugo site is versioned by Git). This will then update the `Lastmod` parameter for each page using the last git commit date for that content file. Default is `false`.
@y
(`bool`) Enable `.GitInfo` object for each page (if the Hugo site is versioned by Git). This will then update the `Lastmod` parameter for each page using the last git commit date for that content file. Default is `false`.
@z

@x
###### enableMissingTranslationPlaceholders
@y
###### enableMissingTranslationPlaceholders
@z

@x
(`bool`) Show a placeholder instead of the default value or an empty string if a translation is missing. Default is `false`.
@y
(`bool`) Show a placeholder instead of the default value or an empty string if a translation is missing. Default is `false`.
@z

@x
###### enableRobotsTXT
@y
###### enableRobotsTXT
@z

@x
(`bool`) Enable generation of `robots.txt` file. Default is `false`.
@y
(`bool`) Enable generation of `robots.txt` file. Default is `false`.
@z

@x
###### frontmatter
@y
###### frontmatter
@z

@x
See [Front matter Configuration](#configure-front-matter).
@y
See [Front matter Configuration](#configure-front-matter).
@z

@x
###### hasCJKLanguage
@y
###### hasCJKLanguage
@z

@x
(`bool`) If true, auto-detect Chinese/Japanese/Korean Languages in the content. This will make `.Summary` and `.WordCount` behave correctly for CJK languages. Default is `false`.
@y
(`bool`) If true, auto-detect Chinese/Japanese/Korean Languages in the content. This will make `.Summary` and `.WordCount` behave correctly for CJK languages. Default is `false`.
@z

@x
###### imaging
@y
###### imaging
@z

@x
See [image processing configuration](/content-management/image-processing/#imaging-configuration).
@y
See [image processing configuration](/content-management/image-processing/#imaging-configuration).
@z

@x
###### languageCode
@y
###### languageCode
@z

@x
(`string`) A language tag as defined by [RFC 5646](https://datatracker.ietf.org/doc/html/rfc5646). This value is used to populate:
@y
(`string`) A language tag as defined by [RFC 5646](https://datatracker.ietf.org/doc/html/rfc5646). This value is used to populate:
@z

@x
- The `<language>` element in the internal [RSS template](https://github.com/gohugoio/hugo/blob/master/tpl/tplimpl/embedded/templates/_default/rss.xml)
- The `lang` attribute of the `<html>` element in the internal [alias template](https://github.com/gohugoio/hugo/blob/master/tpl/tplimpl/embedded/templates/alias.html)
@y
- The `<language>` element in the internal [RSS template](https://github.com/gohugoio/hugo/blob/master/tpl/tplimpl/embedded/templates/_default/rss.xml)
- The `lang` attribute of the `<html>` element in the internal [alias template](https://github.com/gohugoio/hugo/blob/master/tpl/tplimpl/embedded/templates/alias.html)
@z

@x
###### languages
@y
###### languages
@z

@x
See [Configure Languages](/content-management/multilingual/#configure-languages).
@y
See [Configure Languages](/content-management/multilingual/#configure-languages).
@z

@x
###### disableLanguages
@y
###### disableLanguages
@z

@x
See [Disable a Language](/content-management/multilingual/#disable-a-language)
@y
See [Disable a Language](/content-management/multilingual/#disable-a-language)
@z

@x
###### markup
@y
###### markup
@z

@x
See [Configure Markup](/getting-started/configuration-markup).
@y
See [Configure Markup](/getting-started/configuration-markup).
@z

@x
###### mediaTypes
@y
###### mediaTypes
@z

@x
See [Configure Media Types](/templates/output-formats/#media-types).
@y
See [Configure Media Types](/templates/output-formats/#media-types).
@z

@x
###### menus
@y
###### menus
@z

@x
See [Menus](/content-management/menus/#define-in-site-configuration).
@y
See [Menus](/content-management/menus/#define-in-site-configuration).
@z

@x
###### minify
@y
###### minify
@z

@x
See [Configure Minify](#configure-minify).
@y
See [Configure Minify](#configure-minify).
@z

@x
###### module
@y
###### module
@z

@x
Module configuration see [module configuration](/hugo-modules/configuration/).
@y
Module configuration see [module configuration](/hugo-modules/configuration/).
@z

@x
###### newContentEditor
@y
###### newContentEditor
@z

@x
(`string`) The editor to use when creating new content.
@y
(`string`) The editor to use when creating new content.
@z

@x
###### noChmod
@y
###### noChmod
@z

@x
(`bool`) Don't sync permission mode of files. Default is `false`.
@y
(`bool`) Don't sync permission mode of files. Default is `false`.
@z

@x
###### noTimes
@y
###### noTimes
@z

@x
(`bool`) Don't sync modification time of files. Default is `false`.
@y
(`bool`) Don't sync modification time of files. Default is `false`.
@z

@x
###### outputFormats
@y
###### outputFormats
@z

@x
See [custom output formats].
@y
See [custom output formats].
@z

@x
###### paginate
@y
###### paginate
@z

@x
(`int`) Default number of elements per page in [pagination](/templates/pagination/). Default is `10`.
@y
(`int`) Default number of elements per page in [pagination](/templates/pagination/). Default is `10`.
@z

@x
###### paginatePath
@y
###### paginatePath
@z

@x
(`string`) The path element used during pagination (`https://example.org/page/2`). Default is `page`.
@y
(`string`) The path element used during pagination (`https://example.org/page/2`). Default is `page`.
@z

@x
###### permalinks
@y
###### permalinks
@z

@x
See [Content Management](/content-management/urls/#permalinks).
@y
See [Content Management](/content-management/urls/#permalinks).
@z

@x
###### pluralizeListTitles
@y
###### pluralizeListTitles
@z

@x
(`bool`) Whether to pluralize automatic list titles. Applicable to section pages. Default is `true`.
@y
(`bool`) Whether to pluralize automatic list titles. Applicable to section pages. Default is `true`.
@z

@x
###### publishDir
@y
###### publishDir
@z

@x
(`string`) The directory to where Hugo will write the final static site (the HTML files etc.). Default is `public`.
@y
(`string`) The directory to where Hugo will write the final static site (the HTML files etc.). Default is `public`.
@z

@x
###### refLinksErrorLevel
@y
###### refLinksErrorLevel
@z

@x
(`string`) When using `ref` or `relref` to resolve page links and a link cannot be resolved, it will be logged with this log level. Valid values are `ERROR` (default) or `WARNING`. Any `ERROR` will fail the build (`exit -1`).  Default is `ERROR`.
@y
(`string`) When using `ref` or `relref` to resolve page links and a link cannot be resolved, it will be logged with this log level. Valid values are `ERROR` (default) or `WARNING`. Any `ERROR` will fail the build (`exit -1`).  Default is `ERROR`.
@z

@x
###### refLinksNotFoundURL
@y
###### refLinksNotFoundURL
@z

@x
(`string`) URL to be used as a placeholder when a page reference cannot be found in `ref` or `relref`. Is used as-is.
@y
(`string`) URL to be used as a placeholder when a page reference cannot be found in `ref` or `relref`. Is used as-is.
@z

@x
###### related
@y
###### related
@z

@x
See [Related Content](/content-management/related/#configure-related-content).
@y
See [Related Content](/content-management/related/#configure-related-content).
@z

@x
###### relativeURLs
@y
###### relativeURLs
@z

@x
(`bool`) See [details](/content-management/urls/#relative-urls) before enabling this feature. Default is `false`.
@y
(`bool`) See [details](/content-management/urls/#relative-urls) before enabling this feature. Default is `false`.
@z

@x
###### removePathAccents
@y
###### removePathAccents
@z

@x
(`bool`) Removes [non-spacing marks](https://www.compart.com/en/unicode/category/Mn) from [composite characters](https://en.wikipedia.org/wiki/Precomposed_character) in content paths. Default is `false`.
@y
(`bool`) Removes [non-spacing marks](https://www.compart.com/en/unicode/category/Mn) from [composite characters](https://en.wikipedia.org/wiki/Precomposed_character) in content paths. Default is `false`.
@z

@x
```text
content/post/hügó.md → https://example.org/post/hugo/
```
@y
```text
content/post/hügó.md → https://example.org/post/hugo/
```
@z

@x
###### sectionPagesMenu
@y
###### sectionPagesMenu
@z

@x
See [Menus](/content-management/menus/#define-automatically).
@y
See [Menus](/content-management/menus/#define-automatically).
@z

@x
###### security
@y
###### security
@z

@x
See [Security Policy](/about/security/#security-policy).
@y
See [Security Policy](/about/security/#security-policy).
@z

@x
###### sitemap
@y
###### sitemap
@z

@x
Default [sitemap configuration](/templates/sitemap-template/#configuration).
@y
Default [sitemap configuration](/templates/sitemap-template/#configuration).
@z

@x
###### summaryLength
@y
###### summaryLength
@z

@x
(`int`) The length of text in words to show in a [`.Summary`](/content-management/summaries/#automatic-summary-splitting). Default is `70`.
@y
(`int`) The length of text in words to show in a [`.Summary`](/content-management/summaries/#automatic-summary-splitting). Default is `70`.
@z

@x
###### taxonomies
@y
###### taxonomies
@z

@x
See [Configure Taxonomies](/content-management/taxonomies#configure-taxonomies).
@y
See [Configure Taxonomies](/content-management/taxonomies#configure-taxonomies).
@z

@x
###### theme
@y
###### theme
@z

@x
See [module configuration](/hugo-modules/configuration/#module-configuration-imports) for how to import a theme.
@y
See [module configuration](/hugo-modules/configuration/#module-configuration-imports) for how to import a theme.
@z

@x
###### themesDir
@y
###### themesDir
@z

@x
(`string`) The directory where Hugo reads the themes from. Default is `themes`.
@y
(`string`) The directory where Hugo reads the themes from. Default is `themes`.
@z

@x
###### timeout
@y
###### timeout
@z

@x
(`string`) Timeout for generating page contents, specified as a [duration](https://pkg.go.dev/time#Duration) or in seconds. *Note:*&nbsp;this is used to bail out of recursive content generation. You might need to raise this limit if your pages are slow to generate (e.g., because they require large image processing or depend on remote contents). Default is `30s`.
@y
(`string`) Timeout for generating page contents, specified as a [duration](https://pkg.go.dev/time#Duration) or in seconds. *Note:*&nbsp;this is used to bail out of recursive content generation. You might need to raise this limit if your pages are slow to generate (e.g., because they require large image processing or depend on remote contents). Default is `30s`.
@z

@x
###### timeZone
@y
###### timeZone
@z

@x
(`string`) The time zone (or location), e.g. `Europe/Oslo`, used to parse front matter dates without such information and in the [`time`] function. The list of valid values may be system dependent, but should include `UTC`, `Local`, and any location in the [IANA Time Zone database](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
@y
(`string`) The time zone (or location), e.g. `Europe/Oslo`, used to parse front matter dates without such information and in the [`time`] function. The list of valid values may be system dependent, but should include `UTC`, `Local`, and any location in the [IANA Time Zone database](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
@z

@x
###### title
@y
###### title
@z

@x
(`string`) Site title.
@y
(`string`) Site title.
@z

@x
###### titleCaseStyle
@y
###### titleCaseStyle
@z

@x
(`string`) Default is `ap`. See [Configure Title Case](#configure-title-case).
@y
(`string`) Default is `ap`. See [Configure Title Case](#configure-title-case).
@z

@x
###### uglyURLs
@y
###### uglyURLs
@z

@x
(`bool`) When enabled, creates URL of the form `/filename.html` instead of `/filename/`. Default is `false`.
@y
(`bool`) When enabled, creates URL of the form `/filename.html` instead of `/filename/`. Default is `false`.
@z

@x
###### watch
@y
###### watch
@z

@x
(`bool`) Watch filesystem for changes and recreate as needed. Default is `false`.
@y
(`bool`) Watch filesystem for changes and recreate as needed. Default is `false`.
@z

@x note
If you are developing your site on a \*nix machine, here is a handy shortcut for finding a configuration option from the command line:
@y
If you are developing your site on a \*nix machine, here is a handy shortcut for finding a configuration option from the command line:
@z

% snip text...

@x
which shows output like
@y
which shows output like
@z

% snip text...

@x
## Configure build
@y
## Configure build
@z

@x
The `build` configuration section contains global build-related configuration options.
@y
The `build` configuration section contains global build-related configuration options.
@z

@x
{{< code-toggle config=build />}}
@y
{{< code-toggle config=build />}}
@z

@x
buildStats {{< new-in 0.115.1 >}}
: When enabled, creates a `hugo_stats.json` file in the root of your project. This file contains arrays of the `class` attributes, `id` attributes, and tags of every HTML element within your published site. Use this file as data source when [removing unused CSS] from your site. This process is also known as pruning, purging, or tree shaking.
@y
buildStats {{< new-in 0.115.1 >}}
: When enabled, creates a `hugo_stats.json` file in the root of your project. This file contains arrays of the `class` attributes, `id` attributes, and tags of every HTML element within your published site. Use this file as data source when [removing unused CSS] from your site. This process is also known as pruning, purging, or tree shaking.
@z

@x
[removing unused CSS]: /hugo-pipes/postprocess/#css-purging-with-postcss
@y
[removing unused CSS]: /hugo-pipes/postprocess/#css-purging-with-postcss
@z

@x
Exclude `class` attributes, `id` attributes, or tags from `hugo_stats.json` with the `disableClasses`, `disableIDs`, and `disableTags` keys.
@y
Exclude `class` attributes, `id` attributes, or tags from `hugo_stats.json` with the `disableClasses`, `disableIDs`, and `disableTags` keys.
@z

@x
{{% note %}}
With v0.115.0 and earlier this feature was enabled by setting `writeStats` to `true`. Although still functional, the `writeStats` key will be deprecated in a future release.
@y
{{% note %}}
With v0.115.0 and earlier this feature was enabled by setting `writeStats` to `true`. Although still functional, the `writeStats` key will be deprecated in a future release.
@z

@x
Given that CSS purging is typically limited to production builds, place the `buildStats` object below [config/production].
@y
Given that CSS purging is typically limited to production builds, place the `buildStats` object below [config/production].
@z

@x
[config/production]: /getting-started/configuration/#configuration-directory
@y
[config/production]: /getting-started/configuration/#configuration-directory
@z

@x
Built for speed, there may be "false positive" detections (e.g., HTML elements that are not HTML elements) while parsing the published site. These "false positives" are infrequent and inconsequential.
{{% /note %}}
@y
Built for speed, there may be "false positive" detections (e.g., HTML elements that are not HTML elements) while parsing the published site. These "false positives" are infrequent and inconsequential.
{{% /note %}}
@z

@x
Due to the nature of partial server builds, new HTML entities are added while the server is running, but old values will not be removed until you restart the server or run a regular `hugo` build.
@y
Due to the nature of partial server builds, new HTML entities are added while the server is running, but old values will not be removed until you restart the server or run a regular `hugo` build.
@z

@x
cachebusters
: See [Configure Cache Busters](#configure-cache-busters)
@y
cachebusters
: See [Configure Cache Busters](#configure-cache-busters)
@z

@x
noJSConfigInAssets
: Turn off writing a `jsconfig.json` into your `/assets` folder with mapping of imports from running [js.Build](/hugo-pipes/js). This file is intended to help with intellisense/navigation inside code editors such as [VS Code](https://code.visualstudio.com/). Note that if you do not use `js.Build`, no file will be written.
@y
noJSConfigInAssets
: Turn off writing a `jsconfig.json` into your `/assets` folder with mapping of imports from running [js.Build](/hugo-pipes/js). This file is intended to help with intellisense/navigation inside code editors such as [VS Code](https://code.visualstudio.com/). Note that if you do not use `js.Build`, no file will be written.
@z

@x
useResourceCacheWhen
: When to use the cached resources in `/resources/_gen` for PostCSS and ToCSS. Valid values are `never`, `always` and `fallback`. The last value means that the cache will be tried if PostCSS/extended version is not available.
@y
useResourceCacheWhen
: When to use the cached resources in `/resources/_gen` for PostCSS and ToCSS. Valid values are `never`, `always` and `fallback`. The last value means that the cache will be tried if PostCSS/extended version is not available.
@z

@x
## Configure cache busters
@y
## Configure cache busters
@z

@x
{{< new-in 0.112.0 >}}
@y
{{< new-in 0.112.0 >}}
@z

@x
The `build.cachebusters` configuration option was added to support development using Tailwind 3.x's JIT compiler where a `build` configuration may look like this:
@y
The `build.cachebusters` configuration option was added to support development using Tailwind 3.x's JIT compiler where a `build` configuration may look like this:
@z

% snip code...

@x
When `buildStats` {{< new-in 0.115.1 >}} is enabled, Hugo writes a `hugo_stats.json` file on each build with HTML classes etc. that's used in the rendered output. Changes to this file will trigger a rebuild of the `styles.css` file. You also need to add `hugo_stats.json` to Hugo's server watcher. See [Hugo Starter Tailwind Basic](https://github.com/bep/hugo-starter-tailwind-basic) for a running example.
@y
When `buildStats` {{< new-in 0.115.1 >}} is enabled, Hugo writes a `hugo_stats.json` file on each build with HTML classes etc. that's used in the rendered output. Changes to this file will trigger a rebuild of the `styles.css` file. You also need to add `hugo_stats.json` to Hugo's server watcher. See [Hugo Starter Tailwind Basic](https://github.com/bep/hugo-starter-tailwind-basic) for a running example.
@z

@x
source
: A regexp matching file(s) relative to one of the virtual component directories in Hugo, typically `assets/...`.
@y
source
: A regexp matching file(s) relative to one of the virtual component directories in Hugo, typically `assets/...`.
@z

@x
target
: A regexp matching the keys in the resource cache that should be expired when `source` changes. You can use the matching regexp groups from `source` in the expression, e.g. `$1`.
@y
target
: A regexp matching the keys in the resource cache that should be expired when `source` changes. You can use the matching regexp groups from `source` in the expression, e.g. `$1`.
@z

@x
## Configure server
@y
## Configure server
@z

@x
This is only relevant when running `hugo server`, and it allows to set HTTP headers during development, which allows you to test out your Content Security Policy and similar. The configuration format matches [Netlify's](https://docs.netlify.com/routing/headers/#syntax-for-the-netlify-configuration-file) with slightly more powerful [Glob matching](https://github.com/gobwas/glob):
@y
This is only relevant when running `hugo server`, and it allows to set HTTP headers during development, which allows you to test out your Content Security Policy and similar. The configuration format matches [Netlify's](https://docs.netlify.com/routing/headers/#syntax-for-the-netlify-configuration-file) with slightly more powerful [Glob matching](https://github.com/gobwas/glob):
@z

% snip code...

@x
Since this is "development only", it may make sense to put it below the `development` environment:
@y
Since this is "development only", it may make sense to put it below the `development` environment:
@z

% snip code...

@x
You can also specify simple redirects rules for the server. The syntax is again similar to Netlify's.
@y
You can also specify simple redirects rules for the server. The syntax is again similar to Netlify's.
@z

@x
Note that a `status` code of 200 will trigger a [URL rewrite](https://docs.netlify.com/routing/redirects/rewrites-proxies/), which is what you want in SPA situations, e.g:
@y
Note that a `status` code of 200 will trigger a [URL rewrite](https://docs.netlify.com/routing/redirects/rewrites-proxies/), which is what you want in SPA situations, e.g:
@z

% snip code...

@x
Setting `force=true` will make a redirect even if there is existing content in the path. Note that before Hugo 0.76 `force` was the default behavior, but this is inline with how Netlify does it.
@y
Setting `force=true` will make a redirect even if there is existing content in the path. Note that before Hugo 0.76 `force` was the default behavior, but this is inline with how Netlify does it.
@z

@x
## 404 server error page {#_404-server-error-page}
@y
## 404 server error page {#_404-server-error-page}
@z

@x
{{< new-in 0.103.0 >}}
@y
{{< new-in 0.103.0 >}}
@z

@x
Hugo will, by default, render all 404 errors when running `hugo server` with the `404.html` template. Note that if you have already added one or more redirects to your [server configuration](#configure-server), you need to add the 404 redirect explicitly, e.g:
@y
Hugo will, by default, render all 404 errors when running `hugo server` with the `404.html` template. Note that if you have already added one or more redirects to your [server configuration](#configure-server), you need to add the 404 redirect explicitly, e.g:
@z

% snip code...

@x
## Configure title case
@y
## Configure title case
@z

@x
By default, Hugo follows the capitalization rules published in the [Associated Press Stylebook] when creating automatic section titles, and when transforming strings with the [`strings.Title`] function.
@y
By default, Hugo follows the capitalization rules published in the [Associated Press Stylebook] when creating automatic section titles, and when transforming strings with the [`strings.Title`] function.
@z

@x
Change this behavior by setting `titleCaseStyle` in your site configuration to any of the values below:
@y
Change this behavior by setting `titleCaseStyle` in your site configuration to any of the values below:
@z

@x
ap
: Use the capitalization rules published in the [Associated Press Stylebook].
@y
ap
: Use the capitalization rules published in the [Associated Press Stylebook].
@z

@x
chicago
: Use the capitalization rules published in the [Chicago Manual of Style].
@y
chicago
: Use the capitalization rules published in the [Chicago Manual of Style].
@z

@x
go
: Capitalize the first letter of every word.
@y
go
: Capitalize the first letter of every word.
@z

@x
firstupper
: Capitalize the first letter of the first word.
@y
firstupper
: Capitalize the first letter of the first word.
@z

@x
none
: Disable transformation of automatic section titles, and disable the transformation performed by the `strings.Title` function. This is useful if you would prefer to manually capitalize section titles as needed, and to bypass opinionated theme usage of the `strings.Title` function.
@y
none
: Disable transformation of automatic section titles, and disable the transformation performed by the `strings.Title` function. This is useful if you would prefer to manually capitalize section titles as needed, and to bypass opinionated theme usage of the `strings.Title` function.
@z

% snip links...

@x
## Configuration environment variables
@y
## Configuration environment variables
@z

@x
DART_SASS_BINARY
: (`string`) The absolute path to the Dart Sass executable. By default, Hugo searches for the executable in each of the paths in the `PATH` environment variable.
@y
DART_SASS_BINARY
: (`string`) The absolute path to the Dart Sass executable. By default, Hugo searches for the executable in each of the paths in the `PATH` environment variable.
@z

@x
HUGO_ENVIRONMENT
: (`string`) Overrides the default [environment], typically one of `development`, `staging`, or `production`.
@y
HUGO_ENVIRONMENT
: (`string`) Overrides the default [environment], typically one of `development`, `staging`, or `production`.
@z

% snip link...

@x
HUGO_FILE_LOG_FORMAT
: (`string`) A format string for the file path, line number, and column number displayed when reporting errors, or when calling the `Position` method from a shortcode or Markdown render hook. Valid tokens are `:file`, `:line`, and `:col`. Default is `:file::line::col`.
@y
HUGO_FILE_LOG_FORMAT
: (`string`) A format string for the file path, line number, and column number displayed when reporting errors, or when calling the `Position` method from a shortcode or Markdown render hook. Valid tokens are `:file`, `:line`, and `:col`. Default is `:file::line::col`.
@z

@x
{{< new-in 0.123.0 >}}
@y
{{< new-in 0.123.0 >}}
@z

@x
HUGO_MEMORYLIMIT
: (`int`) The maximum amount of system memory, in gigabytes, that Hugo can use while rendering your site. Default is 25% of total system memory.
@y
HUGO_MEMORYLIMIT
: (`int`) The maximum amount of system memory, in gigabytes, that Hugo can use while rendering your site. Default is 25% of total system memory.
@z

@x
HUGO_NUMWORKERMULTIPLIER
: (`int`) The number of workers used in parallel processing. Default is the number of logical CPUs.
@y
HUGO_NUMWORKERMULTIPLIER
: (`int`) The number of workers used in parallel processing. Default is the number of logical CPUs.
@z

@x
## Configure with environment variables
@y
## Configure with environment variables
@z

@x
In addition to the 3 configuration options already mentioned, configuration key-values can be defined through operating system environment variables.
@y
In addition to the 3 configuration options already mentioned, configuration key-values can be defined through operating system environment variables.
@z

@x
For example, the following command will effectively set a website's title on Unix-like systems:
@y
For example, the following command will effectively set a website's title on Unix-like systems:
@z

@x
```txt
$ env HUGO_TITLE="Some Title" hugo
```
@y
```txt
$ env HUGO_TITLE="Some Title" hugo
```
@z

@x
This is really useful if you use a service such as Netlify to deploy your site. Look at the Hugo docs [Netlify configuration file](https://github.com/gohugoio/hugoDocs/blob/master/netlify.toml) for an example.
@y
This is really useful if you use a service such as Netlify to deploy your site. Look at the Hugo docs [Netlify configuration file](https://github.com/gohugoio/hugoDocs/blob/master/netlify.toml) for an example.
@z

@x
{{% note %}}
Names must be prefixed with `HUGO_` and the configuration key must be set in uppercase when setting operating system environment variables.
@y
{{% note %}}
Names must be prefixed with `HUGO_` and the configuration key must be set in uppercase when setting operating system environment variables.
@z

@x
To set configuration parameters, prefix the name with `HUGO_PARAMS_`
{{% /note %}}
@y
To set configuration parameters, prefix the name with `HUGO_PARAMS_`
{{% /note %}}
@z

@x
If you are using snake_cased variable names, the above will not work. Hugo determines the delimiter to use by the first character after `HUGO`. This allows you to define environment variables on the form `HUGOxPARAMSxAPI_KEY=abcdefgh`, using any [allowed](https://stackoverflow.com/questions/2821043/allowed-characters-in-linux-environment-variable-names#:~:text=So%20names%20may%20contain%20any,not%20begin%20with%20a%20digit.) delimiter.
@y
If you are using snake_cased variable names, the above will not work. Hugo determines the delimiter to use by the first character after `HUGO`. This allows you to define environment variables on the form `HUGOxPARAMSxAPI_KEY=abcdefgh`, using any [allowed](https://stackoverflow.com/questions/2821043/allowed-characters-in-linux-environment-variable-names#:~:text=So%20names%20may%20contain%20any,not%20begin%20with%20a%20digit.) delimiter.
@z

@x
## Ignore content and data files when rendering
@y
## Ignore content and data files when rendering
@z

@x
{{% note %}}
This works, but we recommend you use the newer and more powerful [includeFiles and excludeFiles](/hugo-modules/configuration/#module-configuration-mounts) mount options.
{{% /note %}}
@y
{{% note %}}
This works, but we recommend you use the newer and more powerful [includeFiles and excludeFiles](/hugo-modules/configuration/#module-configuration-mounts) mount options.
{{% /note %}}
@z

@x
To exclude specific files from the `content`, `data`, and `i18n` directories when rendering your site, set `ignoreFiles` to one or more regular expressions to match against the absolute file path.
@y
To exclude specific files from the `content`, `data`, and `i18n` directories when rendering your site, set `ignoreFiles` to one or more regular expressions to match against the absolute file path.
@z

@x
To ignore files ending with `.foo` or `.boo`:
@y
To ignore files ending with `.foo` or `.boo`:
@z

% snip code...

@x
To ignore a file using the absolute file path:
@y
To ignore a file using the absolute file path:
@z

% snip code...

@x
## Configure front matter
@y
## Configure front matter
@z

@x
### Configure dates
@y
### Configure dates
@z

@x
Dates are important in Hugo, and you can configure how Hugo assigns dates to your content pages. You do this by adding a `frontmatter` section to your `hugo.toml`.
@y
Dates are important in Hugo, and you can configure how Hugo assigns dates to your content pages. You do this by adding a `frontmatter` section to your `hugo.toml`.
@z

@x
The default configuration is:
@y
The default configuration is:
@z

@x
{{< code-toggle config=frontmatter />}}
@y
{{< code-toggle config=frontmatter />}}
@z

@x
If you, as an example, have a non-standard date parameter in some of your content, you can override the setting for `date`:
@y
If you, as an example, have a non-standard date parameter in some of your content, you can override the setting for `date`:
@z

% snip code...

@x
The `:default` is a shortcut to the default settings. The above will set `.Date` to the date value in `myDate` if present, if not we will look in `date`,`publishDate`, `lastmod` and pick the first valid date.
@y
The `:default` is a shortcut to the default settings. The above will set `.Date` to the date value in `myDate` if present, if not we will look in `date`,`publishDate`, `lastmod` and pick the first valid date.
@z

@x
In the list to the right, values starting with ":" are date handlers with a special meaning (see below). The others are just names of date parameters (case insensitive) in your front matter configuration. Also note that Hugo have some built-in aliases to the above: `lastmod` => `modified`, `publishDate` => `pubdate`, `published` and `expiryDate` => `unpublishdate`. With that, as an example, using `pubDate` as a date in front matter, will, by default, be assigned to `.PublishDate`.
@y
In the list to the right, values starting with ":" are date handlers with a special meaning (see below). The others are just names of date parameters (case insensitive) in your front matter configuration. Also note that Hugo have some built-in aliases to the above: `lastmod` => `modified`, `publishDate` => `pubdate`, `published` and `expiryDate` => `unpublishdate`. With that, as an example, using `pubDate` as a date in front matter, will, by default, be assigned to `.PublishDate`.
@z

@x
The special date handlers are:
@y
The special date handlers are:
@z

@x
`:fileModTime`
: Fetches the date from the content file's last modification timestamp.
@y
`:fileModTime`
: Fetches the date from the content file's last modification timestamp.
@z

@x
An example:
@y
An example:
@z

% snip code...

@x
The above will try first to extract the value for `.Lastmod` starting with the `lastmod` front matter parameter, then the content file's modification timestamp. The last, `:default` should not be needed here, but Hugo will finally look for a valid date in `:git`, `date` and then `publishDate`.
@y
The above will try first to extract the value for `.Lastmod` starting with the `lastmod` front matter parameter, then the content file's modification timestamp. The last, `:default` should not be needed here, but Hugo will finally look for a valid date in `:git`, `date` and then `publishDate`.
@z

@x
`:filename`
: Fetches the date from the content file's file name. For example, `2018-02-22-mypage.md` will extract the date `2018-02-22`. Also, if `slug` is not set, `mypage` will be used as the value for `.Slug`.
@y
`:filename`
: Fetches the date from the content file's file name. For example, `2018-02-22-mypage.md` will extract the date `2018-02-22`. Also, if `slug` is not set, `mypage` will be used as the value for `.Slug`.
@z

@x
An example:
@y
An example:
@z

% snip code...

@x
The above will try first to extract the value for `.Date` from the file name, then it will look in front matter parameters `date`, `publishDate` and lastly `lastmod`.
@y
The above will try first to extract the value for `.Date` from the file name, then it will look in front matter parameters `date`, `publishDate` and lastly `lastmod`.
@z

@x
`:git`
: This is the Git author date for the last revision of this content file. This will only be set if `--enableGitInfo` is set or `enableGitInfo = true` is set in site configuration.
@y
`:git`
: This is the Git author date for the last revision of this content file. This will only be set if `--enableGitInfo` is set or `enableGitInfo = true` is set in site configuration.
@z

@x
## Configure minify
@y
## Configure minify
@z

@x
See the [tdewolff/minify] project page for details.
@y
See the [tdewolff/minify] project page for details.
@z

@x
[tdewolff/minify]: https://github.com/tdewolff/minify
@y
[tdewolff/minify]: https://github.com/tdewolff/minify
@z

@x
Default configuration:
@y
Default configuration:
@z

@x
{{< code-toggle config=minify />}}
@y
{{< code-toggle config=minify />}}
@z

@x
## Configure file caches
@y
## Configure file caches
@z

@x
Since Hugo 0.52 you can configure more than just the `cacheDir`. This is the default configuration:
@y
Since Hugo 0.52 you can configure more than just the `cacheDir`. This is the default configuration:
@z

@x
{{< code-toggle config=caches />}}
@y
{{< code-toggle config=caches />}}
@z

@x
You can override any of these cache settings in your own `hugo.toml`.
@y
You can override any of these cache settings in your own `hugo.toml`.
@z

@x
### The keywords explained
@y
### The keywords explained
@z

@x
cacheDir
: (`string`) See [Configure cacheDir](#configure-cachedir).
@y
cacheDir
: (`string`) See [Configure cacheDir](#configure-cachedir).
@z

@x
project
: (`string`) The base directory name of the current Hugo project. This means that, in its default setting, every project will have separated file caches, which means that when you do `hugo --gc` you will not touch files related to other Hugo projects running on the same PC.
@y
project
: (`string`) The base directory name of the current Hugo project. This means that, in its default setting, every project will have separated file caches, which means that when you do `hugo --gc` you will not touch files related to other Hugo projects running on the same PC.
@z

@x
resourceDir
: (`string`) This is the value of the `resourceDir` configuration option.
@y
resourceDir
: (`string`) This is the value of the `resourceDir` configuration option.
@z

@x
maxAge
: (`string`) This is the duration before a cache entry will be evicted, -1 means forever and 0 effectively turns that particular cache off. Uses Go's `time.Duration`, so valid values are `"10s"` (10 seconds), `"10m"` (10 minutes) and `"10h"` (10 hours).
@y
maxAge
: (`string`) This is the duration before a cache entry will be evicted, -1 means forever and 0 effectively turns that particular cache off. Uses Go's `time.Duration`, so valid values are `"10s"` (10 seconds), `"10m"` (10 minutes) and `"10h"` (10 hours).
@z

@x
dir
: (`string`) The absolute path to where the files for this cache will be stored. Allowed starting placeholders are `:cacheDir` and `:resourceDir` (see above).
@y
dir
: (`string`) The absolute path to where the files for this cache will be stored. Allowed starting placeholders are `:cacheDir` and `:resourceDir` (see above).
@z

@x
## Configure cacheDir
@y
## Configure cacheDir
@z

@x
This is the directory where Hugo by default will store its file caches. See [Configure File Caches](#configure-file-caches).
@y
This is the directory where Hugo by default will store its file caches. See [Configure File Caches](#configure-file-caches).
@z

@x
This can be set using the `cacheDir` config option or via the OS environment variable `HUGO_CACHEDIR`.
@y
This can be set using the `cacheDir` config option or via the OS environment variable `HUGO_CACHEDIR`.
@z

@x
If this is not set, Hugo will use, in order of preference:
@y
If this is not set, Hugo will use, in order of preference:
@z

@x
1. If running on Netlify: `/opt/build/cache/hugo_cache/`. This means that if you run your builds on Netlify, all caches configured with `:cacheDir` will be saved and restored on the next build. For other CI vendors, please read their documentation. For an CircleCI example, see [this configuration](https://github.com/bep/hugo-sass-test/blob/6c3960a8f4b90e8938228688bc49bdcdd6b2d99e/.circleci/config.yml).
1. In a `hugo_cache` directory below the OS user cache directory as defined by Go's [os.UserCacheDir](https://pkg.go.dev/os#UserCacheDir). On Unix systems, this is `$XDG_CACHE_HOME` as specified by [basedir-spec-latest](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html) if non-empty, else `$HOME/.cache`. On MacOS, this is `$HOME/Library/Caches`. On Windows, this is`%LocalAppData%`. On Plan 9, this is `$home/lib/cache`. {{< new-in 0.116.0 >}}
1. In a  `hugo_cache_$USER` directory below the OS temp dir.
@y
1. If running on Netlify: `/opt/build/cache/hugo_cache/`. This means that if you run your builds on Netlify, all caches configured with `:cacheDir` will be saved and restored on the next build. For other CI vendors, please read their documentation. For an CircleCI example, see [this configuration](https://github.com/bep/hugo-sass-test/blob/6c3960a8f4b90e8938228688bc49bdcdd6b2d99e/.circleci/config.yml).
1. In a `hugo_cache` directory below the OS user cache directory as defined by Go's [os.UserCacheDir](https://pkg.go.dev/os#UserCacheDir). On Unix systems, this is `$XDG_CACHE_HOME` as specified by [basedir-spec-latest](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html) if non-empty, else `$HOME/.cache`. On MacOS, this is `$HOME/Library/Caches`. On Windows, this is`%LocalAppData%`. On Plan 9, this is `$home/lib/cache`. {{< new-in 0.116.0 >}}
1. In a  `hugo_cache_$USER` directory below the OS temp dir.
@z

@x
If you want to know the current value of `cacheDir`, you can run `hugo config`, e.g: `hugo config | grep cachedir`.
@y
If you want to know the current value of `cacheDir`, you can run `hugo config`, e.g: `hugo config | grep cachedir`.
@z

% snip links...
