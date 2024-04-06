%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: RSS templates
description: Use the embedded RSS template, or create your own.
categories: [templates]
keywords: [rss,xml,templates]
@y
title: RSS テンプレート
description: Use the embedded RSS template, or create your own.
categories: [templates]
keywords: [rss,xml,templates]
@z

@x
## Configuration
@y
## Configuration
@z

@x
By default, when you build your site, Hugo generates RSS feeds for home, section, taxonomy, and term pages. Control feed generation in your site configuration. For example, to generate feeds for home and section pages, but not for taxonomy and term pages:
@y
By default, when you build your site, Hugo generates RSS feeds for home, section, taxonomy, and term pages. Control feed generation in your site configuration. For example, to generate feeds for home and section pages, but not for taxonomy and term pages:
@z

% snip code...

@x
To disable feed generation for all [page kinds]:
@y
To disable feed generation for all [page kinds]:
@z

% snip link...
% snip code...

@x
By default, the number of items in each feed is unlimited. Change this as needed in your site configuration:
@y
By default, the number of items in each feed is unlimited. Change this as needed in your site configuration:
@z

% snip code...

@x
Set `limit` to `-1` to generate an unlimited number of items per feed.
@y
Set `limit` to `-1` to generate an unlimited number of items per feed.
@z

@x
The built-in RSS template will render the following values, if present, from your site configuration:
@y
The built-in RSS template will render the following values, if present, from your site configuration:
@z

% snip code...

@x
## Include feed reference
@y
## Include feed reference
@z

@x
To include a feed reference in the `head` element of your rendered pages, place this within the `head` element of your templates:
@y
To include a feed reference in the `head` element of your rendered pages, place this within the `head` element of your templates:
@z

% snip code...

@x
Hugo will render this to:
@y
Hugo will render this to:
@z

% snip code...

@x
## Custom templates
@y
## Custom templates
@z

@x
Override Hugo's [embedded RSS template] by creating one or more of your own, following the naming conventions as shown in the [template lookup order].
@y
Override Hugo's [embedded RSS template] by creating one or more of your own, following the naming conventions as shown in the [template lookup order].
@z

% snip link...

@x
For example, to use different templates for home, section, taxonomy, and term pages:
@y
For example, to use different templates for home, section, taxonomy, and term pages:
@z

% snip text...

@x
RSS templates receive the `.Page` and `.Site` objects in context.
@y
RSS templates receive the `.Page` and `.Site` objects in context.
@z

@x
## Template lookup order
@y
## Template lookup order
@z

@x
The table below shows the RSS template lookup order for the different page kinds. The first listing shows the lookup order when running with a theme (`demoTheme`).
@y
The table below shows the RSS template lookup order for the different page kinds. The first listing shows the lookup order when running with a theme (`demoTheme`).
@z

@x
{{< datatable-filtered "output" "layouts" "OutputFormat == rss" "Example" "OutputFormat" "Suffix" "Template Lookup Order" >}}
@y
{{< datatable-filtered "output" "layouts" "OutputFormat == rss" "Example" "OutputFormat" "Suffix" "Template Lookup Order" >}}
@z
