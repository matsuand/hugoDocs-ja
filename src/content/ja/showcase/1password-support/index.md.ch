%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
@y
---
@z

@x
title: 1Password Support
date: 2018-02-22
description: "Showcase: \"Compiles 400 pages in five languages in the blink of an eye.\""
siteURL: https://support.1password.com/
byline: "[Mitch Cohen](https://github.com/mitchchn), Documentation Team Lead"
aliases: [/showcase/1password/]
@y
title: 1Password Support
date: 2018-02-22
description: "Showcase: \"Compiles 400 pages in five languages in the blink of an eye.\""
siteURL: https://support.1password.com/
byline: "[Mitch Cohen](https://github.com/mitchchn), Documentation Team Lead"
aliases: [/showcase/1password/]
@z

@x
---
@y
---
@z

@x
At 1Password, we used to go through a different documentation platform every month: blog engines, ebooks, wikis, site generators written in Ruby and JavaScript. Each was inadequate in its own special way. Then we found **Hugo**. We made one last switch, and we're glad we did.
@y
At 1Password, we used to go through a different documentation platform every month: blog engines, ebooks, wikis, site generators written in Ruby and JavaScript. Each was inadequate in its own special way. Then we found **Hugo**. We made one last switch, and we're glad we did.
@z

@x
### Not all static site generators are created equal
@y
### Not all static site generators are created equal
@z

@x
Finding a tool that will make your customers, writers, designers, _and_ DevOps team happy is no easy task, but we managed it with Hugo:
@y
Finding a tool that will make your customers, writers, designers, _and_ DevOps team happy is no easy task, but we managed it with Hugo:
@z

@x
**Hugo is static**. We're a security company, so we swear by static sites and use them wherever possible. We feel much safer pointing customers at HTML files than at a complicated server which needs to be hardened.
@y
**Hugo is static**. We're a security company, so we swear by static sites and use them wherever possible. We feel much safer pointing customers at HTML files than at a complicated server which needs to be hardened.
@z

@x
**Hugo is Go**. We love the Go programming language at 1Password, and we were delighted to learn that Hugo used the same Go template syntax that our designers and front-end developers had already mastered.
@y
**Hugo is Go**. We love the Go programming language at 1Password, and we were delighted to learn that Hugo used the same Go template syntax that our designers and front-end developers had already mastered.
@z

@x
**Hugo is FAST**. Our previous static site generator took nearly a minute to compile our (then much smaller) site. Developers might be used to this, but it wasn't cutting it for writers who wanted to see live previews of their work. Hugo did the same job in milliseconds, and to this day compiles 400 pages in five languages in the blink of an eye.
@y
**Hugo is FAST**. Our previous static site generator took nearly a minute to compile our (then much smaller) site. Developers might be used to this, but it wasn't cutting it for writers who wanted to see live previews of their work. Hugo did the same job in milliseconds, and to this day compiles 400 pages in five languages in the blink of an eye.
@z

@x
**Hugo is flexible**. Thanks to Hugo's content and layout system, we were able to preserve our existing file and folder structure and port our entire production site in a few days. We could then create new content types that weren't possible before, like these snazzy [showcases](https://support.1password.com/explore/extension/).
@y
**Hugo is flexible**. Thanks to Hugo's content and layout system, we were able to preserve our existing file and folder structure and port our entire production site in a few days. We could then create new content types that weren't possible before, like these snazzy [showcases](https://support.1password.com/explore/extension/).
@z

@x
**Hugo is great for writers**. Our documentation team was already comfortable with Markdown and Git and could start creating content for Hugo with zero downtime. Once we added shortcodes, our writers were able to dress up articles with features like  [platform boxes](https://support.1password.com/get-the-apps/) with just a bit of new syntax.
@y
**Hugo is great for writers**. Our documentation team was already comfortable with Markdown and Git and could start creating content for Hugo with zero downtime. Once we added shortcodes, our writers were able to dress up articles with features like  [platform boxes](https://support.1password.com/get-the-apps/) with just a bit of new syntax.
@z

@x
**Hugo has an amazing developer community**. Hugo updates are frequent and filled to the brim with features and fixes. As we developed the multilingual version of our site, we submitted PRs for features we needed and were helped through the process by [@bep](https://github.com/bep) and others.
@y
**Hugo has an amazing developer community**. Hugo updates are frequent and filled to the brim with features and fixes. As we developed the multilingual version of our site, we submitted PRs for features we needed and were helped through the process by [@bep](https://github.com/bep) and others.
@z

@x
**Hugo is simple to deploy**. Hugo has just the right amount of configuration options to fit into our build system without being too complicated.
@y
**Hugo is simple to deploy**. Hugo has just the right amount of configuration options to fit into our build system without being too complicated.
@z

@x
### Tech specs
@y
### Tech specs
@z

@x
* [1Password Support](https://support.1password.com) uses Hugo with a custom theme. It shares styles and some template code with [1Password.com](https://1password.com), which we also moved to Hugo in 2016.
* Code and articles live in a private GitHub repository, which is deployed to a static content server using Git hooks.
* Writers build and preview the site on their computers and contribute content using pull requests.
* We use Hugo's [multilingual support](/content-management/multilingual/) to build the site in English, Spanish, French, Italian, German, and Russian. With the help of Hugo, 1Password Support became our very first site in multiple languages.
* Our [contact form](https://support.1password.com/contact) is a single-page React app. We were able to integrate it with Hugo seamlessly thanks to its support for static files.
* The one part of the support site which is not static is our search engine, which we developed with Elasticsearch and host on AWS.
@y
* [1Password Support](https://support.1password.com) uses Hugo with a custom theme. It shares styles and some template code with [1Password.com](https://1password.com), which we also moved to Hugo in 2016.
* Code and articles live in a private GitHub repository, which is deployed to a static content server using Git hooks.
* Writers build and preview the site on their computers and contribute content using pull requests.
* We use Hugo's [multilingual support](/content-management/multilingual/) to build the site in English, Spanish, French, Italian, German, and Russian. With the help of Hugo, 1Password Support became our very first site in multiple languages.
* Our [contact form](https://support.1password.com/contact) is a single-page React app. We were able to integrate it with Hugo seamlessly thanks to its support for static files.
* The one part of the support site which is not static is our search engine, which we developed with Elasticsearch and host on AWS.
@z
