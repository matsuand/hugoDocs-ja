%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Configure Hugo modules
description: This page describes the configuration options for a module.
categories: [hugo modules]
keywords: [modules,themes]
menu:
  docs:
    parent: modules
    weight: 20
weight: 20
toc: true
---
@y
---
title: Hugo モジュールの設定
description: This page describes the configuration options for a module.
categories: [hugo モジュール]
keywords: [modules,themes]
menu:
  docs:
    parent: modules
    weight: 20
weight: 20
toc: true
---
@z

@x
## Module configuration: top level
@y
## Module configuration: top level
@z

@x
{{< code-toggle file=hugo >}}
[module]
noProxy = 'none'
noVendor = ''
private = '*.*'
proxy = 'direct'
replacements = ''
vendorClosest = false
workspace = 'off'
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[module]
noProxy = 'none'
noVendor = ''
private = '*.*'
proxy = 'direct'
replacements = ''
vendorClosest = false
workspace = 'off'
{{< /code-toggle >}}
@z

@x
noProxy
: Comma separated glob list matching paths that should not use the proxy configured above.
@y
noProxy
: Comma separated glob list matching paths that should not use the proxy configured above.
@z

@x
noVendor
: A optional Glob pattern matching module paths to skip when vendoring, e.g. "github.com/**"
@y
noVendor
: A optional Glob pattern matching module paths to skip when vendoring, e.g. "github.com/**"
@z

@x
private
: Comma separated glob list matching paths that should be treated as private.
@y
private
: Comma separated glob list matching paths that should be treated as private.
@z

@x
proxy
: Defines the proxy server to use to download remote modules. Default is `direct`, which means "git clone" and similar.
@y
proxy
: Defines the proxy server to use to download remote modules. Default is `direct`, which means "git clone" and similar.
@z

@x
vendorClosest
: When enabled, we will pick the vendored module closest to the module using it. The default behavior is to pick the first. Note that there can still be only one dependency of a given module path, so once it is in use it cannot be redefined.
@y
vendorClosest
: When enabled, we will pick the vendored module closest to the module using it. The default behavior is to pick the first. Note that there can still be only one dependency of a given module path, so once it is in use it cannot be redefined.
@z

@x
workspace
: The workspace file to use. This enables Go workspace mode. Note that this can also be set via OS env, e.g. `export HUGO_MODULE_WORKSPACE=/my/hugo.work` This only works with Go 1.18+. In Hugo `v0.109.0` we changed the default to `off` and we now resolve any relative work file names relative to the working directory.
@y
workspace
: The workspace file to use. This enables Go workspace mode. Note that this can also be set via OS env, e.g. `export HUGO_MODULE_WORKSPACE=/my/hugo.work` This only works with Go 1.18+. In Hugo `v0.109.0` we changed the default to `off` and we now resolve any relative work file names relative to the working directory.
@z

