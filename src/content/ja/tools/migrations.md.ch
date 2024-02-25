%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Migrate to Hugo
linkTitle: Migrations
description: A list of community-developed tools for migrating from your existing static site generator or content management system to Hugo.
categories: [developer tools]
keywords: [migrations,jekyll,wordpress,drupal,ghost,contentful]
menu:
  docs:
    parent: developer-tools
    weight: 50
weight: 50
toc: true
aliases: [/developer-tools/migrations/, /developer-tools/migrated/]
---
@y
---
title: Migrate to Hugo
linkTitle: Migrations
description: A list of community-developed tools for migrating from your existing static site generator or content management system to Hugo.
categories: [developer tools]
keywords: [migrations,jekyll,wordpress,drupal,ghost,contentful]
menu:
  docs:
    parent: developer-tools
    weight: 50
weight: 50
toc: true
aliases: [/developer-tools/migrations/, /developer-tools/migrated/]
---
@z

@x
This section highlights some projects around Hugo that are independently developed. These tools try to extend the functionality of our static site generator or help you to get started.
@y
This section highlights some projects around Hugo that are independently developed. These tools try to extend the functionality of our static site generator or help you to get started.
@z

@x
Take a look at this list of migration tools if you currently use other blogging tools like Jekyll or WordPress but intend to switch to Hugo instead. They'll take care to export your content into Hugo-friendly formats.
@y
Take a look at this list of migration tools if you currently use other blogging tools like Jekyll or WordPress but intend to switch to Hugo instead. They'll take care to export your content into Hugo-friendly formats.
@z

@x
## Jekyll
@y
## Jekyll
@z

@x
Alternatively, you can use the [Jekyll import command](/commands/hugo_import_jekyll/).
@y
Alternatively, you can use the [Jekyll import command](/commands/hugo_import_jekyll/).
@z

