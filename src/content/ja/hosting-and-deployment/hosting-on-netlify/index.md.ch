%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Host on Netlify
description: Host your site on Netlify with continuous deployment.
categories: [hosting and deployment]
keywords: [hosting]
menu:
  docs:
    parent: hosting-and-deployment
toc: true
---
@y
---
title: Host on Netlify
description: Host your site on Netlify with continuous deployment.
categories: [hosting and deployment]
keywords: [hosting]
menu:
  docs:
    parent: hosting-and-deployment
toc: true
---
@z

@x
## Prerequisites
@y
## Prerequisites
@z

@x
1. [Create a Netlify account]
2. [Install Git]
3. [Create a Hugo site] and test it locally with `hugo server`
4. Commit the changes to your local repository
4. Push the local repository to your [GitHub], [GitLab], or [Bitbucket] account
@y
1. [Create a Netlify account]
2. [Install Git]
3. [Create a Hugo site] and test it locally with `hugo server`
4. Commit the changes to your local repository
4. Push the local repository to your [GitHub], [GitLab], or [Bitbucket] account
@z

@x
[Bitbucket]: https://bitbucket.org/product
[Create a Hugo site]: /getting-started/quick-start/
[Create a Netlify account]: https://app.netlify.com/signup
[GitHub]: https://github.com
[GitLab]: https://about.gitlab.com/
[Install Git]: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
@y
[Bitbucket]: https://bitbucket.org/product
[Create a Hugo site]: /getting-started/quick-start/
[Create a Netlify account]: https://app.netlify.com/signup
[GitHub]: https://github.com
[GitLab]: https://about.gitlab.com/
[Install Git]: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
@z

@x
## Procedure
@y
## Procedure
@z

@x
This procedure will enable continuous deployment from a GitHub repository. The procedure is essentially the same if you are using GitLab or Bitbucket.
@y
This procedure will enable continuous deployment from a GitHub repository. The procedure is essentially the same if you are using GitLab or Bitbucket.
@z

@x
Step 1
: Log in to your Netlify account, navigate to the Sites page, press the **Add new site** button, and choose "Import an existing project" from the dropdown menu.
@y
Step 1
: Log in to your Netlify account, navigate to the Sites page, press the **Add new site** button, and choose "Import an existing project" from the dropdown menu.
@z

@x
Step 2
: Select your deployment method.
@y
Step 2
: Select your deployment method.
@z

@x
![screen capture](netlify-step-02.png)
@y
![screen capture](netlify-step-02.png)
@z

@x
Step 3
: Authorize Netlify to connect with your GitHub account by pressing the **Authorize Netlify** button.
@y
Step 3
: Authorize Netlify to connect with your GitHub account by pressing the **Authorize Netlify** button.
@z

@x
![screen capture](netlify-step-03.png)
@y
![screen capture](netlify-step-03.png)
@z

@x
Step 4
: Press the **Configure Netlify on GitHub** button.
@y
Step 4
: Press the **Configure Netlify on GitHub** button.
@z

@x
![screen capture](netlify-step-04.png)
@y
![screen capture](netlify-step-04.png)
@z

@x
Step 5
: Install the Netlify app by selecting your GitHub account.
@y
Step 5
: Install the Netlify app by selecting your GitHub account.
@z

@x
![screen capture](netlify-step-05.png)
@y
![screen capture](netlify-step-05.png)
@z

@x
Step 6
: Press the **Install** button.
@y
Step 6
: Press the **Install** button.
@z

@x
![screen capture](netlify-step-06.png)
@y
![screen capture](netlify-step-06.png)
@z

@x
Step 7
: Click on the site's repository from the list.
@y
Step 7
: Click on the site's repository from the list.
@z

@x
![screen capture](netlify-step-07.png)
@y
![screen capture](netlify-step-07.png)
@z

@x
Step 8
: Set the site name and branch from which to deploy.
@y
Step 8
: Set the site name and branch from which to deploy.
@z

@x
![screen capture](netlify-step-08.png)
@y
![screen capture](netlify-step-08.png)
@z

