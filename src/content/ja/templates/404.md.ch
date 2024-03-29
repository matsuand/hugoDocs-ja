%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Custom 404 page
linkTitle: 404 page
description: If you know how to create a single page template, you have unlimited options for creating a custom 404.
categories: [templates]
keywords: ['404',page not found]
@y
title: 独自の 404 ページ
linkTitle: 404 ページ
description: If you know how to create a single page template, you have unlimited options for creating a custom 404.
categories: [templates]
keywords: ['404',page not found]
@z

@x
When using Hugo with [GitHub Pages](https://pages.github.com/), you can provide your own template for a [custom 404 error page](https://docs.github.com/en/pages/getting-started-with-github-pages/creating-a-custom-404-page-for-your-github-pages-site) by creating a 404.html template file in the root of your `layouts` folder. When Hugo generates your site, the `404.html` file will be placed in the root.
@y
When using Hugo with [GitHub Pages](https://pages.github.com/), you can provide your own template for a [custom 404 error page](https://docs.github.com/en/pages/getting-started-with-github-pages/creating-a-custom-404-page-for-your-github-pages-site) by creating a 404.html template file in the root of your `layouts` folder. When Hugo generates your site, the `404.html` file will be placed in the root.
@z

@x
404 pages will have all the regular [page variables][pagevars] available to use in the templates.
@y
404 pages will have all the regular [page variables][pagevars] available to use in the templates.
@z

@x
In addition to the standard page variables, the 404 page has access to all site content accessible from `.Pages`.
@y
In addition to the standard page variables, the 404 page has access to all site content accessible from `.Pages`.
@z

@x
```txt
▾ layouts/
    404.html
```
@y
```txt
▾ layouts/
    404.html
```
@z

@x
## 404.html
@y
## 404.html
@z

@x
This is a basic example of a 404.html template:
@y
This is a basic example of a 404.html template:
@z

@x
{{< code file=layouts/404.html >}}
{{ define "main" }}
  <main id="main">
    <div>
      <h1 id="title"><a href="{{ "" | relURL }}">Go Home</a></h1>
    </div>
  </main>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/404.html >}}
{{ define "main" }}
  <main id="main">
    <div>
      <h1 id="title"><a href="{{ "" | relURL }}">Go Home</a></h1>
    </div>
  </main>
{{ end }}
{{< /code >}}
@z

@x
## Automatic loading
@y
## Automatic loading
@z

@x
Your 404.html file can be set to load automatically when a visitor enters a mistaken URL path, dependent upon the web serving environment you are using. For example:
@y
Your 404.html file can be set to load automatically when a visitor enters a mistaken URL path, dependent upon the web serving environment you are using. For example:
@z

@x
* [GitHub Pages](/hosting-and-deployment/hosting-on-github/), [GitLab Pages](/hosting-and-deployment/hosting-on-gitlab/) and [Cloudflare Pages](/hosting-and-deployment/hosting-on-cloudflare-pages/). The 404 page is automatic.
* Apache. You can specify `ErrorDocument 404 /404.html` in an `.htaccess` file in the root of your site.
* Nginx. You might specify `error_page 404 /404.html;` in your `nginx.conf` file. [Details here](https://nginx.org/en/docs/http/ngx_http_core_module.html#error_page).
* Amazon AWS S3. When setting a bucket up for static web serving, you can specify the error file from within the S3 GUI.
* Amazon CloudFront. You can specify the page in the Error Pages section in the CloudFront Console. [Details here](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html)
* Caddy Server. Use the `handle_errors` directive to specify error pages for one or more status codes. [Details here](https://caddyserver.com/docs/caddyfile/directives/handle_errors)
* Netlify. Add `/* /404.html 404` to `content/_redirects`. [Details Here](https://www.netlify.com/docs/redirects/#custom-404)
* Azure Static Web App. set `responseOverrides.404.rewrite` and `responseOverrides.404.statusCode` in configfile `staticwebapp.config.json`. [Details here](https://docs.microsoft.com/en-us/azure/static-web-apps/configuration#response-overrides)
* Azure Storage as Static Web Site Hosting. You can specify the `Error document path` in the Static website configuration page of the Azure portal. [Details here](https://docs.microsoft.com/en-us/azure/storage/blobs/storage-blob-static-website).
* DigitalOcean App Platform. You can specify `error_document` in your app specification file or use control panel to set up error document. [Details here](https://docs.digitalocean.com/products/app-platform/how-to/manage-static-sites/#configure-a-static-site).
* [Firebase Hosting](https://firebase.google.com/docs/hosting/full-config#404): `/404.html` automatically gets used as the 404 page.
@y
* [GitHub Pages](/hosting-and-deployment/hosting-on-github/), [GitLab Pages](/hosting-and-deployment/hosting-on-gitlab/) and [Cloudflare Pages](/hosting-and-deployment/hosting-on-cloudflare-pages/). The 404 page is automatic.
* Apache. You can specify `ErrorDocument 404 /404.html` in an `.htaccess` file in the root of your site.
* Nginx. You might specify `error_page 404 /404.html;` in your `nginx.conf` file. [Details here](https://nginx.org/en/docs/http/ngx_http_core_module.html#error_page).
* Amazon AWS S3. When setting a bucket up for static web serving, you can specify the error file from within the S3 GUI.
* Amazon CloudFront. You can specify the page in the Error Pages section in the CloudFront Console. [Details here](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html)
* Caddy Server. Use the `handle_errors` directive to specify error pages for one or more status codes. [Details here](https://caddyserver.com/docs/caddyfile/directives/handle_errors)
* Netlify. Add `/* /404.html 404` to `content/_redirects`. [Details Here](https://www.netlify.com/docs/redirects/#custom-404)
* Azure Static Web App. set `responseOverrides.404.rewrite` and `responseOverrides.404.statusCode` in configfile `staticwebapp.config.json`. [Details here](https://docs.microsoft.com/en-us/azure/static-web-apps/configuration#response-overrides)
* Azure Storage as Static Web Site Hosting. You can specify the `Error document path` in the Static website configuration page of the Azure portal. [Details here](https://docs.microsoft.com/en-us/azure/storage/blobs/storage-blob-static-website).
* DigitalOcean App Platform. You can specify `error_document` in your app specification file or use control panel to set up error document. [Details here](https://docs.digitalocean.com/products/app-platform/how-to/manage-static-sites/#configure-a-static-site).
* [Firebase Hosting](https://firebase.google.com/docs/hosting/full-config#404): `/404.html` automatically gets used as the 404 page.
@z

% snip links...
