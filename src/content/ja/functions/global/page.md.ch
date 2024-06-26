%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% snip 対応

@x
title: page
description: Provides global access to a Page object.
categories: []
keywords: []
@y
title: page
description: Provides global access to a Page object.
categories: []
keywords: []
@z

@x
{{< new-in 0.111.0 >}}
@y
{{< new-in 0.111.0 >}}
@z

@x
At the top level of a template that receives a `Page` object in context, these are equivalent:
@y
At the top level of a template that receives a `Page` object in context, these are equivalent:
@z

% snip code...

@x
When a `Page` object is not in context, you can use the global `page` function:
@y
When a `Page` object is not in context, you can use the global `page` function:
@z

% snip code...

@x note
Do not use the global `page` function in shortcodes, partials called by shortcodes, or cached partials. See [warnings](#warnings) below.
@y
Do not use the global `page` function in shortcodes, partials called by shortcodes, or cached partials. See [warnings](#warnings) below.
@z

@x
## Explanation
@y
## Explanation
@z

@x
Hugo almost always passes a `Page` as the data context into the top level template (e.g., `single.html`). The one exception is the multihost sitemap template. This means that you can access the current page with the `.` in the template.
@y
Hugo almost always passes a `Page` as the data context into the top level template (e.g., `single.html`). The one exception is the multihost sitemap template. This means that you can access the current page with the `.` in the template.
@z

@x
But when you are deeply nested inside of a [content view], [partial], or [render hook], it is not always practical or possible to access the `Page` object.
@y
But when you are deeply nested inside of a [content view], [partial], or [render hook], it is not always practical or possible to access the `Page` object.
@z

@x
Use the global `page` function to access the `Page` object from anywhere in any template.
@y
Use the global `page` function to access the `Page` object from anywhere in any template.
@z

@x
## Warnings
@y
## Warnings
@z

@x
### Be aware of top-level context
@y
### Be aware of top-level context
@z

@x
The global `page` function accesses the `Page` object passed into the top-level template.
@y
The global `page` function accesses the `Page` object passed into the top-level template.
@z

@x
With this content structure:
@y
With this content structure:
@z

@x
```text
content/
├── posts/
│   ├── post-1.md
│   ├── post-2.md
│   └── post-3.md
└── _index.md      <-- title is "My Home Page"
```
@y
```text
content/
├── posts/
│   ├── post-1.md
│   ├── post-2.md
│   └── post-3.md
└── _index.md      <-- title is "My Home Page"
```
@z

@x
And this code in the home page template:
@y
And this code in the home page template:
@z

% snip code...

@x
The rendered output will be:
@y
The rendered output will be:
@z

@x
```text
My Home Page
My Home Page
My Home Page
```
@y
```text
My Home Page
My Home Page
My Home Page
```
@z

@x
In the example above, the global `page` function accesses the `Page` object passed into the home page template; it does not access the `Page` object of the iterated pages.
@y
In the example above, the global `page` function accesses the `Page` object passed into the home page template; it does not access the `Page` object of the iterated pages.
@z

@x
### Be aware of caching
@y
### Be aware of caching
@z

@x
Do not use the global `page` function in:
@y
Do not use the global `page` function in:
@z

@x
- Shortcodes
- Partials called by shortcodes
- Partials cached by the [`partialCached`] function
@y
- Shortcodes
- Partials called by shortcodes
- Partials cached by the [`partialCached`] function
@z

@x
Hugo caches rendered shortcodes. If you use the global `page` function within a shortcode, and the page content is rendered in two or more templates, the cached shortcode may be incorrect.
@y
Hugo caches rendered shortcodes. If you use the global `page` function within a shortcode, and the page content is rendered in two or more templates, the cached shortcode may be incorrect.
@z

@x
Consider this section template:
@y
Consider this section template:
@z

% snip code...

@x
When you call the [`Summary`] method, Hugo renders the page content including shortcodes. In this case, within a shortcode, the global `page` function accesses the `Page` object of the section page, not the content page.
@y
When you call the [`Summary`] method, Hugo renders the page content including shortcodes. In this case, within a shortcode, the global `page` function accesses the `Page` object of the section page, not the content page.
@z

@x
If Hugo renders the section page before a content page, the cached rendered shortcode will be incorrect. You cannot control the rendering sequence due to concurrency.
@y
If Hugo renders the section page before a content page, the cached rendered shortcode will be incorrect. You cannot control the rendering sequence due to concurrency.
@z

% snip links...