@x
Step 9
: Define the build settings, press the **Add environment variables** button, then press the **New variable** button.
@y
Step 9
: Define the build settings, press the **Add environment variables** button, then press the **New variable** button.
@z

@x
![screen capture](netlify-step-09.png)
@y
![screen capture](netlify-step-09.png)
@z

@x
Step 10
: Create a new environment variable named `HUGO_VERSION` and set the value to the [latest version].
@y
Step 10
: Create a new environment variable named `HUGO_VERSION` and set the value to the [latest version].
@z

@x
[latest version]: https://github.com/gohugoio/hugo/releases/latest
@y
[latest version]: https://github.com/gohugoio/hugo/releases/latest
@z

@x
![screen capture](netlify-step-10.png)
@y
![screen capture](netlify-step-10.png)
@z

@x
Step 11
: Press the "Deploy my new site" button at the bottom of the page.
@y
Step 11
: Press the "Deploy my new site" button at the bottom of the page.
@z

@x
![screen capture](netlify-step-11.png)
@y
![screen capture](netlify-step-11.png)
@z

@x
Step 12
: At the bottom of the screen, wait for the deploy to complete, then click on the deploy log entry.
@y
Step 12
: At the bottom of the screen, wait for the deploy to complete, then click on the deploy log entry.
@z

@x
![screen capture](netlify-step-12.png)
@y
![screen capture](netlify-step-12.png)
@z

@x
Step 13
: Press the **Open production deploy** button to view the live site.
@y
Step 13
: Press the **Open production deploy** button to view the live site.
@z

@x
![screen capture](netlify-step-13.png)
@y
![screen capture](netlify-step-13.png)
@z

@x
## Configuration file
@y
## Configuration file
@z

@x
In the procedure above we configured our site using the Netlify user interface. Most site owners find it easier to use a configuration file checked into source control.
@y
In the procedure above we configured our site using the Netlify user interface. Most site owners find it easier to use a configuration file checked into source control.
@z

@x
Create a new file named netlify.toml in the root of your project directory. In its simplest form, the configuration file might look like this:
@y
Create a new file named netlify.toml in the root of your project directory. In its simplest form, the configuration file might look like this:
@z

@x
{{< code file=netlify.toml >}}
[build.environment]
HUGO_VERSION = "0.125.4"
TZ = "America/Los_Angeles"
@y
{{< code file=netlify.toml >}}
[build.environment]
HUGO_VERSION = "0.125.4"
TZ = "America/Los_Angeles"
@z

@x
[build]
publish = "public"
command = "hugo --gc --minify"
{{< /code >}}
@y
[build]
publish = "public"
command = "hugo --gc --minify"
{{< /code >}}
@z

@x
If your site requires Dart Sass to transpile Sass to CSS, the configuration file should look something like this:
@y
If your site requires Dart Sass to transpile Sass to CSS, the configuration file should look something like this:
@z

@x
{{< code file=netlify.toml >}}
[build.environment]
HUGO_VERSION = "0.125.4"
DART_SASS_VERSION = "1.76.0"
TZ = "America/Los_Angeles"
@y
{{< code file=netlify.toml >}}
[build.environment]
HUGO_VERSION = "0.125.4"
DART_SASS_VERSION = "1.76.0"
TZ = "America/Los_Angeles"
@z

@x
[build]
publish = "public"
command = """\
  curl -LJO https://github.com/sass/dart-sass/releases/download/${DART_SASS_VERSION}/dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz && \
  tar -xf dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz && \
  rm dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz && \
  export PATH=/opt/build/repo/dart-sass:$PATH && \
  hugo --gc --minify \
  """
{{< /code >}}
@y
[build]
publish = "public"
command = """\
  curl -LJO https://github.com/sass/dart-sass/releases/download/${DART_SASS_VERSION}/dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz && \
  tar -xf dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz && \
  rm dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz && \
  export PATH=/opt/build/repo/dart-sass:$PATH && \
  hugo --gc --minify \
  """
{{< /code >}}
@z