@x
[JekyllToHugo](https://github.com/fredrikloch/JekyllToHugo)
: A Small script for converting Jekyll blog posts to a Hugo site.
@y
[JekyllToHugo](https://github.com/fredrikloch/JekyllToHugo)
: A Small script for converting Jekyll blog posts to a Hugo site.
@z

@x
[ConvertToHugo](https://github.com/coderzh/ConvertToHugo)
: Convert your blog from Jekyll to Hugo.
@y
[ConvertToHugo](https://github.com/coderzh/ConvertToHugo)
: Convert your blog from Jekyll to Hugo.
@z

@x
## Octopress
@y
## Octopress
@z

@x
[octohug](https://github.com/codebrane/octohug)
: Octopress to Hugo migrator.
@y
[octohug](https://github.com/codebrane/octohug)
: Octopress to Hugo migrator.
@z

@x
## DokuWiki
@y
## DokuWiki
@z

@x
[dokuwiki-to-hugo](https://github.com/wgroeneveld/dokuwiki-to-hugo)
: Migrates your DokuWiki source pages from [DokuWiki syntax](https://www.dokuwiki.org/wiki:syntax) to Hugo Markdown syntax. Includes extra's like the TODO plugin. Written with extensibility in mind using python 3. Also generates a TOML header for each page. Designed to copypaste the wiki directory into your /content directory.
@y
[dokuwiki-to-hugo](https://github.com/wgroeneveld/dokuwiki-to-hugo)
: Migrates your DokuWiki source pages from [DokuWiki syntax](https://www.dokuwiki.org/wiki:syntax) to Hugo Markdown syntax. Includes extra's like the TODO plugin. Written with extensibility in mind using python 3. Also generates a TOML header for each page. Designed to copypaste the wiki directory into your /content directory.
@z

@x
## WordPress
@y
## WordPress
@z

@x
[wordpress-to-hugo-exporter](https://github.com/SchumacherFM/wordpress-to-hugo-exporter)
: A one-click WordPress plugin that converts all posts, pages, taxonomies, metadata, and settings to Markdown and YAML which can be dropped into Hugo. (Note: If you have trouble using this plugin, you  - \s-\scan [export your site for Jekyll](https://wordpress.org/plugins/jekyll-exporter/) and use Hugo's built in Jekyll converter listed above.)
@y
[wordpress-to-hugo-exporter](https://github.com/SchumacherFM/wordpress-to-hugo-exporter)
: A one-click WordPress plugin that converts all posts, pages, taxonomies, metadata, and settings to Markdown and YAML which can be dropped into Hugo. (Note: If you have trouble using this plugin, you  - \s-\scan [export your site for Jekyll](https://wordpress.org/plugins/jekyll-exporter/) and use Hugo's built in Jekyll converter listed above.)
@z

@x
[blog2md](https://github.com/palaniraja/blog2md)
: Works with [exported xml](https://en.support.wordpress.com/export/) file of your free YOUR-TLD.wordpress.com website. It also saves approved comments to `YOUR-POST-NAME-comments.md` file along with posts.
@y
[blog2md](https://github.com/palaniraja/blog2md)
: Works with [exported xml](https://en.support.wordpress.com/export/) file of your free YOUR-TLD.wordpress.com website. It also saves approved comments to `YOUR-POST-NAME-comments.md` file along with posts.
@z

@x
[wordhugopress](https://github.com/nantipov/wordhugopress)
: A small utility written in Java, exports the entire WordPress site from the database and resource (e.g. images) files stored locally or remotely. Therefore, migration from the backup files is possible. Supports merging of the multiple WordPress sites into a single Hugo one.
@y
[wordhugopress](https://github.com/nantipov/wordhugopress)
: A small utility written in Java, exports the entire WordPress site from the database and resource (e.g. images) files stored locally or remotely. Therefore, migration from the backup files is possible. Supports merging of the multiple WordPress sites into a single Hugo one.
@z

@x
## Medium
@y
## Medium
@z

@x
[medium2md](https://github.com/gautamdhameja/medium-2-md)
: A simple Medium to Hugo exporter able to import stories in one command, including front matter.
@y
[medium2md](https://github.com/gautamdhameja/medium-2-md)
: A simple Medium to Hugo exporter able to import stories in one command, including front matter.
@z

@x
[medium-to-hugo](https://github.com/bgadrian/medium-to-hugo)
: CLI tool written in Go to export medium posts into a Hugo compatible Markdown format. Tags and images are included. All images will be downloaded locally and linked appropriately.
@y
[medium-to-hugo](https://github.com/bgadrian/medium-to-hugo)
: CLI tool written in Go to export medium posts into a Hugo compatible Markdown format. Tags and images are included. All images will be downloaded locally and linked appropriately.
@z

@x
## Tumblr
@y
## Tumblr
@z

@x
[tumblr-importr](https://github.com/carlmjohnson/tumblr-importr)
: An importer that uses the Tumblr API to create a Hugo static site.
@y
[tumblr-importr](https://github.com/carlmjohnson/tumblr-importr)
: An importer that uses the Tumblr API to create a Hugo static site.
@z

@x
[tumblr2hugomarkdown](https://github.com/Wysie/tumblr2hugomarkdown)
: Export all your Tumblr content to Hugo Markdown files with preserved original formatting.
@y
[tumblr2hugomarkdown](https://github.com/Wysie/tumblr2hugomarkdown)
: Export all your Tumblr content to Hugo Markdown files with preserved original formatting.
@z

@x
[Tumblr to Hugo](https://github.com/jipiboily/tumblr-to-hugo)
: A migration tool that converts each of your Tumblr posts to a content file with a proper title and path. Furthermore, "Tumblr to Hugo" creates a CSV file with the original URL and the new path on Hugo, to help you setup the redirections.
@y
[Tumblr to Hugo](https://github.com/jipiboily/tumblr-to-hugo)
: A migration tool that converts each of your Tumblr posts to a content file with a proper title and path. Furthermore, "Tumblr to Hugo" creates a CSV file with the original URL and the new path on Hugo, to help you setup the redirections.
@z

@x
## Drupal
@y
## Drupal
@z

@x
[drupal2hugo](https://github.com/danapsimer/drupal2hugo)
: Convert a Drupal site to Hugo.
@y
[drupal2hugo](https://github.com/danapsimer/drupal2hugo)
: Convert a Drupal site to Hugo.
@z

@x
## Joomla
@y
## Joomla
@z

@x
[hugojoomla](https://github.com/davetcc/hugojoomla)
: This utility written in Java takes a Joomla database and converts all the content into Markdown files. It changes any URLs that are in Joomla's internal format and converts them to a suitable form.
@y
[hugojoomla](https://github.com/davetcc/hugojoomla)
: This utility written in Java takes a Joomla database and converts all the content into Markdown files. It changes any URLs that are in Joomla's internal format and converts them to a suitable form.
@z

@x
## Blogger
@y
## Blogger
@z

@x
[blogimport](https://github.com/natefinch/blogimport)
: A tool to import from Blogger posts to Hugo.
@y
[blogimport](https://github.com/natefinch/blogimport)
: A tool to import from Blogger posts to Hugo.
@z

@x
[blogger-to-hugo](https://pypi.org/project/blogger-to-hugo/)
: Another tool to import Blogger posts to Hugo. It also downloads embedded images so they will be stored locally.
@y
[blogger-to-hugo](https://pypi.org/project/blogger-to-hugo/)
: Another tool to import Blogger posts to Hugo. It also downloads embedded images so they will be stored locally.
@z

@x
[blog2md](https://github.com/palaniraja/blog2md)
: Works with [exported xml](https://support.google.com/blogger/answer/41387?hl=en) file of your YOUR-TLD.blogspot.com website. It also saves comments to `YOUR-POST-NAME-comments.md` file along with posts.
@y
[blog2md](https://github.com/palaniraja/blog2md)
: Works with [exported xml](https://support.google.com/blogger/answer/41387?hl=en) file of your YOUR-TLD.blogspot.com website. It also saves comments to `YOUR-POST-NAME-comments.md` file along with posts.
@z

@x
[BloggerToHugo](https://github.com/huanlin/blogger-to-hugo)
: Yet another tool to import Blogger posts to Hugo. For Windows platform only, and .NET Framework 4.5 is required. See README.md before using this tool.
@y
[BloggerToHugo](https://github.com/huanlin/blogger-to-hugo)
: Yet another tool to import Blogger posts to Hugo. For Windows platform only, and .NET Framework 4.5 is required. See README.md before using this tool.
@z

@x
## Contentful
@y
## Contentful
@z

@x
[contentful-hugo](https://github.com/ModiiMedia/contentful-hugo)
: A tool to create content-files for Hugo from content on [Contentful](https://www.contentful.com/).
@y
[contentful-hugo](https://github.com/ModiiMedia/contentful-hugo)
: A tool to create content-files for Hugo from content on [Contentful](https://www.contentful.com/).
@z

@x
## BlogML
@y
## BlogML
@z

@x
[BlogML2Hugo](https://github.com/jijiechen/BlogML2Hugo)
: A tool that helps you convert BlogML xml file to Hugo Markdown files. Users need to take care of links to attachments and images by themselves. This helps the blogs that export BlogML files (e.g. BlogEngine.NET) transform to hugo sites easily.
@y
[BlogML2Hugo](https://github.com/jijiechen/BlogML2Hugo)
: A tool that helps you convert BlogML xml file to Hugo Markdown files. Users need to take care of links to attachments and images by themselves. This helps the blogs that export BlogML files (e.g. BlogEngine.NET) transform to hugo sites easily.
@z
