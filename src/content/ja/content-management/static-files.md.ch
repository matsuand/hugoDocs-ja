%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Static files
description: Files that get served **statically** (as-is, no modification) on the site root.
categories: [content management]
keywords: [source, directories]
menu:
  docs:
    parent: content-management
    weight: 200
weight: 200
toc: true
aliases: [/static-files]
---
@y
---
title: Static files
description: Files that get served **statically** (as-is, no modification) on the site root.
categories: [content management]
keywords: [source, directories]
menu:
  docs:
    parent: content-management
    weight: 200
weight: 200
toc: true
aliases: [/static-files]
---
@z

@x
By default, the `static/` directory in the site project is used for
all **static files** (e.g. stylesheets, JavaScript, images). The static files are served on the site root path (eg. if you have the file `static/image.png` you can access it using `http://{server-url}/image.png`, to include it in a document you can use `![Example image](/image.png) )`.
@y
By default, the `static/` directory in the site project is used for
all **static files** (e.g. stylesheets, JavaScript, images). The static files are served on the site root path (eg. if you have the file `static/image.png` you can access it using `http://{server-url}/image.png`, to include it in a document you can use `![Example image](/image.png) )`.
@z

@x
Hugo can be configured to look into a different directory, or even
**multiple directories** for such static files by configuring the
`staticDir` parameter in the [site configuration]. All the files in all the
static directories will form a union filesystem.
@y
Hugo can be configured to look into a different directory, or even
**multiple directories** for such static files by configuring the
`staticDir` parameter in the [site configuration]. All the files in all the
static directories will form a union filesystem.
@z

@x
This union filesystem will be served from your site root. So a file
`<SITE PROJECT>/static/me.png` will be accessible as
`<MY_BASEURL>/me.png`.
@y
This union filesystem will be served from your site root. So a file
`<SITE PROJECT>/static/me.png` will be accessible as
`<MY_BASEURL>/me.png`.
@z

@x
Here's an example of setting `staticDir` and `staticDir2` for a
multi-language site:
@y
Here's an example of setting `staticDir` and `staticDir2` for a
multi-language site:
@z

@x
{{< code-toggle file=hugo >}}
staticDir = ["static1", "static2"]
@y
{{< code-toggle file=hugo >}}
staticDir = ["static1", "static2"]
@z

@x
[languages]
[languages.en]
staticDir2 = "static_en"
baseURL = "https://example.org/"
languageName = "English"
weight = 2
title = "In English"
[languages.no]
staticDir = ["staticDir_override", "static_no"]
baseURL = "https://example.no"
languageName = "Norsk"
weight = 1
title = "På norsk"
{{</ code-toggle >}}
@y
[languages]
[languages.en]
staticDir2 = "static_en"
baseURL = "https://example.org/"
languageName = "English"
weight = 2
title = "In English"
[languages.no]
staticDir = ["staticDir_override", "static_no"]
baseURL = "https://example.no"
languageName = "Norsk"
weight = 1
title = "På norsk"
{{</ code-toggle >}}
@z

@x
In the above, with no theme used:
@y
In the above, with no theme used:
@z

@x
- The English site will get its static files as a union of "static1",
  "static2" and "static_en". On file duplicates, the right-most
  version will win.
- The Norwegian site will get its static files as a union of
  "staticDir_override" and "static_no".
@y
- The English site will get its static files as a union of "static1",
  "static2" and "static_en". On file duplicates, the right-most
  version will win.
- The Norwegian site will get its static files as a union of
  "staticDir_override" and "static_no".
@z

@x
Note 1
: The **2** (can be a number between 0 and 10) in `staticDir2` is
  added to tell Hugo that you want to **add** this directory to the
  global set of static directories defined using `staticDir`. Using
  `staticDir` on the language level would replace the global value (as
  can be seen in the Norwegian site case).
@y
Note 1
: The **2** (can be a number between 0 and 10) in `staticDir2` is
  added to tell Hugo that you want to **add** this directory to the
  global set of static directories defined using `staticDir`. Using
  `staticDir` on the language level would replace the global value (as
  can be seen in the Norwegian site case).
@z

@x
Note 2
: The example above is a [multihost setup]. In a regular setup, all
  the static directories will be available to all sites.
@y
Note 2
: The example above is a [multihost setup]. In a regular setup, all
  the static directories will be available to all sites.
@z

@x
[site configuration]: /getting-started/configuration/#all-configuration-settings
[multihost setup]: /content-management/multilingual/#configure-multilingual-multihost
@y
[site configuration]: /getting-started/configuration/#all-configuration-settings
[multihost setup]: /content-management/multilingual/#configure-multilingual-multihost
@z
