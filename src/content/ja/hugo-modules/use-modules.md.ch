%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Use Hugo Modules
description: How to use Hugo Modules to build and manage your site.
categories: [hugo modules]
keywords: [modules,themes]
menu:
  docs:
    parent: modules
    weight: 30
weight: 30
aliases: [/themes/usage/,/themes/installing/,/installing-and-using-themes/]
toc: true
---
@y
---
title: Use Hugo Modules
description: How to use Hugo Modules to build and manage your site.
categories: [hugo modules]
keywords: [modules,themes]
menu:
  docs:
    parent: modules
    weight: 30
weight: 30
aliases: [/themes/usage/,/themes/installing/,/installing-and-using-themes/]
toc: true
---
@z

@x
## Prerequisite
@y
## Prerequisite
@z

@x
{{< gomodules-info >}}
@y
{{< gomodules-info >}}
@z

@x
## Initialize a new module
@y
## Initialize a new module
@z

@x
Use `hugo mod init` to initialize a new Hugo Module. If it fails to guess the module path, you must provide it as an argument, e.g.:
@y
Use `hugo mod init` to initialize a new Hugo Module. If it fails to guess the module path, you must provide it as an argument, e.g.:
@z

@x
```sh
hugo mod init github.com/<your_user>/<your_project>
```
@y
```sh
hugo mod init github.com/<your_user>/<your_project>
```
@z

@x
Also see the [CLI Doc](/commands/hugo_mod_init/).
@y
Also see the [CLI Doc](/commands/hugo_mod_init/).
@z

@x
## Use a module for a theme
@y
## Use a module for a theme
@z

@x
The easiest way to use a Module for a theme is to import it in the configuration.
@y
The easiest way to use a Module for a theme is to import it in the configuration.
@z

@x
1. Initialize the hugo module system: `hugo mod init github.com/<your_user>/<your_project>`
2. Import the theme:
@y
1. Initialize the hugo module system: `hugo mod init github.com/<your_user>/<your_project>`
2. Import the theme:
@z

@x
{{< code-toggle file=hugo >}}
[module]
  [[module.imports]]
    path = "github.com/spf13/hyde"
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[module]
  [[module.imports]]
    path = "github.com/spf13/hyde"
{{< /code-toggle >}}
@z

@x
## Update modules
@y
## Update modules
@z

