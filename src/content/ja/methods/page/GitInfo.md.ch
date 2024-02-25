%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: GitInfo
description: Returns Git information related to the last commit of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/CodeOwners
  returnType: source.GitInfo
  signatures: [PAGE.GitInfo]
toc: true
---
@y
---
title: GitInfo
description: Returns Git information related to the last commit of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/CodeOwners
  returnType: source.GitInfo
  signatures: [PAGE.GitInfo]
toc: true
---
@z

@x
The `GitInfo` method on a `Page` object returns an object with additional methods.
@y
The `GitInfo` method on a `Page` object returns an object with additional methods.
@z

@x
{{% note %}}
Hugo's Git integration is performant, but may increase build times on large sites.
{{% /note %}}
@y
{{% note %}}
Hugo's Git integration is performant, but may increase build times on large sites.
{{% /note %}}
@z

@x
## Prerequisites
@y
## Prerequisites
@z

@x
Install [Git], create a repository, and commit your project files.
@y
Install [Git], create a repository, and commit your project files.
@z

@x
You must also allow Hugo to access your repository. In your site configuration:
@y
You must also allow Hugo to access your repository. In your site configuration:
@z

@x
{{< code-toggle file=hugo >}}
enableGitInfo = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
enableGitInfo = true
{{< /code-toggle >}}
@z

@x
Alternatively, use the command line flag when building your site:
@y
Alternatively, use the command line flag when building your site:
@z

@x
```sh
hugo --enableGitInfo
```
@y
```sh
hugo --enableGitInfo
```
@z

@x
{{% note %}}
When you set `enableGitInfo` to `true`, or enable the feature with the command line flag, the last modification date for each content page will be the Author Date of the last commit for that file.
@y
{{% note %}}
When you set `enableGitInfo` to `true`, or enable the feature with the command line flag, the last modification date for each content page will be the Author Date of the last commit for that file.
@z

@x
This is configurable. See&nbsp;[details].
@y
This is configurable. See&nbsp;[details].
@z

@x
[details]: /getting-started/configuration/#configure-dates
{{% /note %}}
@y
[details]: /getting-started/configuration/#configure-dates
{{% /note %}}
@z

@x
## Methods
@y
## Methods
@z

@x
###### AbbreviatedHash
@y
###### AbbreviatedHash
@z

@x
(`string`) The abbreviated commit hash.
@y
(`string`) The abbreviated commit hash.
@z

@x
```go-html-template
{{ with .GitInfo }}
  {{ .AbbreviatedHash }} → aab9ec0b3
{{ end }}
```
@y
```go-html-template
{{ with .GitInfo }}
  {{ .AbbreviatedHash }} → aab9ec0b3
{{ end }}
```
@z

@x
###### AuthorDate
@y
###### AuthorDate
@z

@x
(`time.Time`) The author date.
@y
(`time.Time`) The author date.
@z

@x
```go-html-template
{{ with .GitInfo }}
  {{ .AuthorDate.Format "2006-01-02" }} → 2023-10-09
{{ end }}
```
@y
```go-html-template
{{ with .GitInfo }}
  {{ .AuthorDate.Format "2006-01-02" }} → 2023-10-09
{{ end }}
```
@z

@x
###### AuthorEmail
@y
###### AuthorEmail
@z

@x
(`string`) The author's email address, respecting [gitmailmap].
@y
(`string`) The author's email address, respecting [gitmailmap].
@z

@x
```go-html-template
{{ with .GitInfo }}
  {{ .AuthorEmail }} → jsmith@example.org
{{ end }}
```
@y
```go-html-template
{{ with .GitInfo }}
  {{ .AuthorEmail }} → jsmith@example.org
{{ end }}
```
@z

@x
###### AuthorName
@y
###### AuthorName
@z

@x
(`string`) The author's name, respecting [gitmailmap].
@y
(`string`) The author's name, respecting [gitmailmap].
@z

@x
```go-html-template
{{ with .GitInfo }}
  {{ .AuthorName }} → John Smith
{{ end }}
```
@y
```go-html-template
{{ with .GitInfo }}
  {{ .AuthorName }} → John Smith
{{ end }}
```
@z

@x
###### CommitDate
@y
###### CommitDate
@z

@x
(`time.Time`) The commit date.
@y
(`time.Time`) The commit date.
@z

@x
```go-html-template
{{ with .GitInfo }}
  {{ .CommitDate.Format "2006-01-02" }} → 2023-10-09
{{ end }}
```
@y
```go-html-template
{{ with .GitInfo }}
  {{ .CommitDate.Format "2006-01-02" }} → 2023-10-09
{{ end }}
```
@z

@x
###### Hash
@y
###### Hash
@z

@x
(`string`) The commit hash.
@y
(`string`) The commit hash.
@z

