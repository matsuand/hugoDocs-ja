%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Menus
description:  Create menus by defining entries, localizing each entry, and rendering the resulting data structure.
categories: [content management]
keywords: [menus]
@y
title: メニュー
description:  Create menus by defining entries, localizing each entry, and rendering the resulting data structure.
categories: [content management]
keywords: [menus]
@z

@x
## Overview
@y
## 概要 {#overview}
@z

@x
To create a menu for your site:
@y
サイト内にメニューを生成するには以下を行います。
@z

@x
1. Define the menu entries
2. [Localize] each entry
3. Render the menu with a [template]
@y
1. メニューエントリーを定義します。
2. 各エントリーを [ローカライズ][Localize] します。
3. [テンプレート][template] を使ってメニューをレンダリングします。
@z

@x
Create multiple menus, either flat or nested. For example, create a main menu for the header, and a separate menu for the footer.
@y
Create multiple menus, either flat or nested. For example, create a main menu for the header, and a separate menu for the footer.
@z

@x
There are three ways to define menu entries:
@y
There are three ways to define menu entries:
@z

@x
1. Automatically
1. In front matter
1. In site configuration
@y
1. Automatically
1. In front matter
1. In site configuration
@z

@x
{{% note %}}
Although you can use these methods in combination when defining a menu, the menu will be easier to conceptualize and maintain if you use one method throughout the site.
{{% /note %}}
@y
{{% note %}}
Although you can use these methods in combination when defining a menu, the menu will be easier to conceptualize and maintain if you use one method throughout the site.
{{% /note %}}
@z

@x
## Define automatically
@y
## Define automatically {#define-automatically}
@z

@x
To automatically define a menu entry for each top-level [section] of your site, enable the section pages menu in your site configuration.
@y
To automatically define a menu entry for each top-level [section] of your site, enable the section pages menu in your site configuration.
@z

@x
{{< code-toggle file=hugo >}}
sectionPagesMenu = "main"
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
sectionPagesMenu = "main"
{{< /code-toggle >}}
@z

@x
This creates a menu structure that you can access with `site.Menus.main` in your templates. See [menu templates] for details.
@y
This creates a menu structure that you can access with `site.Menus.main` in your templates. See [menu templates] for details.
@z

@x
## Define in front matter
@y
## Define in front matter
@z

@x
To add a page to the "main" menu:
@y
To add a page to the "main" menu:
@z

@x
{{< code-toggle file=content/about.md fm=true >}}
title = 'About'
menus = 'main'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/about.md fm=true >}}
title = 'About'
menus = 'main'
{{< /code-toggle >}}
@z

@x
Access the entry with `site.Menus.main` in your templates. See [menu templates] for details.
@y
Access the entry with `site.Menus.main` in your templates. See [menu templates] for details.
@z

@x
To add a page to the "main" and "footer" menus:
@y
To add a page to the "main" and "footer" menus:
@z

@x
{{< code-toggle file=content/contact.md fm=true >}}
title = 'Contact'
menus = ['main','footer']
{{< /code-toggle >}}
@y
{{< code-toggle file=content/contact.md fm=true >}}
title = 'Contact'
menus = ['main','footer']
{{< /code-toggle >}}
@z

@x
Access the entry with `site.Menus.main` and `site.Menus.footer` in your templates. See [menu templates] for details.
@y
Access the entry with `site.Menus.main` and `site.Menus.footer` in your templates. See [menu templates] for details.
@z

@x
{{% note %}}
The configuration key in the examples above is `menus`. The `menu` (singular) configuration key is an alias for `menus`.
{{% /note %}}
@y
{{% note %}}
The configuration key in the examples above is `menus`. The `menu` (singular) configuration key is an alias for `menus`.
{{% /note %}}
@z

@x
### Properties {#properties-front-matter}
@y
### Properties {#properties-front-matter}
@z

@x
Use these properties when defining menu entries in front matter:
@y
Use these properties when defining menu entries in front matter:
@z

@x
identifier
: (`string`) Required when two or more menu entries have the same `name`, or when localizing the `name` using translation tables. Must start with a letter, followed by letters, digits, or underscores.
@y
identifier
: (`string`) Required when two or more menu entries have the same `name`, or when localizing the `name` using translation tables. Must start with a letter, followed by letters, digits, or underscores.
@z

