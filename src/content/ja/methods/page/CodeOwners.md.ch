%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: CodeOwners
description: Returns of slice of code owners for the given page, derived from the CODEOWNERS file in the root of the project directory.
categories: []
keywords: []
action:
  related:
    - methods/page/GitInfo
  returnType: '[]string'
  signatures: [PAGE.CodeOwners]
---
@y
---
title: CodeOwners
description: Returns of slice of code owners for the given page, derived from the CODEOWNERS file in the root of the project directory.
categories: []
keywords: []
action:
  related:
    - methods/page/GitInfo
  returnType: '[]string'
  signatures: [PAGE.CodeOwners]
---
@z

@x
GitHub and GitLab support CODEOWNERS files. This file specifies the users responsible for developing and maintaining software and documentation. This definition can apply to the entire repository, specific directories, or to individual files. To learn more:
@y
GitHub and GitLab support CODEOWNERS files. This file specifies the users responsible for developing and maintaining software and documentation. This definition can apply to the entire repository, specific directories, or to individual files. To learn more:
@z

@x
- [GitHub CODEOWNERS documentation]
- [GitLab CODEOWNERS documentation]
@y
- [GitHub CODEOWNERS documentation]
- [GitLab CODEOWNERS documentation]
@z

@x
Use the `CodeOwners` method on a `Page` object to determine the code owners for the given page.
@y
Use the `CodeOwners` method on a `Page` object to determine the code owners for the given page.
@z

@x
[GitHub CODEOWNERS documentation]: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners
[GitLab CODEOWNERS documentation]: https://docs.gitlab.com/ee/user/project/code_owners.html
@y
[GitHub CODEOWNERS documentation]: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners
[GitLab CODEOWNERS documentation]: https://docs.gitlab.com/ee/user/project/code_owners.html
@z

@x
To use the `CodeOwners` method you must enable access to your local Git repository:
@y
To use the `CodeOwners` method you must enable access to your local Git repository:
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
Consider this project structure:
@y
Consider this project structure:
@z

@x
```text
my-project/
├── content/
│   ├── books/
│   │   └── les-miserables.md
│   └── films/
│       └── the-hunchback-of-notre-dame.md
└── CODEOWNERS
```
@y
```text
my-project/
├── content/
│   ├── books/
│   │   └── les-miserables.md
│   └── films/
│       └── the-hunchback-of-notre-dame.md
└── CODEOWNERS
```
@z

@x
And this CODEOWNERS file:
@y
And this CODEOWNERS file:
@z

@x
```text
* @jdoe
/content/books/ @tjones
/content/films/ @mrichards @rsmith
```
@y
```text
* @jdoe
/content/books/ @tjones
/content/films/ @mrichards @rsmith
```
@z

@x
The table below shows the slice of code owners returned for each file:
@y
The table below shows the slice of code owners returned for each file:
@z

@x
Path|Code owners
:--|:--
`books/les-miserables.md`|`[@tjones]`
`films/the-hunchback-of-notre-dame.md`|`[@mrichards @rsmith]`
@y
Path|Code owners
:--|:--
`books/les-miserables.md`|`[@tjones]`
`films/the-hunchback-of-notre-dame.md`|`[@mrichards @rsmith]`
@z

@x
Render the code owners for each content page:
@y
Render the code owners for each content page:
@z

@x
```go-html-template
{{ range .CodeOwners }}
  {{ . }}
{{ end }}
```
@y
```go-html-template
{{ range .CodeOwners }}
  {{ . }}
{{ end }}
```
@z

@x
Combine this method with [`resources.GetRemote`] to retrieve names and avatars from your Git provider by querying their API.
@y
Combine this method with [`resources.GetRemote`] to retrieve names and avatars from your Git provider by querying their API.
@z

@x
[`resources.GetRemote`]: /functions/resources/getremote/
@y
[`resources.GetRemote`]: /functions/resources/getremote/
@z
