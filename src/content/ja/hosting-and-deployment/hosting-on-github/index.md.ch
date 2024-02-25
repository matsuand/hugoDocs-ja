%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Host on GitHub Pages
description: Host your site on GitHub Pages with continuous deployment using project, user, or organization pages.
categories: [hosting and deployment]
keywords: [hosting]
menu:
  docs:
    parent: hosting-and-deployment
toc: true
aliases: [/tutorials/github-pages-blog/]
---
@y
---
title: Host on GitHub Pages
description: Host your site on GitHub Pages with continuous deployment using project, user, or organization pages.
categories: [hosting and deployment]
keywords: [hosting]
menu:
  docs:
    parent: hosting-and-deployment
toc: true
aliases: [/tutorials/github-pages-blog/]
---
@z

@x
## Prerequisites
@y
## Prerequisites
@z

@x
1. [Create a GitHub account]
2. [Install Git]
3. [Create a Hugo site] and test it locally with `hugo server`.
@y
1. [Create a GitHub account]
2. [Install Git]
3. [Create a Hugo site] and test it locally with `hugo server`.
@z

@x
[Create a GitHub account]: https://github.com/signup
[Install Git]: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
[Create a Hugo site]: /getting-started/quick-start/
@y
[Create a GitHub account]: https://github.com/signup
[Install Git]: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
[Create a Hugo site]: /getting-started/quick-start/
@z

@x
## Types of sites
@y
## Types of sites
@z

@x
There are three types of GitHub Pages sites: project, user, and organization. Project sites are connected to a specific project hosted on GitHub. User and organization sites are connected to a specific account on GitHub.com.
@y
There are three types of GitHub Pages sites: project, user, and organization. Project sites are connected to a specific project hosted on GitHub. User and organization sites are connected to a specific account on GitHub.com.
@z

@x
{{% note %}}
See the [GitHub Pages documentation] to understand the requirements for repository ownership and naming.
@y
{{% note %}}
See the [GitHub Pages documentation] to understand the requirements for repository ownership and naming.
@z

@x
[GitHub Pages documentation]: https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages#types-of-github-pages-sites
{{% /note %}}
@y
[GitHub Pages documentation]: https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages#types-of-github-pages-sites
{{% /note %}}
@z

@x
[GitHub Pages documentation]: https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages#types-of-github-pages-sites
@y
[GitHub Pages documentation]: https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages#types-of-github-pages-sites
@z

@x
## Procedure
@y
## Procedure
@z

@x
Step 1
: Create a GitHub repository.
@y
Step 1
: Create a GitHub repository.
@z

@x
Step 2
: Push your local repository to GitHub.
@y
Step 2
: Push your local repository to GitHub.
@z

@x
Step 3
: Visit your GitHub repository. From the main menu choose **Settings**&nbsp;>&nbsp;**Pages**. In the center of your screen you will see this:
@y
Step 3
: Visit your GitHub repository. From the main menu choose **Settings**&nbsp;>&nbsp;**Pages**. In the center of your screen you will see this:
@z

@x
![screen capture](gh-pages-1.png)
{style="max-width: 280px"}
@y
![screen capture](gh-pages-1.png)
{style="max-width: 280px"}
@z

@x
Step 4
: Change the **Source** to `GitHub Actions`. The change is immediate; you do not have to press a Save button.
@y
Step 4
: Change the **Source** to `GitHub Actions`. The change is immediate; you do not have to press a Save button.
@z

@x
![screen capture](gh-pages-2.png)
{style="max-width: 280px"}
@y
![screen capture](gh-pages-2.png)
{style="max-width: 280px"}
@z

@x
Step 5
: Create an empty file in your local repository.
@y
Step 5
: Create an empty file in your local repository.
@z

@x
```text
.github/workflows/hugo.yaml
```
@y
```text
.github/workflows/hugo.yaml
```
@z

@x
Step 6
: Copy and paste the YAML below into the file you created. Change the branch name and Hugo version as needed.
@y
Step 6
: Copy and paste the YAML below into the file you created. Change the branch name and Hugo version as needed.
@z

@x
{{< code file=.github/workflows/hugo.yaml copy=true >}}
# Sample workflow for building and deploying a Hugo site to GitHub Pages
name: Deploy Hugo site to Pages
@y
{{< code file=.github/workflows/hugo.yaml copy=true >}}
# Sample workflow for building and deploying a Hugo site to GitHub Pages
name: Deploy Hugo site to Pages
@z

@x
on:
  # Runs on pushes targeting the default branch
  push:
    branches:
      - main
@y
on:
  # Runs on pushes targeting the default branch
  push:
    branches:
      - main
@z

@x
  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:
@y
  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:
@z

@x
# Sets permissions of the GITHUB_TOKEN to allow deployment to GitHub Pages
permissions:
  contents: read
  pages: write
  id-token: write
@y
# Sets permissions of the GITHUB_TOKEN to allow deployment to GitHub Pages
permissions:
  contents: read
  pages: write
  id-token: write
@z

@x
# Allow only one concurrent deployment, skipping runs queued between the run in-progress and latest queued.
# However, do NOT cancel in-progress runs as we want to allow these production deployments to complete.
concurrency:
  group: "pages"
  cancel-in-progress: false
@y
# Allow only one concurrent deployment, skipping runs queued between the run in-progress and latest queued.
# However, do NOT cancel in-progress runs as we want to allow these production deployments to complete.
concurrency:
  group: "pages"
  cancel-in-progress: false
@z

@x
# Default to bash
defaults:
  run:
    shell: bash
@y
# Default to bash
defaults:
  run:
    shell: bash