@x
name
: (`string`) The text to display when rendering the menu entry.
@y
name
: (`string`) The text to display when rendering the menu entry.
@z

@x
params
: (`map`) User-defined properties for the menu entry.
@y
params
: (`map`) User-defined properties for the menu entry.
@z

@x
parent
: (`string`) The `identifier` of the parent menu entry. If `identifier` is not defined, use `name`. Required for child entries in a nested menu.
@y
parent
: (`string`) The `identifier` of the parent menu entry. If `identifier` is not defined, use `name`. Required for child entries in a nested menu.
@z

@x
post
: (`string`) The HTML to append when rendering the menu entry.
@y
post
: (`string`) The HTML to append when rendering the menu entry.
@z

@x
pre
: (`string`) The HTML to prepend when rendering the menu entry.
@y
pre
: (`string`) The HTML to prepend when rendering the menu entry.
@z

@x
title
: (`string`) The HTML `title` attribute of the rendered menu entry.
@y
title
: (`string`) The HTML `title` attribute of the rendered menu entry.
@z

@x
weight
: (`int`) A non-zero integer indicating the entry's position relative the root of the menu, or to its parent for a child entry. Lighter entries float to the top, while heavier entries sink to the bottom.
@y
weight
: (`int`) A non-zero integer indicating the entry's position relative the root of the menu, or to its parent for a child entry. Lighter entries float to the top, while heavier entries sink to the bottom.
@z

@x
### Example {#example-front-matter}
@y
### Example {#example-front-matter}
@z

@x
This front matter menu entry demonstrates some of the available properties:
@y
This front matter menu entry demonstrates some of the available properties:
@z

@x
{{< code-toggle file=content/products/software.md fm=true >}}
title = 'Software'
[[menus.main]]
parent = 'Products'
weight = 20
pre = '<i class="fa-solid fa-code"></i>'
[menus.main.params]
class = 'center'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/products/software.md fm=true >}}
title = 'Software'
[[menus.main]]
parent = 'Products'
weight = 20
pre = '<i class="fa-solid fa-code"></i>'
[menus.main.params]
class = 'center'
{{< /code-toggle >}}
@z

@x
Access the entry with `site.Menus.main` in your templates. See [menu templates] for details.
@y
Access the entry with `site.Menus.main` in your templates. See [menu templates] for details.
@z

@x
## Define in site configuration
@y
## Define in site configuration
@z

@x
To define entries for the "main" menu:
@y
To define entries for the "main" menu:
@z

@x
{{< code-toggle file=hugo >}}
[[menus.main]]
name = 'Home'
pageRef = '/'
weight = 10
@y
{{< code-toggle file=hugo >}}
[[menus.main]]
name = 'Home'
pageRef = '/'
weight = 10
@z

@x
[[menus.main]]
name = 'Products'
pageRef = '/products'
weight = 20
@y
[[menus.main]]
name = 'Products'
pageRef = '/products'
weight = 20
@z

@x
[[menus.main]]
name = 'Services'
pageRef = '/services'
weight = 30
{{< /code-toggle >}}
@y
[[menus.main]]
name = 'Services'
pageRef = '/services'
weight = 30
{{< /code-toggle >}}
@z

@x
This creates a menu structure that you can access with `site.Menus.main` in your templates. See [menu templates] for details.
@y
This creates a menu structure that you can access with `site.Menus.main` in your templates. See [menu templates] for details.
@z

@x
To define entries for the "footer" menu:
@y
To define entries for the "footer" menu:
@z

@x
{{< code-toggle file=hugo >}}
[[menus.footer]]
name = 'Terms'
pageRef = '/terms'
weight = 10
@y
{{< code-toggle file=hugo >}}
[[menus.footer]]
name = 'Terms'
pageRef = '/terms'
weight = 10
@z

@x
[[menus.footer]]
name = 'Privacy'
pageRef = '/privacy'
weight = 20
{{< /code-toggle >}}
@y
[[menus.footer]]
name = 'Privacy'
pageRef = '/privacy'
weight = 20
{{< /code-toggle >}}
@z

