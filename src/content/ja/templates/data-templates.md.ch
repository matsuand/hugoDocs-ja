%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Data templates
description: In addition to Hugo's built-in variables, you can specify your own custom data in templates or shortcodes that pull from both local and dynamic sources.
categories: [templates]
keywords: [data,dynamic,csv,json,toml,yaml,xml]
@y
title: データテンプレート
description: In addition to Hugo's built-in variables, you can specify your own custom data in templates or shortcodes that pull from both local and dynamic sources.
categories: [templates]
keywords: [data,dynamic,csv,json,toml,yaml,xml]
@z

@x
Hugo supports loading data from YAML, JSON, XML, and TOML files located in the `data` directory at the root of your Hugo project.
@y
Hugo supports loading data from YAML, JSON, XML, and TOML files located in the `data` directory at the root of your Hugo project.
@z

@x
{{< youtube FyPgSuwIMWQ >}}
@y
{{< youtube FyPgSuwIMWQ >}}
@z

@x
## The data directory
@y
## The data directory
@z

@x
The `data` directory should store additional data for Hugo to use when generating your site.
@y
The `data` directory should store additional data for Hugo to use when generating your site.
@z

@x
Data files are not for generating standalone pages. They should supplement content files by:
@y
Data files are not for generating standalone pages. They should supplement content files by:
@z

@x
- Extending the content when the front matter fields grow out of control, or
- Showing a larger dataset in a template (see the example below).
@y
- Extending the content when the front matter fields grow out of control, or
- Showing a larger dataset in a template (see the example below).
@z

@x
In both cases, it's a good idea to outsource the data in their (own) files.
@y
In both cases, it's a good idea to outsource the data in their (own) files.
@z

@x
These files must be YAML, JSON, XML, or TOML files (using the `.yml`, `.yaml`, `.json`, `.xml`, or `.toml` extension). The data will be accessible as a `map` in the `.Site.Data` variable.
@y
These files must be YAML, JSON, XML, or TOML files (using the `.yml`, `.yaml`, `.json`, `.xml`, or `.toml` extension). The data will be accessible as a `map` in the `.Site.Data` variable.
@z

@x
To access the data using the `site.Data.filename` notation, the file name must begin with an underscore or a Unicode letter, followed by zero or more underscores, Unicode letters, or Unicode digits. For example:
@y
To access the data using the `site.Data.filename` notation, the file name must begin with an underscore or a Unicode letter, followed by zero or more underscores, Unicode letters, or Unicode digits. For example:
@z

@x
- `123.json` - Invalid
- `x123.json` - Valid
- `_123.json` - Valid
@y
- `123.json` - Invalid
- `x123.json` - Valid
- `_123.json` - Valid
@z

@x
To access the data using the [`index`](/functions/collections/indexfunction) function, the file name is irrelevant. For example:
@y
To access the data using the [`index`](/functions/collections/indexfunction) function, the file name is irrelevant. For example:
@z

@x
Data file|Template code
:--|:--
`123.json`|`{{ index .Site.Data "123" }}`
`x123.json`|`{{ index .Site.Data "x123" }}`
`_123.json`|`{{ index .Site.Data "_123" }}`
`x-123.json`|`{{ index .Site.Data "x-123" }}`
@y
Data file|Template code
:--|:--
`123.json`|`{{ index .Site.Data "123" }}`
`x123.json`|`{{ index .Site.Data "x123" }}`
`_123.json`|`{{ index .Site.Data "_123" }}`
`x-123.json`|`{{ index .Site.Data "x-123" }}`
@z

@x
## Data files in themes
@y
## Data files in themes
@z

@x
Data Files can also be used in themes.
@y
Data Files can also be used in themes.
@z

@x
However, note that the theme data files are merged with the project directory taking precedence. That is, Given two files with the same name and relative path, the data in the file in the root project `data` directory will override the data from the file in the `themes/<THEME>/data` directory *for keys that are duplicated*).
@y
However, note that the theme data files are merged with the project directory taking precedence. That is, Given two files with the same name and relative path, the data in the file in the root project `data` directory will override the data from the file in the `themes/<THEME>/data` directory *for keys that are duplicated*).
@z

@x
Therefore, theme authors should be careful not to include data files that could be easily overwritten by a user who decides to [customize a theme][customize]. For theme-specific data items that shouldn't be overridden, it can be wise to prefix the folder structure with a namespace; e.g. `mytheme/data/<THEME>/somekey/...`. To check if any such duplicate exists, run hugo with the `-v` flag.
@y
Therefore, theme authors should be careful not to include data files that could be easily overwritten by a user who decides to [customize a theme][customize]. For theme-specific data items that shouldn't be overridden, it can be wise to prefix the folder structure with a namespace; e.g. `mytheme/data/<THEME>/somekey/...`. To check if any such duplicate exists, run hugo with the `-v` flag.
@z

