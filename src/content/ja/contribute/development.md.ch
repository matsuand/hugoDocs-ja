%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Development
description: Contribute to the development of Hugo.
categories: [contribute]
keywords: [development]
menu:
  docs:
    parent: contribute
    weight: 20
weight: 20
toc: true
---
@y
---
title: Development
description: Contribute to the development of Hugo.
categories: [contribute]
keywords: [development]
menu:
  docs:
    parent: contribute
    weight: 20
weight: 20
toc: true
---
@z

@x
## Introduction
@y
## Introduction
@z

@x
You can contribute to the Hugo project by:
@y
You can contribute to the Hugo project by:
@z

@x
- Answering questions on the [forum]
- Improving the [documentation]
- Monitoring the [issue queue]
- Creating or improving [themes]
- Squashing [bugs]
@y
- Answering questions on the [forum]
- Improving the [documentation]
- Monitoring the [issue queue]
- Creating or improving [themes]
- Squashing [bugs]
@z

@x
Please submit documentation issues and pull requests to the [documentation repository].
@y
Please submit documentation issues and pull requests to the [documentation repository].
@z

@x
If you have an idea for an enhancement or new feature, create a new topic on the [forum] in the "Feature" category. This will help you to:
@y
If you have an idea for an enhancement or new feature, create a new topic on the [forum] in the "Feature" category. This will help you to:
@z

@x
- Determine if the capability already exists
- Measure interest
- Refine the concept
@y
- Determine if the capability already exists
- Measure interest
- Refine the concept
@z

@x
If there is sufficient interest, [create a proposal]. Do not submit a pull request until the project lead accepts the proposal.
@y
If there is sufficient interest, [create a proposal]. Do not submit a pull request until the project lead accepts the proposal.
@z

@x
For a complete guide to contributing to Hugo, see the [Contribution Guide].
@y
For a complete guide to contributing to Hugo, see the [Contribution Guide].
@z

@x
[bugs]: https://github.com/gohugoio/hugo/issues?q=is%3Aopen+is%3Aissue+label%3ABug
[contributing]: CONTRIBUTING.md
[create a proposal]: https://github.com/gohugoio/hugo/issues/new?labels=Proposal%2C+NeedsTriage&template=feature_request.md
[documentation repository]: https://github.com/gohugoio/hugoDocs
[documentation]: https://gohugo.io/documentation
[forum]: https://discourse.gohugo.io
[issue queue]: https://github.com/gohugoio/hugo/issues
[themes]: https://themes.gohugo.io/
[contribution guide]: https://github.com/gohugoio/hugo/blob/master/CONTRIBUTING.md
@y
[bugs]: https://github.com/gohugoio/hugo/issues?q=is%3Aopen+is%3Aissue+label%3ABug
[contributing]: CONTRIBUTING.md
[create a proposal]: https://github.com/gohugoio/hugo/issues/new?labels=Proposal%2C+NeedsTriage&template=feature_request.md
[documentation repository]: https://github.com/gohugoio/hugoDocs
[documentation]: https://gohugo.io/documentation
[forum]: https://discourse.gohugo.io
[issue queue]: https://github.com/gohugoio/hugo/issues
[themes]: https://themes.gohugo.io/
[contribution guide]: https://github.com/gohugoio/hugo/blob/master/CONTRIBUTING.md
@z

@x
## Prerequisites
@y
## Prerequisites
@z

@x
To build the extended edition of Hugo from source you must:
@y
To build the extended edition of Hugo from source you must:
@z

@x
1. Install [Git]
1. Install [Go] version 1.20 or later
1. Install a C compiler, either [GCC] or [Clang]
1. Update your `PATH` environment variable as described in the [Go documentation]
@y
1. Install [Git]
1. Install [Go] version 1.20 or later
1. Install a C compiler, either [GCC] or [Clang]
1. Update your `PATH` environment variable as described in the [Go documentation]
@z

@x
[Clang]: https://clang.llvm.org/
[GCC]: https://gcc.gnu.org/
[Git]: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
[Go documentation]: https://go.dev/doc/code#Command
[Go]: https://go.dev/doc/install
@y
[Clang]: https://clang.llvm.org/
[GCC]: https://gcc.gnu.org/
[Git]: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
[Go documentation]: https://go.dev/doc/code#Command
[Go]: https://go.dev/doc/install
@z