@x
Modules will be downloaded and added when you add them as imports to your configuration, see [Module Imports](/hugo-modules/configuration/#module-configuration-imports).
@y
Modules will be downloaded and added when you add them as imports to your configuration, see [Module Imports](/hugo-modules/configuration/#module-configuration-imports).
@z

@x
To update or manage versions, you can use `hugo mod get`.
@y
To update or manage versions, you can use `hugo mod get`.
@z

@x
Some examples:
@y
Some examples:
@z

@x
### Update all modules
@y
### Update all modules
@z

@x
```sh
hugo mod get -u
```
@y
```sh
hugo mod get -u
```
@z

@x
### Update all modules recursively
@y
### Update all modules recursively
@z

@x
```sh
hugo mod get -u ./...
```
@y
```sh
hugo mod get -u ./...
```
@z

@x
### Update one module
@y
### Update one module
@z

@x
```sh
hugo mod get -u github.com/gohugoio/myShortcodes
```
@y
```sh
hugo mod get -u github.com/gohugoio/myShortcodes
```
@z

@x
### Get a specific version
@y
### Get a specific version
@z

@x
```sh
hugo mod get github.com/gohugoio/myShortcodes@v1.0.7
```
@y
```sh
hugo mod get github.com/gohugoio/myShortcodes@v1.0.7
```
@z

@x
Also see the [CLI Doc](/commands/hugo_mod_get/).
@y
Also see the [CLI Doc](/commands/hugo_mod_get/).
@z

@x
## Make and test changes in a module
@y
## Make and test changes in a module
@z

@x
One way to do local development of a module imported in a project is to add a replace directive to a local directory with the source in `go.mod`:
@y
One way to do local development of a module imported in a project is to add a replace directive to a local directory with the source in `go.mod`:
@z

@x
```sh
replace github.com/bep/hugotestmods/mypartials => /Users/bep/hugotestmods/mypartials
```
@y
```sh
replace github.com/bep/hugotestmods/mypartials => /Users/bep/hugotestmods/mypartials
```
@z

@x
If you have the `hugo server` running, the configuration will be reloaded and `/Users/bep/hugotestmods/mypartials` put on the watch list.
@y
If you have the `hugo server` running, the configuration will be reloaded and `/Users/bep/hugotestmods/mypartials` put on the watch list.
@z

@x
Instead of modifying the `go.mod` files, you can also use the modules configuration [`replacements`](/hugo-modules/configuration/#module-configuration-top-level) option.
@y
Instead of modifying the `go.mod` files, you can also use the modules configuration [`replacements`](/hugo-modules/configuration/#module-configuration-top-level) option.
@z

@x
## Print dependency graph
@y
## Print dependency graph
@z

@x
Use `hugo mod graph` from the relevant module directory and it will print the dependency graph, including vendoring, module replacement or disabled status.
@y
Use `hugo mod graph` from the relevant module directory and it will print the dependency graph, including vendoring, module replacement or disabled status.
@z

@x
E.g.:
@y
E.g.:
@z

@x
```txt
hugo mod graph
@y
```txt
hugo mod graph
@z

@x
github.com/bep/my-modular-site github.com/bep/hugotestmods/mymounts@v1.2.0
github.com/bep/my-modular-site github.com/bep/hugotestmods/mypartials@v1.0.7
github.com/bep/hugotestmods/mypartials@v1.0.7 github.com/bep/hugotestmods/myassets@v1.0.4
github.com/bep/hugotestmods/mypartials@v1.0.7 github.com/bep/hugotestmods/myv2@v1.0.0
DISABLED github.com/bep/my-modular-site github.com/spf13/hyde@v0.0.0-20190427180251-e36f5799b396
github.com/bep/my-modular-site github.com/bep/hugo-fresh@v1.0.1
github.com/bep/my-modular-site in-themesdir
```
@y
github.com/bep/my-modular-site github.com/bep/hugotestmods/mymounts@v1.2.0
github.com/bep/my-modular-site github.com/bep/hugotestmods/mypartials@v1.0.7
github.com/bep/hugotestmods/mypartials@v1.0.7 github.com/bep/hugotestmods/myassets@v1.0.4
github.com/bep/hugotestmods/mypartials@v1.0.7 github.com/bep/hugotestmods/myv2@v1.0.0
DISABLED github.com/bep/my-modular-site github.com/spf13/hyde@v0.0.0-20190427180251-e36f5799b396
github.com/bep/my-modular-site github.com/bep/hugo-fresh@v1.0.1
github.com/bep/my-modular-site in-themesdir
```
@z

@x
Also see the [CLI Doc](/commands/hugo_mod_graph/).
@y
Also see the [CLI Doc](/commands/hugo_mod_graph/).
@z

@x
## Vendor your modules
@y
## Vendor your modules
@z

@x
`hugo mod vendor` will write all the module dependencies to a `_vendor` folder, which will then be used for all subsequent builds.
@y
`hugo mod vendor` will write all the module dependencies to a `_vendor` folder, which will then be used for all subsequent builds.
@z

@x
Note that:
@y
Note that:
@z

@x
* You can run `hugo mod vendor` on any level in the module tree.
* Vendoring will not store modules stored in your `themes` folder.
* Most commands accept a `--ignoreVendorPaths` flag, which will then not use the vendored modules in `_vendor` for the module paths matching the [Glob](https://github.com/gobwas/glob) pattern given.
@y
* You can run `hugo mod vendor` on any level in the module tree.
* Vendoring will not store modules stored in your `themes` folder.
* Most commands accept a `--ignoreVendorPaths` flag, which will then not use the vendored modules in `_vendor` for the module paths matching the [Glob](https://github.com/gobwas/glob) pattern given.
@z

@x
Also see the [CLI Doc](/commands/hugo_mod_vendor/).
@y
Also see the [CLI Doc](/commands/hugo_mod_vendor/).
@z

@x
## Tidy go.mod, go.sum
@y
## Tidy go.mod, go.sum
@z

@x
Run `hugo mod tidy` to remove unused entries in `go.mod` and `go.sum`.
@y
Run `hugo mod tidy` to remove unused entries in `go.mod` and `go.sum`.
@z

@x
Also see the [CLI Doc](/commands/hugo_mod_clean/).
@y
Also see the [CLI Doc](/commands/hugo_mod_clean/).
@z

@x
## Clean module cache
@y
## Clean module cache
@z

@x
Run `hugo mod clean` to delete the entire modules cache.
@y
Run `hugo mod clean` to delete the entire modules cache.
@z

@x
Note that you can also configure the `modules` cache with a `maxAge`, see [File Caches](/getting-started/configuration/#configure-file-caches).
@y
Note that you can also configure the `modules` cache with a `maxAge`, see [File Caches](/getting-started/configuration/#configure-file-caches).
@z

@x
Also see the [CLI Doc](/commands/hugo_mod_clean/).
@y
Also see the [CLI Doc](/commands/hugo_mod_clean/).
@z

@x
## Module workspaces
@y
## Module workspaces
@z

@x
{{< new-in 0.109.0 >}}
@y
{{< new-in 0.109.0 >}}
@z

@x
Workspace support was added in [Go 1.18](https://go.dev/blog/get-familiar-with-workspaces) and Hugo got solid support for it in the `v0.109.0` version.
@y
Workspace support was added in [Go 1.18](https://go.dev/blog/get-familiar-with-workspaces) and Hugo got solid support for it in the `v0.109.0` version.
@z

@x
A common use case for a workspace is to simplify local development of a site with its theme modules.
@y
A common use case for a workspace is to simplify local development of a site with its theme modules.
@z

@x
A workspace can be configured in a `*.work` file and activated with the [module.workspace](/hugo-modules/configuration/) setting, which for this use is commonly controlled via the `HUGO_MODULE_WORKSPACE` OS environment variable.
@y
A workspace can be configured in a `*.work` file and activated with the [module.workspace](/hugo-modules/configuration/) setting, which for this use is commonly controlled via the `HUGO_MODULE_WORKSPACE` OS environment variable.
@z

@x
See the [hugo.work](https://github.com/gohugoio/hugo/blob/master/docs/hugo.work) file in the Hugo Docs repo for an example:
@y
See the [hugo.work](https://github.com/gohugoio/hugo/blob/master/docs/hugo.work) file in the Hugo Docs repo for an example:
@z

@x
```text
go 1.20
@y
```text
go 1.20
@z

@x
use .
use ../gohugoioTheme
```
@y
use .
use ../gohugoioTheme
```
@z

@x
Using the `use` directive, list all the modules you want to work on, pointing to its relative location. As in the example above, it's recommended to always include the main project (the ".") in the list.
@y
Using the `use` directive, list all the modules you want to work on, pointing to its relative location. As in the example above, it's recommended to always include the main project (the ".") in the list.
@z

@x
With that you can start the Hugo server with that workspace enabled:
@y
With that you can start the Hugo server with that workspace enabled:
@z

@x
```sh
HUGO_MODULE_WORKSPACE=hugo.work hugo server --ignoreVendorPaths "**"
```
@y
```sh
HUGO_MODULE_WORKSPACE=hugo.work hugo server --ignoreVendorPaths "**"
```
@z

@x
The `--ignoreVendorPaths` flag is added above to ignore any of the vendored dependencies inside `_vendor`. If you don't use vendoring, you don't need that flag. But now the server is set up watching the files and directories in the workspace and you can see your local edits reloaded.
@y
The `--ignoreVendorPaths` flag is added above to ignore any of the vendored dependencies inside `_vendor`. If you don't use vendoring, you don't need that flag. But now the server is set up watching the files and directories in the workspace and you can see your local edits reloaded.
@z