@x
The keys in the map created with data templates from data files will be a dot-chained set of `path`, `filename`, and `key` in the file (if applicable).
@y
The keys in the map created with data templates from data files will be a dot-chained set of `path`, `filename`, and `key` in the file (if applicable).
@z

@x
This is best explained with an example:
@y
This is best explained with an example:
@z

@x
## Examples
@y
## Examples
@z

@x
### Jaco Pastorius' Solo Discography
@y
### Jaco Pastorius' Solo Discography
@z

@x
[Jaco Pastorius](https://en.wikipedia.org/wiki/Jaco_Pastorius_discography) was a great bass player, but his solo discography is short enough to use as an example. [John Patitucci](https://en.wikipedia.org/wiki/John_Patitucci) is another bass giant.
@y
[Jaco Pastorius](https://en.wikipedia.org/wiki/Jaco_Pastorius_discography) was a great bass player, but his solo discography is short enough to use as an example. [John Patitucci](https://en.wikipedia.org/wiki/John_Patitucci) is another bass giant.
@z

@x
The example below is a bit contrived, but it illustrates the flexibility of data Files. This example uses TOML as its file format with the two following data files:
@y
The example below is a bit contrived, but it illustrates the flexibility of data Files. This example uses TOML as its file format with the two following data files:
@z

@x
* `data/jazz/bass/jacopastorius.toml`
* `data/jazz/bass/johnpatitucci.toml`
@y
* `data/jazz/bass/jacopastorius.toml`
* `data/jazz/bass/johnpatitucci.toml`
@z

@x
`jacopastorius.toml` contains the content below. `johnpatitucci.toml` contains a similar list:
@y
`jacopastorius.toml` contains the content below. `johnpatitucci.toml` contains a similar list:
@z

@x
{{< code-toggle file=data/jazz/bass/jacopastorius >}}
discography = [
"1974 - Modern American Music … Period! The Criteria Sessions",
"1974 - Jaco",
"1976 - Jaco Pastorius",
"1981 - Word of Mouth",
"1981 - The Birthday Concert (released in 1995)",
"1982 - Twins I & II (released in 1999)",
"1983 - Invitation",
"1986 - Broadway Blues (released in 1998)",
"1986 - Honestly Solo Live (released in 1990)",
"1986 - Live In Italy (released in 1991)",
"1986 - Heavy'n Jazz (released in 1992)",
"1991 - Live In New York City, Volumes 1-7.",
"1999 - Rare Collection (compilation)",
"2003 - Punk Jazz: The Jaco Pastorius Anthology (compilation)",
"2007 - The Essential Jaco Pastorius (compilation)"
]
{{< /code-toggle >}}
@y
{{< code-toggle file=data/jazz/bass/jacopastorius >}}
discography = [
"1974 - Modern American Music … Period! The Criteria Sessions",
"1974 - Jaco",
"1976 - Jaco Pastorius",
"1981 - Word of Mouth",
"1981 - The Birthday Concert (released in 1995)",
"1982 - Twins I & II (released in 1999)",
"1983 - Invitation",
"1986 - Broadway Blues (released in 1998)",
"1986 - Honestly Solo Live (released in 1990)",
"1986 - Live In Italy (released in 1991)",
"1986 - Heavy'n Jazz (released in 1992)",
"1991 - Live In New York City, Volumes 1-7.",
"1999 - Rare Collection (compilation)",
"2003 - Punk Jazz: The Jaco Pastorius Anthology (compilation)",
"2007 - The Essential Jaco Pastorius (compilation)"
]
{{< /code-toggle >}}
@z

@x
The list of bass players can be accessed via `.Site.Data.jazz.bass`, a single bass player by adding the file name without the suffix, e.g. `.Site.Data.jazz.bass.jacopastorius`.
@y
The list of bass players can be accessed via `.Site.Data.jazz.bass`, a single bass player by adding the file name without the suffix, e.g. `.Site.Data.jazz.bass.jacopastorius`.
@z

@x
You can now render the list of recordings for all the bass players in a template:
@y
You can now render the list of recordings for all the bass players in a template:
@z

% snip code...

@x
And then in the `partials/artist.html`:
@y
And then in the `partials/artist.html`:
@z

% snip code...

@x
Discover a new favorite bass player? Just add another `.toml` file in the same directory.
@y
Discover a new favorite bass player? Just add another `.toml` file in the same directory.
@z

@x
### Accessing named values in a data file
@y
### Accessing named values in a data file
@z

@x
Assume you have the following data structure in your `user0123` data file located directly in `data/`:
@y
Assume you have the following data structure in your `user0123` data file located directly in `data/`:
@z

@x
{{< code-toggle file=data/user0123 >}}
Name: User0123
"Short Description": "He is a **jolly good** fellow."
Achievements:
  - "Can create a Key, Value list from Data File"
  - "Learns Hugo"
  - "Reads documentation"
{{</ code-toggle >}}
@y
{{< code-toggle file=data/user0123 >}}
Name: User0123
"Short Description": "He is a **jolly good** fellow."
Achievements:
  - "Can create a Key, Value list from Data File"
  - "Learns Hugo"
  - "Reads documentation"
{{</ code-toggle >}}
@z

@x
You can use the following code to render the `Short Description` in your layout:
@y
You can use the following code to render the `Short Description` in your layout:
@z

% snip code...

@x
Note the use of the [`markdownify`] function. This will send the description through the Markdown rendering engine.
@y
Note the use of the [`markdownify`] function. This will send the description through the Markdown rendering engine.
@z

@x
## Remote data
@y
## Remote data
@z

@x
Retrieve remote data using these template functions:
@y
Retrieve remote data using these template functions:
@z

@x
- [`resources.GetRemote`](/functions/resources/getremote) (recommended)
- [`data.GetCSV`](/functions/data/getcsv)
- [`data.GetJSON`](/functions/data/getjson)
@y
- [`resources.GetRemote`](/functions/resources/getremote) (recommended)
- [`data.GetCSV`](/functions/data/getcsv)
- [`data.GetJSON`](/functions/data/getjson)
@z

@x
## LiveReload with data files
@y
## LiveReload with data files
@z

@x
There is no chance to trigger a [LiveReload] when the content of a URL changes. However, when a *local* file changes (i.e., `data/*` and `themes/<THEME>/data/*`), a LiveReload will be triggered. Note too that because downloading data takes a while, Hugo stops processing your Markdown files until the data download has been completed.
@y
There is no chance to trigger a [LiveReload] when the content of a URL changes. However, when a *local* file changes (i.e., `data/*` and `themes/<THEME>/data/*`), a LiveReload will be triggered. Note too that because downloading data takes a while, Hugo stops processing your Markdown files until the data download has been completed.
@z

@x
{{% note %}}
If you change any local file and the LiveReload is triggered, Hugo will read the data-driven (URL) content from the cache. If you have disabled the cache (i.e., by running the server with `hugo server --ignoreCache`), Hugo will re-download the content every time LiveReload triggers. This can create *huge* traffic. You may reach API limits quickly.
{{% /note %}}
@y
{{% note %}}
If you change any local file and the LiveReload is triggered, Hugo will read the data-driven (URL) content from the cache. If you have disabled the cache (i.e., by running the server with `hugo server --ignoreCache`), Hugo will re-download the content every time LiveReload triggers. This can create *huge* traffic. You may reach API limits quickly.
{{% /note %}}
@z

@x
## Examples of data-driven content
@y
## Examples of data-driven content
@z

@x
- Photo gallery JSON powered: [https://github.com/pcdummy/hugo-lightslider-example](https://github.com/pcdummy/hugo-lightslider-example).
- GitHub Starred Repositories [in a post](https://github.com/SchumacherFM/blog-cs/blob/master/content%2Fposts%2Fgithub-starred.md) using data-driven content in a [custom short code](https://github.com/SchumacherFM/blog-cs/blob/master/layouts%2Fshortcodes%2FghStarred.html).
- Importing exported social media data from popular services using [https://github.com/ttybitnik/diego](https://github.com/ttybitnik/diego).
@y
- Photo gallery JSON powered: [https://github.com/pcdummy/hugo-lightslider-example](https://github.com/pcdummy/hugo-lightslider-example).
- GitHub Starred Repositories [in a post](https://github.com/SchumacherFM/blog-cs/blob/master/content%2Fposts%2Fgithub-starred.md) using data-driven content in a [custom short code](https://github.com/SchumacherFM/blog-cs/blob/master/layouts%2Fshortcodes%2FghStarred.html).
- Importing exported social media data from popular services using [https://github.com/ttybitnik/diego](https://github.com/ttybitnik/diego).
@z

@x
## Specs for data formats
@y
## Specs for data formats
@z

@x
* [TOML Spec][toml]
* [YAML Spec][yaml]
* [JSON Spec][json]
* [CSV Spec][csv]
* [XML Spec][xml]
@y
* [TOML Spec][toml]
* [YAML Spec][yaml]
* [JSON Spec][json]
* [CSV Spec][csv]
* [XML Spec][xml]
@z

% snip links...
