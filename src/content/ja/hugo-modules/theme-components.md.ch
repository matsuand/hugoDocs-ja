%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Theme components
description: Hugo provides advanced theming support with Theme Components.
categories: [hugo modules]
keywords: [modules,themes]
menu:
  docs:
    parent: modules
    weight: 40
weight: 40
aliases: [/themes/customize/,/themes/customizing/]
toc: true
---
@y
---
title: Theme components
description: Hugo provides advanced theming support with Theme Components.
categories: [hugo modules]
keywords: [modules,themes]
menu:
  docs:
    parent: modules
    weight: 40
weight: 40
aliases: [/themes/customize/,/themes/customizing/]
toc: true
---
@z

@x
{{% note %}}
This section contain information that may be outdated and is in the process of being rewritten.
{{% /note %}}
Since Hugo `0.42` a project can configure a theme as a composite of as many theme components you need:
@y
{{% note %}}
This section contain information that may be outdated and is in the process of being rewritten.
{{% /note %}}
Since Hugo `0.42` a project can configure a theme as a composite of as many theme components you need:
@z

@x
{{< code-toggle file=hugo >}}
theme = ["my-shortcodes", "base-theme", "hyde"]
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
theme = ["my-shortcodes", "base-theme", "hyde"]
{{< /code-toggle >}}
@z

@x
You can even nest this, and have the theme component itself include theme components in its own `hugo.toml` (theme inheritance).[^1]
@y
You can even nest this, and have the theme component itself include theme components in its own `hugo.toml` (theme inheritance).[^1]
@z

@x
The theme definition example above in `hugo.toml` creates a theme with 3 theme components with precedence from left to right.
@y
The theme definition example above in `hugo.toml` creates a theme with 3 theme components with precedence from left to right.
@z

@x
For any given file, data entry, etc., Hugo will look first in the project and then in `my-shortcodes`, `base-theme`, and lastly `hyde`.
@y
For any given file, data entry, etc., Hugo will look first in the project and then in `my-shortcodes`, `base-theme`, and lastly `hyde`.
@z

@x
Hugo uses two different algorithms to merge the file systems, depending on the file type:
@y
Hugo uses two different algorithms to merge the file systems, depending on the file type:
@z

@x
* For `i18n` and `data` files, Hugo merges deeply using the translation ID and data key inside the files.
* For `static`, `layouts` (templates), and `archetypes` files, these are merged on file level. So the left-most file will be chosen.
@y
* For `i18n` and `data` files, Hugo merges deeply using the translation ID and data key inside the files.
* For `static`, `layouts` (templates), and `archetypes` files, these are merged on file level. So the left-most file will be chosen.
@z

@x
The name used in the `theme` definition above must match a folder in `/your-site/themes`, e.g. `/your-site/themes/my-shortcodes`. There are plans to improve on this and get a URL scheme so this can be resolved automatically.
@y
The name used in the `theme` definition above must match a folder in `/your-site/themes`, e.g. `/your-site/themes/my-shortcodes`. There are plans to improve on this and get a URL scheme so this can be resolved automatically.
@z

@x
Also note that a component that is part of a theme can have its own configuration file, e.g. `hugo.toml`. There are currently some restrictions to what a theme component can configure:
@y
Also note that a component that is part of a theme can have its own configuration file, e.g. `hugo.toml`. There are currently some restrictions to what a theme component can configure:
@z

@x
* `params` (global and per language)
* `menu` (global and per language)
* `outputformats` and `mediatypes`
@y
* `params` (global and per language)
* `menu` (global and per language)
* `outputformats` and `mediatypes`
@z

@x
The same rules apply here: The left-most parameter/menu etc. with the same ID will win. There are some hidden and experimental namespace support in the above, which we will work to improve in the future, but theme authors are encouraged to create their own namespaces to avoid naming conflicts.
@y
The same rules apply here: The left-most parameter/menu etc. with the same ID will win. There are some hidden and experimental namespace support in the above, which we will work to improve in the future, but theme authors are encouraged to create their own namespaces to avoid naming conflicts.
@z

@x
[^1]: For themes hosted on the [Hugo Themes Showcase](https://themes.gohugo.io/) components need to be added as git submodules that point to the directory `exampleSite/themes`
@y
[^1]: For themes hosted on the [Hugo Themes Showcase](https://themes.gohugo.io/) components need to be added as git submodules that point to the directory `exampleSite/themes`
@z