@x
This creates a menu structure that you can access with `site.Menus.footer` in your templates. See [menu templates] for details.
@y
This creates a menu structure that you can access with `site.Menus.footer` in your templates. See [menu templates] for details.
@z

@x
{{% note %}}
The configuration key in the examples above is `menus`. The `menu` (singular) configuration key is an alias for `menus`.
{{% /note %}}
@y
{{% note %}}
The configuration key in the examples above is `menus`. The `menu` (singular) configuration key is an alias for `menus`.
{{% /note %}}
@z

@x
### Properties {#properties-site-configuration}
@y
### Properties {#properties-site-configuration}
@z

@x
{{% note %}}
The [properties available to entries defined in front matter] are also available to entries defined in site configuration.
@y
{{% note %}}
The [properties available to entries defined in front matter] are also available to entries defined in site configuration.
@z

@x
[properties available to entries defined in front matter]: /content-management/menus/#properties-front-matter
{{% /note %}}
@y
[properties available to entries defined in front matter]: /content-management/menus/#properties-front-matter
{{% /note %}}
@z

@x
Each menu entry defined in site configuration requires two or more properties:
@y
Each menu entry defined in site configuration requires two or more properties:
@z

@x
- Specify `name` and `pageRef` for internal links
- Specify `name` and `url` for external links
@y
- Specify `name` and `pageRef` for internal links
- Specify `name` and `url` for external links
@z

@x
pageRef
: (`string`) The logical path of the target page, relative to the `content` directory. Omit language code and file extension. Required for *internal* links.
@y
pageRef
: (`string`) The logical path of the target page, relative to the `content` directory. Omit language code and file extension. Required for *internal* links.
@z

@x
Kind|pageRef
:--|:--
home|`/`
page|`/books/book-1`
section|`/books`
taxonomy|`/tags`
term|`/tags/foo`
@y
Kind|pageRef
:--|:--
home|`/`
page|`/books/book-1`
section|`/books`
taxonomy|`/tags`
term|`/tags/foo`
@z

@x
url
: (`string`) Required for *external* links.
@y
url
: (`string`) Required for *external* links.
@z

@x
### Example {#example-site-configuration}
@y
### Example {#example-site-configuration}
@z

@x
This nested menu demonstrates some of the available properties:
@y
This nested menu demonstrates some of the available properties:
@z

@x
{{< code-toggle file=hugo >}}
[[menus.main]]
name = 'Products'
pageRef = '/products'
weight = 10
@y
{{< code-toggle file=hugo >}}
[[menus.main]]
name = 'Products'
pageRef = '/products'
weight = 10
@z

@x
[[menus.main]]
name = 'Hardware'
pageRef = '/products/hardware'
parent = 'Products'
weight = 1
@y
[[menus.main]]
name = 'Hardware'
pageRef = '/products/hardware'
parent = 'Products'
weight = 1
@z

@x
[[menus.main]]
name = 'Software'
pageRef = '/products/software'
parent = 'Products'
weight = 2
@y
[[menus.main]]
name = 'Software'
pageRef = '/products/software'
parent = 'Products'
weight = 2
@z

@x
[[menus.main]]
name = 'Services'
pageRef = '/services'
weight = 20
@y
[[menus.main]]
name = 'Services'
pageRef = '/services'
weight = 20
@z

@x
[[menus.main]]
name = 'Hugo'
pre = '<i class="fa fa-heart"></i>'
url = 'https://gohugo.io/'
weight = 30
[menus.main.params]
rel = 'external'
{{< /code-toggle >}}
@y
[[menus.main]]
name = 'Hugo'
pre = '<i class="fa fa-heart"></i>'
url = 'https://gohugo.io/'
weight = 30
[menus.main.params]
rel = 'external'
{{< /code-toggle >}}
@z

@x
This creates a menu structure that you can access with `site.Menus.main` in your templates. See [menu templates] for details.
@y
This creates a menu structure that you can access with `site.Menus.main` in your templates. See [menu templates] for details.
@z

@x
## Localize
@y
## Localize
@z

@x
Hugo provides two methods to localize your menu entries. See [multilingual].
@y
Hugo provides two methods to localize your menu entries. See [multilingual].
@z

@x
## Render
@y
## Render
@z

@x
See [menu templates].
@y
See [menu templates].
@z

% snip links...
