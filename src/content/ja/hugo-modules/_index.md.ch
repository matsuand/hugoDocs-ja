%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Hugo Modules
linkTitle: In this section
description: How to use Hugo Modules.
categories: []
keywords: []
menu:
  docs:
    identifier: hugo-modules-in-this-section
    parent: modules
    weight: 10
weight: 10
toc: true
aliases: [/themes/overview/,/themes/]
---
@y
---
title: Hugo Modules
linkTitle: In this section
description: How to use Hugo Modules.
categories: []
keywords: []
menu:
  docs:
    identifier: hugo-modules-in-this-section
    parent: modules
    weight: 10
weight: 10
toc: true
aliases: [/themes/overview/,/themes/]
---
@z

@x
**Hugo Modules** are the core building blocks in Hugo. A _module_ can be your main project or a smaller module providing one or more of the 7 component types defined in Hugo: **static**, **content**, **layouts**, **data**, **assets**, **i18n**, and **archetypes**.
@y
**Hugo Modules** are the core building blocks in Hugo. A _module_ can be your main project or a smaller module providing one or more of the 7 component types defined in Hugo: **static**, **content**, **layouts**, **data**, **assets**, **i18n**, and **archetypes**.
@z

@x
You can combine modules in any combination you like, and even mount directories from non-Hugo projects, forming a big, virtual union file system.
@y
You can combine modules in any combination you like, and even mount directories from non-Hugo projects, forming a big, virtual union file system.
@z

@x
Hugo Modules are powered by Go Modules. For more information about Go Modules, see:
@y
Hugo Modules are powered by Go Modules. For more information about Go Modules, see:
@z

@x
- [https://go.dev/wiki/Modules](https://go.dev/wiki/Modules)
- [https://go.dev/blog/using-go-modules](https://go.dev/blog/using-go-modules)
@y
- [https://go.dev/wiki/Modules](https://go.dev/wiki/Modules)
- [https://go.dev/blog/using-go-modules](https://go.dev/blog/using-go-modules)
@z

@x
Some example projects:
@y
Some example projects:
@z

@x
- [https://github.com/bep/docuapi](https://github.com/bep/docuapi) is a theme that has been ported to Hugo Modules while testing this feature. It is a good example of a non-Hugo-project mounted into Hugo’s folder structure. It even shows a JS Bundler implementation in regular Go templates.
- [https://github.com/bep/my-modular-site](https://github.com/bep/my-modular-site) is a very simple site used for testing.
@y
- [https://github.com/bep/docuapi](https://github.com/bep/docuapi) is a theme that has been ported to Hugo Modules while testing this feature. It is a good example of a non-Hugo-project mounted into Hugo’s folder structure. It even shows a JS Bundler implementation in regular Go templates.
- [https://github.com/bep/my-modular-site](https://github.com/bep/my-modular-site) is a very simple site used for testing.
@z
