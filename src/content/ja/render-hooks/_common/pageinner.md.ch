%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
# Do not remove front matter.
---
@y
---
# Do not remove front matter.
---
@z

@x
## PageInner details
@y
## PageInner details
@z

@x
{{< new-in 0.125.0 >}}
@y
{{< new-in 0.125.0 >}}
@z

@x
The primary use case for `PageInner` is to resolve links and [page resources] relative to an included `Page`. For example, create an "include" shortcode to compose a page from multiple content files, while preserving a global context for footnotes and the table of contents:
@y
The primary use case for `PageInner` is to resolve links and [page resources] relative to an included `Page`. For example, create an "include" shortcode to compose a page from multiple content files, while preserving a global context for footnotes and the table of contents:
@z

@x
{{< code file=layouts/shortcodes/include.html >}}
{{ with site.GetPage (.Get 0) }}
  {{ .RenderShortcodes }}
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/shortcodes/include.html >}}
{{ with site.GetPage (.Get 0) }}
  {{ .RenderShortcodes }}
{{ end }}
{{< /code >}}
@z

@x
Then call the shortcode in your Markdown:
@y
Then call the shortcode in your Markdown:
@z

@x
{{< code file=content/posts/p1.md >}}
{{%/* include "/posts/p2" */%}}
{{< /code >}}
@y
{{< code file=content/posts/p1.md >}}
{{%/* include "/posts/p2" */%}}
{{< /code >}}
@z

@x
Any render hook triggered while rendering `/posts/p2` will get:
@y
Any render hook triggered while rendering `/posts/p2` will get:
@z

@x
- `/posts/p1` when calling `Page`
- `/posts/p2` when calling `PageInner`
@y
- `/posts/p1` when calling `Page`
- `/posts/p2` when calling `PageInner`
@z

@x
`PageInner` falls back to the value of `Page` if not relevant, and always returns a value.
@y
`PageInner` falls back to the value of `Page` if not relevant, and always returns a value.
@z

@x
{{% note %}}
The `PageInner` method is only relevant for shortcodes that invoke the [`RenderShortcodes`] method, and you must call the shortcode using the `{{%/*..*/%}}` notation.
@y
{{% note %}}
The `PageInner` method is only relevant for shortcodes that invoke the [`RenderShortcodes`] method, and you must call the shortcode using the `{{%/*..*/%}}` notation.
@z

@x
[`RenderShortcodes`]: /methods/page/rendershortcodes/
{{% /note %}}
@y
[`RenderShortcodes`]: /methods/page/rendershortcodes/
{{% /note %}}
@z

@x
As a practical example, Hugo's embedded link and image render hooks use the `PageInner` method to resolve markdown link and image destinations. See the source code for each:
@y
As a practical example, Hugo's embedded link and image render hooks use the `PageInner` method to resolve markdown link and image destinations. See the source code for each:
@z

@x
- [Embedded link render hook]({{% eturl render-link %}})
- [Embedded image render hook]({{% eturl render-image %}})
@y
- [Embedded link render hook]({{% eturl render-link %}})
- [Embedded image render hook]({{% eturl render-image %}})
@z

@x
[`RenderShortcodes`]: /methods/page/rendershortcodes/
[page resources]: /getting-started/glossary/#page-resource
@y
[`RenderShortcodes`]: /methods/page/rendershortcodes/
[page resources]: /getting-started/glossary/#page-resource
@z