@x
{{% note %}}
See these [detailed instructions](https://discourse.gohugo.io/t/41370) to install GCC on Windows.
{{% /note %}}
@y
{{% note %}}
See these [detailed instructions](https://discourse.gohugo.io/t/41370) to install GCC on Windows.
{{% /note %}}
@z

@x
## GitHub workflow
@y
## GitHub workflow
@z

@x
{{% note %}}
This section assumes that you have a working knowledge of Go, Git and GitHub, and are comfortable working on the command line.
{{% /note %}}
@y
{{% note %}}
This section assumes that you have a working knowledge of Go, Git and GitHub, and are comfortable working on the command line.
{{% /note %}}
@z

@x
Use this workflow to create and submit pull requests.
@y
Use this workflow to create and submit pull requests.
@z

@x
Step 1
: Fork the [project repository].
@y
Step 1
: Fork the [project repository].
@z

@x
[project repository]: https://github.com/gohugoio/hugo/
@y
[project repository]: https://github.com/gohugoio/hugo/
@z

@x
Step 2
: Clone your fork.
@y
Step 2
: Clone your fork.
@z

@x
Step 3
: Create a new branch with a descriptive name that includes the corresponding issue number.
@y
Step 3
: Create a new branch with a descriptive name that includes the corresponding issue number.
@z

@x
For a new feature:
@y
For a new feature:
@z

@x
```sh
git checkout -b feat/implement-some-feature-99999
```
@y
```sh
git checkout -b feat/implement-some-feature-99999
```
@z

@x
For a bug fix:
@y
For a bug fix:
@z

@x
```sh
git checkout -b fix/fix-some-bug-99999
```
@y
```sh
git checkout -b fix/fix-some-bug-99999
```
@z

@x
Step 4
: Make changes.
@y
Step 4
: Make changes.
@z

@x
Step 5
: Compile and install:
@y
Step 5
: Compile and install:
@z

@x
```text
CGO_ENABLED=1 go install -tags extended
```
@y
```text
CGO_ENABLED=1 go install -tags extended
```
@z

@x
Step 6
: Test your changes:
@y
Step 6
: Test your changes:
@z

@x
```text
go test ./...
```
@y
```text
go test ./...
```
@z

@x
Step 7
: Commit your changes with a descriptive commit message:
@y
Step 7
: Commit your changes with a descriptive commit message:
@z

@x
- Provide a summary on the first line, typically 50 characters or less, followed by a blank line.
- Optionally, provide a detailed description where each line is 80 characters or less, followed by a blank line.
- Add one or more "Fixes" or "Closes" keywords, each on its own line, referencing the [issues] addressed by this change.
@y
- Provide a summary on the first line, typically 50 characters or less, followed by a blank line.
- Optionally, provide a detailed description where each line is 80 characters or less, followed by a blank line.
- Add one or more "Fixes" or "Closes" keywords, each on its own line, referencing the [issues] addressed by this change.
@z

@x
[issues]: https://github.com/gohugoio/hugo/issues
@y
[issues]: https://github.com/gohugoio/hugo/issues
@z

@x
For example:
@y
For example:
@z

@x
```sh
git commit -m "tpl/strings: Create wrap function
@y
```sh
git commit -m "tpl/strings: Create wrap function
@z

@x
The strings.Wrap function wraps a string into one or more lines,
splitting the string after the given number of characters, but not
splitting in the middle of a word.
@y
The strings.Wrap function wraps a string into one or more lines,
splitting the string after the given number of characters, but not
splitting in the middle of a word.
@z

@x
Fixes #99998
Closes #99999"
```
@y
Fixes #99998
Closes #99999"
```
@z

@x
See the [commit message guidelines] for details.
@y
See the [commit message guidelines] for details.
@z

@x
[commit message guidelines]: https://github.com/gohugoio/hugo/blob/master/CONTRIBUTING.md#git-commit-message-guidelines
@y
[commit message guidelines]: https://github.com/gohugoio/hugo/blob/master/CONTRIBUTING.md#git-commit-message-guidelines
@z

@x
Step 8
: Push the new branch to your fork of the documentation repository.
@y
Step 8
: Push the new branch to your fork of the documentation repository.
@z

@x
Step 9
: Visit the [project repository] and create a pull request (PR).
@y
Step 9
: Visit the [project repository] and create a pull request (PR).
@z

@x
Step 10
: A project maintainer will review your PR and may request changes. You may delete your branch after the maintainer merges your PR.
@y
Step 10
: A project maintainer will review your PR and may request changes. You may delete your branch after the maintainer merges your PR.
@z

@x
## Building from source
@y
## Building from source
@z

@x
You can build, install, and test Hugo at any point in its development history. The examples below build and install the extended version of Hugo.
@y
You can build, install, and test Hugo at any point in its development history. The examples below build and install the extended version of Hugo.
@z

@x
To build and install the latest release:
@y
To build and install the latest release:
@z

@x
```sh
CGO_ENABLED=1 go install -tags extended github.com/gohugoio/hugo@latest
```
@y
```sh
CGO_ENABLED=1 go install -tags extended github.com/gohugoio/hugo@latest
```
@z

@x
To build and install a specific release:
@y
To build and install a specific release:
@z

@x
```sh
CGO_ENABLED=1 go install -tags extended github.com/gohugoio/hugo@v0.126.0
```
@y
```sh
CGO_ENABLED=1 go install -tags extended github.com/gohugoio/hugo@v0.126.0
```
@z

@x
To build and install at the latest commit on the master branch:
@y
To build and install at the latest commit on the master branch:
@z

@x
```sh
CGO_ENABLED=1 go install -tags extended github.com/gohugoio/hugo@master
```
@y
```sh
CGO_ENABLED=1 go install -tags extended github.com/gohugoio/hugo@master
```
@z

@x
To build and install at a specific commit:
@y
To build and install at a specific commit:
@z

@x
```sh
CGO_ENABLED=1 go install -tags extended github.com/gohugoio/hugo@0851c17
```
@y
```sh
CGO_ENABLED=1 go install -tags extended github.com/gohugoio/hugo@0851c17
```
@z
