%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Host on Render
description: Host your Hugo site for free with Render's global CDN, fully-managed SSL and auto deploys from GitHub.
categories: [hosting and deployment]
keywords: [hosting]
menu:
  docs:
    parent: hosting-and-deployment
toc: true
---
@y
---
title: Host on Render
description: Host your Hugo site for free with Render's global CDN, fully-managed SSL and auto deploys from GitHub.
categories: [hosting and deployment]
keywords: [hosting]
menu:
  docs:
    parent: hosting-and-deployment
toc: true
---
@z

@x
## Introduction
@y
## Introduction
@z

@x
[Render](https://render.com) is a fully-managed cloud platform where you can host static sites, backend APIs, databases, cron jobs, and all your other apps in one place.
@y
[Render](https://render.com) is a fully-managed cloud platform where you can host static sites, backend APIs, databases, cron jobs, and all your other apps in one place.
@z

@x
Static sites are **completely free** on Render and include the following:
@y
Static sites are **completely free** on Render and include the following:
@z

@x
- Continuous, automatic builds & deploys from [GitHub](https://render.com/docs/github) and [GitLab](https://render.com/docs/gitlab).
- Automatic SSL certificates through [Let's Encrypt](https://letsencrypt.org).
- Instant cache invalidation with a lightning fast, global CDN.
- Unlimited collaborators.
- Unlimited [custom domains](https://render.com/docs/custom-domains).
- Automatic [Brotli compression](https://en.wikipedia.org/wiki/Brotli) for faster sites.
- Native HTTP/2 support.
- [Pull Request Previews](https://render.com/docs/pull-request-previews).
- Automatic HTTP → HTTPS redirects.
- Custom URL redirects and rewrites.
@y
- Continuous, automatic builds & deploys from [GitHub](https://render.com/docs/github) and [GitLab](https://render.com/docs/gitlab).
- Automatic SSL certificates through [Let's Encrypt](https://letsencrypt.org).
- Instant cache invalidation with a lightning fast, global CDN.
- Unlimited collaborators.
- Unlimited [custom domains](https://render.com/docs/custom-domains).
- Automatic [Brotli compression](https://en.wikipedia.org/wiki/Brotli) for faster sites.
- Native HTTP/2 support.
- [Pull Request Previews](https://render.com/docs/pull-request-previews).
- Automatic HTTP → HTTPS redirects.
- Custom URL redirects and rewrites.
@z

@x
## Assumptions
@y
## Assumptions
@z

@x
- You have an account with GitHub or GitLab.
- You have completed the [Quick Start] or have a Hugo website you are ready to deploy and share with the world.
- You have a Render account. You can sign up at https://render.com/register.
@y
- You have an account with GitHub or GitLab.
- You have completed the [Quick Start] or have a Hugo website you are ready to deploy and share with the world.
- You have a Render account. You can sign up at https://render.com/register.
@z

@x
## Deployment
@y
## Deployment
@z

@x
You can set up a Hugo site on Render in two quick steps:
@y
You can set up a Hugo site on Render in two quick steps:
@z

@x
1. Create a new **Static Site** on Render, and give Render permission to access your GitHub/GitLab repo.
2. Use the following values during creation:
@y
1. Create a new **Static Site** on Render, and give Render permission to access your GitHub/GitLab repo.
2. Use the following values during creation:
@z

@x
  Field                | Value
  -------------------  |  -------------------
 **Build Command**     | `hugo --gc --minify` (or your own build command)
 **Publish Directory** | `public` (or your own output directory)
@y
  Field                | Value
  -------------------  |  -------------------
 **Build Command**     | `hugo --gc --minify` (or your own build command)
 **Publish Directory** | `public` (or your own output directory)
@z

@x
That's it! Your site will be live on your Render URL (which looks like `yoursite.onrender.com`) as soon as the build is done.
@y
That's it! Your site will be live on your Render URL (which looks like `yoursite.onrender.com`) as soon as the build is done.
@z

@x
## Continuous deploys
@y
## Continuous deploys
@z

@x
Now that Render is connected to your repo, it will **automatically build and publish your site** any time you push to your GitHub/GitLab.
@y
Now that Render is connected to your repo, it will **automatically build and publish your site** any time you push to your GitHub/GitLab.
@z

@x
You can choose to disable auto deploys under the **Settings** section for your site and deploy it manually from the Render dashboard.
@y
You can choose to disable auto deploys under the **Settings** section for your site and deploy it manually from the Render dashboard.
@z

@x
## CDN and cache invalidation
@y
## CDN and cache invalidation
@z

@x
Render hosts your site on a global, lightning fast CDN which ensures the fastest possible download times for all your users across the globe.
@y
Render hosts your site on a global, lightning fast CDN which ensures the fastest possible download times for all your users across the globe.
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
Add your own domains to your site easily using Render's [custom domains](https://render.com/docs/custom-domains) guide.
@y
Add your own domains to your site easily using Render's [custom domains](https://render.com/docs/custom-domains) guide.
@z

@x
## Pull Request previews
@y
## Pull Request previews
@z

@x
With Pull Request (PR) previews, you can visualize changes introduced in a pull request instead of simply relying on code reviews.
@y
With Pull Request (PR) previews, you can visualize changes introduced in a pull request instead of simply relying on code reviews.
@z

@x
Once enabled, every PR for your site will automatically generate a new static site based on the code in the PR. It will have its own URL, and it will be deleted automatically when the PR is closed.
@y
Once enabled, every PR for your site will automatically generate a new static site based on the code in the PR. It will have its own URL, and it will be deleted automatically when the PR is closed.
@z

@x
Read more about [Pull Request Previews](https://render.com/docs/pull-request-previews) on Render.
@y
Read more about [Pull Request Previews](https://render.com/docs/pull-request-previews) on Render.
@z

@x
## Hugo themes
@y
## Hugo themes
@z

@x
Render automatically downloads all Git submodules defined in your Git repo on every build. This way Hugo themes added as submodules work as expected.
@y
Render automatically downloads all Git submodules defined in your Git repo on every build. This way Hugo themes added as submodules work as expected.
@z

@x
## Support
@y
## Support
@z

@x
Chat with Render developers at https://render.com/chat or email `support@render.com` if you need help.
@y
Chat with Render developers at https://render.com/chat or email `support@render.com` if you need help.
@z

@x
[Quick Start]: /getting-started/quick-start/
@y
[Quick Start]: /getting-started/quick-start/
@z
