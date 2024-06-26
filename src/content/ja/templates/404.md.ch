%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Custom 404 page
linkTitle: 404 template
description: Create a template to render a 404 error page.
categories: [templates]
keywords: ['404',page not found]
@y
title: 独自の 404 ページ
linkTitle: 404 テンプレート
description: Create a template to render a 404 error page.
categories: [templates]
keywords: ['404',page not found]
@z

@x
To render a 404 error page in the root of your site, create a 404 template in the root of the layouts directory. For example:
@y
To render a 404 error page in the root of your site, create a 404 template in the root of the layouts directory. For example:
@z

@x
{{< code file=layouts/404.html >}}
{{ define "main" }}
  <h1>404 Not Found</h1>
  <p>The page you requested cannot be found.</p>
  <p>
    <a href="{{ .Site.Home.RelPermalink }}">
      Return to the home page
    </a>
  </p>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/404.html >}}
{{ define "main" }}
  <h1>404 Not Found</h1>
  <p>The page you requested cannot be found.</p>
  <p>
    <a href="{{ .Site.Home.RelPermalink }}">
      Return to the home page
    </a>
  </p>
{{ end }}
{{< /code >}}
@z

@x
For multilingual sites, add the language key to the file name:
@y
For multilingual sites, add the language key to the file name:
@z

@x
```text
layouts/
├── 404.de.html
├── 404.en.html
└── 404.fr.html
```
@y
```text
layouts/
├── 404.de.html
├── 404.en.html
└── 404.fr.html
```
@z

@x
Your production server redirects the browser to the 404 page when a page is not found. Capabilities and configuration vary by host.
@y
Your production server redirects the browser to the 404 page when a page is not found. Capabilities and configuration vary by host.
@z

@x
Host|Capabilities and configuration
:--|:--
Amazon CloudFront|See [details](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/GeneratingCustomErrorResponses.html).
Amazon S3|See [details](https://docs.aws.amazon.com/AmazonS3/latest/userguide/CustomErrorDocSupport.html).
Apache|See [details](https://httpd.apache.org/docs/2.4/custom-error.html).
Azure Static Web Apps|See [details](https://learn.microsoft.com/en-us/azure/static-web-apps/configuration#response-overrides).
Azure Storage|See [details](https://learn.microsoft.com/en-us/azure/storage/blobs/storage-blob-static-website#setting-up-a-static-website).
Caddy|See [deatils](https://caddyserver.com/docs/caddyfile/directives/handle_errors).
Cloudflare Pages|See [details](https://developers.cloudflare.com/pages/configuration/serving-pages/#not-found-behavior).
DigitalOcean App Platform|See [details](https://docs.digitalocean.com/products/app-platform/how-to/manage-static-sites/#configure-a-static-site).
Firebase|See [details](https://firebase.google.com/docs/hosting/full-config#404).
GitHub Pages|Redirection to is automatic and not configurable.
GitLab Pages|See [details](https://docs.gitlab.com/ee/user/project/pages/introduction.html#custom-error-codes-pages).
NGINX|See [details](https://nginx.org/en/docs/http/ngx_http_core_module.html#error_page).
Netlify|See [details](https://docs.netlify.com/routing/redirects/redirect-options/).
@y
Host|Capabilities and configuration
:--|:--
Amazon CloudFront|See [details](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/GeneratingCustomErrorResponses.html).
Amazon S3|See [details](https://docs.aws.amazon.com/AmazonS3/latest/userguide/CustomErrorDocSupport.html).
Apache|See [details](https://httpd.apache.org/docs/2.4/custom-error.html).
Azure Static Web Apps|See [details](https://learn.microsoft.com/en-us/azure/static-web-apps/configuration#response-overrides).
Azure Storage|See [details](https://learn.microsoft.com/en-us/azure/storage/blobs/storage-blob-static-website#setting-up-a-static-website).
Caddy|See [deatils](https://caddyserver.com/docs/caddyfile/directives/handle_errors).
Cloudflare Pages|See [details](https://developers.cloudflare.com/pages/configuration/serving-pages/#not-found-behavior).
DigitalOcean App Platform|See [details](https://docs.digitalocean.com/products/app-platform/how-to/manage-static-sites/#configure-a-static-site).
Firebase|See [details](https://firebase.google.com/docs/hosting/full-config#404).
GitHub Pages|Redirection to is automatic and not configurable.
GitLab Pages|See [details](https://docs.gitlab.com/ee/user/project/pages/introduction.html#custom-error-codes-pages).
NGINX|See [details](https://nginx.org/en/docs/http/ngx_http_core_module.html#error_page).
Netlify|See [details](https://docs.netlify.com/routing/redirects/redirect-options/).
@z