@x
```go-html-template
{{ with .GitInfo }}
  {{ .Hash }} → aab9ec0b31ebac916a1468c4c9c305f2bebf78d4
{{ end }}
```
@y
```go-html-template
{{ with .GitInfo }}
  {{ .Hash }} → aab9ec0b31ebac916a1468c4c9c305f2bebf78d4
{{ end }}
```
@z

@x
###### Subject
@y
###### Subject
@z

@x
(`string`) The commit message subject.
@y
(`string`) The commit message subject.
@z

@x
```go-html-template
{{ with .GitInfo }}
  {{ .Subject }} → Add tutorials
{{ end }}
```
@y
```go-html-template
{{ with .GitInfo }}
  {{ .Subject }} → Add tutorials
{{ end }}
```
@z

@x
## Last modified date
@y
## Last modified date
@z

@x
By default, when `enableGitInfo` is `true`, the `Lastmod` method on a `Page` object returns the Git AuthorDate of the last commit that included the file.
@y
By default, when `enableGitInfo` is `true`, the `Lastmod` method on a `Page` object returns the Git AuthorDate of the last commit that included the file.
@z

@x
You can change this behavior in your [site configuration].
@y
You can change this behavior in your [site configuration].
@z

@x
[git]: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
[gitmailmap]: https://git-scm.com/docs/gitmailmap
[site configuration]: /getting-started/configuration/#configure-front-matter
@y
[git]: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
[gitmailmap]: https://git-scm.com/docs/gitmailmap
[site configuration]: /getting-started/configuration/#configure-front-matter
@z

@x
## Hosting considerations
@y
## Hosting considerations
@z

@x
When hosting your site in a CI/CD environment, the step that clones your project repository must perform a deep clone. If the clone is shallow, the Git information for a given file may not be accurate---it may reflect the most recent repository commit, not the commit that last modified the file.
@y
When hosting your site in a CI/CD environment, the step that clones your project repository must perform a deep clone. If the clone is shallow, the Git information for a given file may not be accurate---it may reflect the most recent repository commit, not the commit that last modified the file.
@z

@x
Some providers perform deep clones by default, others allow you to configure the clone depth, and some providers only perform shallow clones.
@y
Some providers perform deep clones by default, others allow you to configure the clone depth, and some providers only perform shallow clones.
@z

@x
Hosting service | Default clone depth | Configurable
:-- | :-- | :--
Cloudflare Pages | Shallow | Yes [^CFP]
DigitalOcean App Platform | Deep | N/A
GitHub Pages | Shallow | Yes [^GHP]
GitLab Pages | Shallow | Yes [^GLP]
Netlify | Deep | N/A
Render | Shallow | No
Vercel | Shallow | No
@y
Hosting service | Default clone depth | Configurable
:-- | :-- | :--
Cloudflare Pages | Shallow | Yes [^CFP]
DigitalOcean App Platform | Deep | N/A
GitHub Pages | Shallow | Yes [^GHP]
GitLab Pages | Shallow | Yes [^GLP]
Netlify | Deep | N/A
Render | Shallow | No
Vercel | Shallow | No
@z

@x
[^CFP]: To configure a Cloudflare Pages site for deep cloning, preface the site's normal Hugo build command with `git fetch --unshallow &&` (*e.g.*, `git fetch --unshallow && hugo`).
@y
[^CFP]: To configure a Cloudflare Pages site for deep cloning, preface the site's normal Hugo build command with `git fetch --unshallow &&` (*e.g.*, `git fetch --unshallow && hugo`).
@z

@x
[^GHP]: You can configure the GitHub Action to do a deep clone by specifying `fetch-depth: 0` in the applicable "checkout" step of your workflow file, as shown in the Hugo documentation's [example workflow file](/hosting-and-deployment/hosting-on-github/#procedure).
@y
[^GHP]: You can configure the GitHub Action to do a deep clone by specifying `fetch-depth: 0` in the applicable "checkout" step of your workflow file, as shown in the Hugo documentation's [example workflow file](/hosting-and-deployment/hosting-on-github/#procedure).
@z

@x
[^GLP]: You can configure the GitLab Runner's clone depth [as explained in the GitLab documentation](https://docs.gitlab.com/ee/ci/large_repositories/#shallow-cloning); see also the Hugo documentation's [example workflow file](/hosting-and-deployment/hosting-on-gitlab/#configure-gitlab-cicd).
@y
[^GLP]: You can configure the GitLab Runner's clone depth [as explained in the GitLab documentation](https://docs.gitlab.com/ee/ci/large_repositories/#shallow-cloning); see also the Hugo documentation's [example workflow file](/hosting-and-deployment/hosting-on-gitlab/#configure-gitlab-cicd).
@z
