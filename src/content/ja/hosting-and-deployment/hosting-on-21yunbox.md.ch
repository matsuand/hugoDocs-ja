%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Host on 21YunBox
description: Host your Hugo site with 21YunBox's blazing fast Chinese CDN, fully-managed SSL and auto deploys from Gitee.
categories: [hosting and deployment]
keywords: [hosting,21yunbox]
menu:
  docs:
    parent: hosting-and-deployment
toc: true
---
@y
---
title: Host on 21YunBox
description: Host your Hugo site with 21YunBox's blazing fast Chinese CDN, fully-managed SSL and auto deploys from Gitee.
categories: [hosting and deployment]
keywords: [hosting,21yunbox]
menu:
  docs:
    parent: hosting-and-deployment
toc: true
---
@z

@x
[21YunBox](https://www.21yunbox.com) is a fully-managed cloud platform dedicated to make web deployment easy within the Chinese Great Firewall where you can host static sites, backend APIs, databases, cron jobs, and all your other apps in one place. It provides blazing fast Chinese CDN, continuous deployment, one-click HTTPS and [other services like managed databases and backend web services](https://www.21yunbox.com/docs/), providing an avenue to launch web projects in China.
@y
[21YunBox](https://www.21yunbox.com) is a fully-managed cloud platform dedicated to make web deployment easy within the Chinese Great Firewall where you can host static sites, backend APIs, databases, cron jobs, and all your other apps in one place. It provides blazing fast Chinese CDN, continuous deployment, one-click HTTPS and [other services like managed databases and backend web services](https://www.21yunbox.com/docs/), providing an avenue to launch web projects in China.
@z

@x
21YunBox includes the following features:
@y
21YunBox includes the following features:
@z

@x
- Continuous, automatic builds & deploys from GitHub and Gitee
- Automatic SSL certificates through [Let's Encrypt](https://letsencrypt.org)
- Instant cache invalidation with a blazing fast, Chinese CDN
- Unlimited [custom domains](https://www.21yunbox.com/docs/#/custom-domains)
- Automatic [Brotli compression](https://en.wikipedia.org/wiki/Brotli) for faster sites
- Native HTTP/2 support
- Automatic HTTP → HTTPS redirects
- Custom URL redirects and rewrites
@y
- Continuous, automatic builds & deploys from GitHub and Gitee
- Automatic SSL certificates through [Let's Encrypt](https://letsencrypt.org)
- Instant cache invalidation with a blazing fast, Chinese CDN
- Unlimited [custom domains](https://www.21yunbox.com/docs/#/custom-domains)
- Automatic [Brotli compression](https://en.wikipedia.org/wiki/Brotli) for faster sites
- Native HTTP/2 support
- Automatic HTTP → HTTPS redirects
- Custom URL redirects and rewrites
@z

@x
## Prerequisites
@y
## Prerequisites
@z

@x
This guide assumes you already have a Hugo project to deploy. If you need a project, use the [Quick Start](/getting-started/quick-start/) to get started or fork 21YunBox's [Hugo Example](https://gitee.com/eryiyunbox-examples/hello-hugo) before continuing.
@y
This guide assumes you already have a Hugo project to deploy. If you need a project, use the [Quick Start](/getting-started/quick-start/) to get started or fork 21YunBox's [Hugo Example](https://gitee.com/eryiyunbox-examples/hello-hugo) before continuing.
@z

@x
## Setup
@y
## Setup
@z

@x
You can set up a Hugo site on 21YunBox in two quick steps:
@y
You can set up a Hugo site on 21YunBox in two quick steps:
@z

@x
1. Create a new web service on 21YunBox, and give 21YunBox permission to access your GitHub or Gitee repo.
2. Use the following values during creation:
@y
1. Create a new web service on 21YunBox, and give 21YunBox permission to access your GitHub or Gitee repo.
2. Use the following values during creation:
@z

@x
   |    Field              | Value                                            |
   | --------------------- | ------------------------------------------------ |
   | **Environment**       | `Static Site`                                    |
   | **Build Command**     | `hugo --gc --minify` (or your own build command) |
   | **Publish Directory** | `./public` (or your own output directory)        |
@y
   |    Field              | Value                                            |
   | --------------------- | ------------------------------------------------ |
   | **Environment**       | `Static Site`                                    |
   | **Build Command**     | `hugo --gc --minify` (or your own build command) |
   | **Publish Directory** | `./public` (or your own output directory)        |
@z

@x
That's it! Your site will be live on your 21YunBox URL (which looks like `yoursite.21yunbox.com`) as soon as the build is done.
@y
That's it! Your site will be live on your 21YunBox URL (which looks like `yoursite.21yunbox.com`) as soon as the build is done.
@z

@x
## Continuous deploys
@y
## Continuous deploys
@z

@x
Now that 21YunBox is connected to your repo, it will automatically build and publish your site any time you push to GitHub.
@y
Now that 21YunBox is connected to your repo, it will automatically build and publish your site any time you push to GitHub.
@z

@x
Every deploy automatically and instantly invalidates the CDN cache, so your users can always access the latest content on your site.
@y
Every deploy automatically and instantly invalidates the CDN cache, so your users can always access the latest content on your site.
@z

@x
## Custom domains
@y
## Custom domains
@z

@x
Add your own domains to your site easily using 21YunBox's [custom domains](https://www.21yunbox.com/docs/#/custom-domains) guide.
@y
Add your own domains to your site easily using 21YunBox's [custom domains](https://www.21yunbox.com/docs/#/custom-domains) guide.
@z

@x
## Support
@y
## Support
@z

@x
Click [here](https://www.21yunbox.com/docs/#/contact) to contact with 21YunBox' experts if you need help.
@y
Click [here](https://www.21yunbox.com/docs/#/contact) to contact with 21YunBox' experts if you need help.
@z