@z

@x
jobs:
  # Build job
  build:
    runs-on: ubuntu-latest
    env:
      HUGO_VERSION: 0.123.0
    steps:
      - name: Install Hugo CLI
        run: |
          wget -O ${{ runner.temp }}/hugo.deb https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb \
          && sudo dpkg -i ${{ runner.temp }}/hugo.deb
      - name: Install Dart Sass
        run: sudo snap install dart-sass
      - name: Checkout
        uses: actions/checkout@v4
        with:
          submodules: recursive
          fetch-depth: 0
      - name: Setup Pages
        id: pages
        uses: actions/configure-pages@v4
      - name: Install Node.js dependencies
        run: "[[ -f package-lock.json || -f npm-shrinkwrap.json ]] && npm ci || true"
      - name: Build with Hugo
        env:
          # For maximum backward compatibility with Hugo modules
          HUGO_ENVIRONMENT: production
          HUGO_ENV: production
        run: |
          hugo \
            --gc \
            --minify \
            --baseURL "${{ steps.pages.outputs.base_url }}/"
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v2
        with:
          path: ./public
@y
jobs:
  # Build job
  build:
    runs-on: ubuntu-latest
    env:
      HUGO_VERSION: 0.123.0
    steps:
      - name: Install Hugo CLI
        run: |
          wget -O ${{ runner.temp }}/hugo.deb https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb \
          && sudo dpkg -i ${{ runner.temp }}/hugo.deb
      - name: Install Dart Sass
        run: sudo snap install dart-sass
      - name: Checkout
        uses: actions/checkout@v4
        with:
          submodules: recursive
          fetch-depth: 0
      - name: Setup Pages
        id: pages
        uses: actions/configure-pages@v4
      - name: Install Node.js dependencies
        run: "[[ -f package-lock.json || -f npm-shrinkwrap.json ]] && npm ci || true"
      - name: Build with Hugo
        env:
          # For maximum backward compatibility with Hugo modules
          HUGO_ENVIRONMENT: production
          HUGO_ENV: production
        run: |
          hugo \
            --gc \
            --minify \
            --baseURL "${{ steps.pages.outputs.base_url }}/"
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v2
        with:
          path: ./public
@z

@x
  # Deployment job
  deploy:
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    needs: build
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v3
{{< /code >}}
@y
  # Deployment job
  deploy:
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    needs: build
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v3
{{< /code >}}
@z

@x
Step 7
: Commit the change to your local repository with a commit message of something like "Add workflow", and push to GitHub.
@y
Step 7
: Commit the change to your local repository with a commit message of something like "Add workflow", and push to GitHub.
@z

@x
Step 8
: From GitHub's main menu, choose **Actions**. You will see something like this:
@y
Step 8
: From GitHub's main menu, choose **Actions**. You will see something like this:
@z

@x
![screen capture](gh-pages-3.png)
{style="max-width: 350px"}
@y
![screen capture](gh-pages-3.png)
{style="max-width: 350px"}
@z

@x
Step 9
: When GitHub has finished building and deploying your site, the color of the status indicator will change to green.
@y
Step 9
: When GitHub has finished building and deploying your site, the color of the status indicator will change to green.
@z

@x
![screen capture](gh-pages-4.png)
{style="max-width: 350px"}
@y
![screen capture](gh-pages-4.png)
{style="max-width: 350px"}
@z

@x
Step 10
: Click on the commit message as shown above. You will see this:
@y
Step 10
: Click on the commit message as shown above. You will see this:
@z

@x
![screen capture](gh-pages-5.png)
{style="max-width: 611px"}
@y
![screen capture](gh-pages-5.png)
{style="max-width: 611px"}
@z

@x
Under the deploy step, you will see a link to your live site.
@y
Under the deploy step, you will see a link to your live site.
@z

@x
In the future, whenever you push a change from your local repository, GitHub will rebuild your site and deploy the changes.
@y
In the future, whenever you push a change from your local repository, GitHub will rebuild your site and deploy the changes.
@z

@x
## Customize the workflow
@y
## Customize the workflow
@z

@x
The example workflow above includes this step, which typically takes 10&#8209;15 seconds:
@y
The example workflow above includes this step, which typically takes 10&#8209;15 seconds:
@z

@x
```yaml
- name: Install Dart Sass
  run: sudo snap install dart-sass
```
@y
```yaml
- name: Install Dart Sass
  run: sudo snap install dart-sass
```
@z

@x
You may remove this step if your site, themes, and modules do not transpile Sass to CSS using the [Dart Sass] transpiler.
@y
You may remove this step if your site, themes, and modules do not transpile Sass to CSS using the [Dart Sass] transpiler.
@z

@x
[Dart Sass]: /hugo-pipes/transpile-sass-to-css/#dart-sass
@y
[Dart Sass]: /hugo-pipes/transpile-sass-to-css/#dart-sass
@z

@x
## Additional resources
@y
## Additional resources
@z

@x
- [Learn more about GitHub Actions](https://docs.github.com/en/actions)
- [Caching dependencies to speed up workflows](https://docs.github.com/en/actions/using-workflows/caching-dependencies-to-speed-up-workflows)
- [Manage a custom domain for your GitHub Pages site](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/about-custom-domains-and-github-pages)
@y
- [Learn more about GitHub Actions](https://docs.github.com/en/actions)
- [Caching dependencies to speed up workflows](https://docs.github.com/en/actions/using-workflows/caching-dependencies-to-speed-up-workflows)
- [Manage a custom domain for your GitHub Pages site](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/about-custom-domains-and-github-pages)
@z