@x
replacements
: A comma-separated list of mappings from module paths to directories, e.g. `github.com/bep/my-theme -> ../..,github.com/bep/shortcodes -> /some/path`. This is mostly useful for temporary local development of a module, in which case you might want to save it as an environment variable, e.g: `env HUGO_MODULE_REPLACEMENTS="github.com/bep/my-theme -> ../.."`. Relative paths are relative to [themesDir](/getting-started/configuration/#all-configuration-settings). Absolute paths are allowed.
@y
replacements
: A comma-separated list of mappings from module paths to directories, e.g. `github.com/bep/my-theme -> ../..,github.com/bep/shortcodes -> /some/path`. This is mostly useful for temporary local development of a module, in which case you might want to save it as an environment variable, e.g: `env HUGO_MODULE_REPLACEMENTS="github.com/bep/my-theme -> ../.."`. Relative paths are relative to [themesDir](/getting-started/configuration/#all-configuration-settings). Absolute paths are allowed.
@z

@x
Note that the above terms maps directly to their counterparts in Go Modules. Some of these setting may be natural to set as OS environment variables. To set the proxy server to use, as an example:
@y
Note that the above terms maps directly to their counterparts in Go Modules. Some of these setting may be natural to set as OS environment variables. To set the proxy server to use, as an example:
@z

@x
```txt
env HUGO_MODULE_PROXY=https://proxy.example.org hugo
```
@y
```txt
env HUGO_MODULE_PROXY=https://proxy.example.org hugo
```
@z

@x
{{< gomodules-info >}}
@y
{{< gomodules-info >}}
@z

@x
## Module configuration: hugoVersion
@y
## Module configuration: hugoVersion
@z

@x
If your module requires a particular version of Hugo to work, you can indicate that in the `module` section and the user will be warned if using a too old/new version.
@y
If your module requires a particular version of Hugo to work, you can indicate that in the `module` section and the user will be warned if using a too old/new version.
@z

@x
{{< code-toggle file=hugo >}}
[module]
[module.hugoVersion]
  min = ""
  max = ""
  extended = false
@y
{{< code-toggle file=hugo >}}
[module]
[module.hugoVersion]
  min = ""
  max = ""
  extended = false
@z

@x
{{< /code-toggle >}}
@y
{{< /code-toggle >}}
@z

@x
Any of the above can be omitted.
@y
Any of the above can be omitted.
@z

@x
min
: The minimum Hugo version supported, e.g. `0.55.0`
@y
min
: The minimum Hugo version supported, e.g. `0.55.0`
@z

@x
max
: The maximum Hugo version supported, e.g. `0.55.0`
@y
max
: The maximum Hugo version supported, e.g. `0.55.0`
@z

@x
extended
: Whether the extended version of Hugo is required.
@y
extended
: Whether the extended version of Hugo is required.
@z

@x
## Module configuration: imports
@y
## Module configuration: imports
@z

@x
{{< code-toggle file=hugo >}}
[module]
[[module.imports]]
  path = "github.com/gohugoio/hugoTestModules1_linux/modh1_2_1v"
  ignoreConfig = false
  ignoreImports = false
  disable = false
[[module.imports]]
  path = "my-shortcodes"
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[module]
[[module.imports]]
  path = "github.com/gohugoio/hugoTestModules1_linux/modh1_2_1v"
  ignoreConfig = false
  ignoreImports = false
  disable = false
[[module.imports]]
  path = "my-shortcodes"
{{< /code-toggle >}}
@z

@x
path
: Can be either a valid Go Module module path, e.g. `github.com/gohugoio/myShortcodes`, or the directory name for the module as stored in your themes folder.
@y
path
: Can be either a valid Go Module module path, e.g. `github.com/gohugoio/myShortcodes`, or the directory name for the module as stored in your themes folder.
@z

@x
ignoreConfig
: If enabled, any module configuration file, e.g. `hugo.toml`, will not be loaded. Note that this will also stop the loading of any transitive module dependencies.
@y
ignoreConfig
: If enabled, any module configuration file, e.g. `hugo.toml`, will not be loaded. Note that this will also stop the loading of any transitive module dependencies.
@z

@x
ignoreImports
: If enabled, module imports will not be followed.
@y
ignoreImports
: If enabled, module imports will not be followed.
@z

@x
disable
: Set to `true` to disable the module while keeping any version info in the `go.*` files.
@y
disable
: Set to `true` to disable the module while keeping any version info in the `go.*` files.
@z

@x
noMounts
:  Do not mount any folder in this import.
@y
noMounts
:  Do not mount any folder in this import.
@z

@x
noVendor
:  Never vendor this import (only allowed in main project).
@y
noVendor
:  Never vendor this import (only allowed in main project).
@z

@x
{{< gomodules-info >}}
@y
{{< gomodules-info >}}
@z

@x
## Module configuration: mounts
@y
## Module configuration: mounts
@z

@x
{{% note %}}
When the `mounts` configuration was introduced in Hugo 0.56.0, we were careful to preserve the existing `contentDir`, `staticDir`, and similar configuration to make sure all existing sites just continued to work. But you should not have both: if you add a `mounts` section you should remove the old `contentDir`, `staticDir`, etc. settings.
{{% /note %}}
@y
{{% note %}}
When the `mounts` configuration was introduced in Hugo 0.56.0, we were careful to preserve the existing `contentDir`, `staticDir`, and similar configuration to make sure all existing sites just continued to work. But you should not have both: if you add a `mounts` section you should remove the old `contentDir`, `staticDir`, etc. settings.
{{% /note %}}
@z

@x
{{% note %}}
When you add a mount, the default mount for the concerned target root is ignored: be sure to explicitly add it.
{{% /note %}}
@y
{{% note %}}
When you add a mount, the default mount for the concerned target root is ignored: be sure to explicitly add it.
{{% /note %}}
@z

@x
**Default mounts**
{{< code-toggle file=hugo >}}
[module]
[[module.mounts]]
    source="content"
    target="content"
[[module.mounts]]
    source="static"
    target="static"
[[module.mounts]]
    source="layouts"
    target="layouts"
[[module.mounts]]
    source="data"
    target="data"
[[module.mounts]]
    source="assets"
    target="assets"
[[module.mounts]]
    source="i18n"
    target="i18n"
[[module.mounts]]
    source="archetypes"
    target="archetypes"
{{< /code-toggle >}}
@y
**Default mounts**
{{< code-toggle file=hugo >}}
[module]
[[module.mounts]]
    source="content"
    target="content"
[[module.mounts]]
    source="static"
    target="static"
[[module.mounts]]
    source="layouts"
    target="layouts"
[[module.mounts]]
    source="data"
    target="data"
[[module.mounts]]
    source="assets"
    target="assets"
[[module.mounts]]
    source="i18n"
    target="i18n"
[[module.mounts]]
    source="archetypes"
    target="archetypes"
{{< /code-toggle >}}
@z

@x
source
: The source directory of the mount. For the main project, this can be either project-relative or absolute. For other modules it must be project-relative.
@y
source
: The source directory of the mount. For the main project, this can be either project-relative or absolute. For other modules it must be project-relative.
@z

@x
target
: Where it should be mounted into Hugo's virtual filesystem. It must start with one of Hugo's component folders: `static`, `content`, `layouts`, `data`, `assets`, `i18n`, or `archetypes`. E.g. `content/blog`.
@y
target
: Where it should be mounted into Hugo's virtual filesystem. It must start with one of Hugo's component folders: `static`, `content`, `layouts`, `data`, `assets`, `i18n`, or `archetypes`. E.g. `content/blog`.
@z

@x
lang
: The language code, e.g. "en". Only relevant for `content` mounts, and `static` mounts when in multihost mode.
@y
lang
: The language code, e.g. "en". Only relevant for `content` mounts, and `static` mounts when in multihost mode.
@z

@x
includeFiles (string or slice)
: One or more [glob](https://github.com/gobwas/glob) patterns matching files or directories to include. If `excludeFiles` is not set, the files matching `includeFiles` will be the files mounted.
@y
includeFiles (string or slice)
: One or more [glob](https://github.com/gobwas/glob) patterns matching files or directories to include. If `excludeFiles` is not set, the files matching `includeFiles` will be the files mounted.
@z

@x
The glob patterns are matched to the file names starting from the `source` root, they should have Unix styled slashes even on Windows, `/` matches the mount root and `**` can be used as a  super-asterisk to match recursively down all directories, e.g `/posts/**.jpg`.
@y
The glob patterns are matched to the file names starting from the `source` root, they should have Unix styled slashes even on Windows, `/` matches the mount root and `**` can be used as a  super-asterisk to match recursively down all directories, e.g `/posts/**.jpg`.
@z

@x
The search is case-insensitive.
@y
The search is case-insensitive.
@z

@x
excludeFiles (string or slice)
: One or more glob patterns matching files to exclude.
@y
excludeFiles (string or slice)
: One or more glob patterns matching files to exclude.
@z

@x
**Example**
{{< code-toggle file=hugo >}}
[module]
[[module.mounts]]
    source="content"
    target="content"
    excludeFiles="docs/*"
[[module.mounts]]
    source="node_modules"
    target="assets"
[[module.mounts]]
    source="assets"
    target="assets"
{{< /code-toggle >}}
@y
**Example**
{{< code-toggle file=hugo >}}
[module]
[[module.mounts]]
    source="content"
    target="content"
    excludeFiles="docs/*"
[[module.mounts]]
    source="node_modules"
    target="assets"
[[module.mounts]]
    source="assets"
    target="assets"
{{< /code-toggle >}}
@z
