%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Blockquote render hooks
linkTitle: Blockquotes
description: Create a blockquote render hook to override the rendering of Markdown blockquotes to HTML.
categories: [render hooks]
keywords: []
menu:
  docs:
    parent: render-hooks
    weight: 30
weight: 30
toc: true
---
@y
---
title: Blockquote render hooks
linkTitle: Blockquotes
description: Create a blockquote render hook to override the rendering of Markdown blockquotes to HTML.
categories: [render hooks]
keywords: []
menu:
  docs:
    parent: render-hooks
    weight: 30
weight: 30
toc: true
---
@z

@x
{{< new-in 0.132.0 >}}
@y
{{< new-in 0.132.0 >}}
@z

@x
## Context
@y
## Context
@z

@x
Blockquote render hook templates receive the following [context]:
@y
Blockquote render hook templates receive the following [context]:
@z

@x
[context]: /getting-started/glossary/#context
@y
[context]: /getting-started/glossary/#context
@z

@x
###### AlertType
@y
###### AlertType
@z

@x
(`string`) Applicable when [`Type`](#type) is `alert`, this is the alert type converted to lowercase. See the [alerts](#alerts) section below.
@y
(`string`) Applicable when [`Type`](#type) is `alert`, this is the alert type converted to lowercase. See the [alerts](#alerts) section below.
@z

@x
###### AlertTitle
@y
###### AlertTitle
@z

@x
{{< new-in 0.134.0 >}}
@y
{{< new-in 0.134.0 >}}
@z

@x
(`template.HTML`) Applicable when [`Type`](#type) is `alert`, this is the alert title. See the [alerts](#alerts) section below.
@y
(`template.HTML`) Applicable when [`Type`](#type) is `alert`, this is the alert title. See the [alerts](#alerts) section below.
@z

@x
###### AlertSign
@y
###### AlertSign
@z

@x
{{< new-in 0.134.0 >}}
@y
{{< new-in 0.134.0 >}}
@z

@x
(`string`) Applicable when [`Type`](#type) is `alert`, this is the alert sign. Typically used to indicate whether an alert is graphically foldable, this is one of&nbsp;`+`,&nbsp;`-`,&nbsp;or an empty string. See the [alerts](#alerts) section below.
@y
(`string`) Applicable when [`Type`](#type) is `alert`, this is the alert sign. Typically used to indicate whether an alert is graphically foldable, this is one of&nbsp;`+`,&nbsp;`-`,&nbsp;or an empty string. See the [alerts](#alerts) section below.
@z

@x
###### Attributes
@y
###### Attributes
@z

@x
(`map`) The [Markdown attributes], available if you configure your site as follows:
@y
(`map`) The [Markdown attributes], available if you configure your site as follows:
@z

@x
[Markdown attributes]: /content-management/markdown-attributes/
@y
[Markdown attributes]: /content-management/markdown-attributes/
@z

@x
{{< code-toggle file=hugo >}}
[markup.goldmark.parser.attribute]
block = true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[markup.goldmark.parser.attribute]
block = true
{{< /code-toggle >}}
@z

@x
###### Ordinal
@y
###### Ordinal
@z

@x
(`int`) The zero-based ordinal of the blockquote on the page.
@y
(`int`) The zero-based ordinal of the blockquote on the page.
@z

@x
###### Page
@y
###### Page
@z

@x
(`page`) A reference to the current page.
@y
(`page`) A reference to the current page.
@z

@x
###### PageInner
@y
###### PageInner
@z

@x
(`page`) A reference to a page nested via the [`RenderShortcodes`] method. [See details](#pageinner-details).
@y
(`page`) A reference to a page nested via the [`RenderShortcodes`] method. [See details](#pageinner-details).
@z

@x
[`RenderShortcodes`]: /methods/page/rendershortcodes
@y
[`RenderShortcodes`]: /methods/page/rendershortcodes
@z

@x
###### Position
@y
###### Position
@z

@x
(`string`) The position of the blockquote within the page content.
@y
(`string`) The position of the blockquote within the page content.
@z

@x
###### Text
(`template.HTML`) The blockquote text, excluding the first line if [`Type`](#type) is `alert`. See the [alerts](#alerts) section below.
@y
###### Text
(`template.HTML`) The blockquote text, excluding the first line if [`Type`](#type) is `alert`. See the [alerts](#alerts) section below.
@z

@x
###### Type
@y
###### Type
@z

@x
(`bool`) The blockquote type. Returns `alert` if the blockquote has an alert designator, else `regular`. See the [alerts](#alerts) section below.
@y
(`bool`) The blockquote type. Returns `alert` if the blockquote has an alert designator, else `regular`. See the [alerts](#alerts) section below.
@z

@x
## Examples
@y
## Examples
@z

@x
In its default configuration, Hugo renders Markdown blockquotes according to the [CommonMark specification]. To create a render hook that does the same thing:
@y
In its default configuration, Hugo renders Markdown blockquotes according to the [CommonMark specification]. To create a render hook that does the same thing:
@z

@x
[CommonMark specification]: https://spec.commonmark.org/current/
@y
[CommonMark specification]: https://spec.commonmark.org/current/
@z

@x
{{< code file=layouts/_default/_markup/render-blockquote.html copy=true >}}
<blockquote>
  {{ .Text }}
</blockquote>
{{< /code >}}
@y
{{< code file=layouts/_default/_markup/render-blockquote.html copy=true >}}
<blockquote>
  {{ .Text }}
</blockquote>
{{< /code >}}
@z

@x
To render a blockquote as an HTML `figure` element with an optional citation and caption:
@y
To render a blockquote as an HTML `figure` element with an optional citation and caption:
@z

@x
{{< code file=layouts/_default/_markup/render-blockquote.html copy=true >}}
<figure>
  <blockquote {{ with .Attributes.cite }}cite="{{ . }}"{{ end }}>
    {{ .Text }}
  </blockquote>
  {{ with .Attributes.caption }}
    <figcaption class="blockquote-caption">
      {{ . | safeHTML }}
    </figcaption>
  {{ end }}
</figure>
{{< /code >}}
@y
{{< code file=layouts/_default/_markup/render-blockquote.html copy=true >}}
<figure>
  <blockquote {{ with .Attributes.cite }}cite="{{ . }}"{{ end }}>
    {{ .Text }}
  </blockquote>
  {{ with .Attributes.caption }}
    <figcaption class="blockquote-caption">
      {{ . | safeHTML }}
    </figcaption>
  {{ end }}
</figure>
{{< /code >}}
@z

@x
Then in your markdown:
@y
Then in your markdown:
@z

@x
```text
> Some text
{cite="https://gohugo.io" caption="Some caption"}
```
@y
```text
> Some text
{cite="https://gohugo.io" caption="Some caption"}
```
@z

@x
## Alerts
@y
## Alerts
@z

@x
Also known as _callouts_ or _admonitions_, alerts are blockquotes used to emphasize critical information.
@y
Also known as _callouts_ or _admonitions_, alerts are blockquotes used to emphasize critical information.
@z

@x
### Basic syntax
@y
### Basic syntax
@z

@x
With the basic Markdown syntax, the first line of each alert is an alert designator consisting of an exclamation point followed by the alert type, wrapped within brackets. For example:
@y
With the basic Markdown syntax, the first line of each alert is an alert designator consisting of an exclamation point followed by the alert type, wrapped within brackets. For example:
@z

@x
{{< code file=content/example.md lang=text >}}
> [!NOTE]
> Useful information that users should know, even when skimming content.
@y
{{< code file=content/example.md lang=text >}}
> [!NOTE]
> Useful information that users should know, even when skimming content.
@z

@x
> [!TIP]
> Helpful advice for doing things better or more easily.
@y
> [!TIP]
> Helpful advice for doing things better or more easily.
@z

@x
> [!IMPORTANT]
> Key information users need to know to achieve their goal.
@y
> [!IMPORTANT]
> Key information users need to know to achieve their goal.
@z

@x
> [!WARNING]
> Urgent info that needs immediate user attention to avoid problems.
@y
> [!WARNING]
> Urgent info that needs immediate user attention to avoid problems.
@z

@x
> [!CAUTION]
> Advises about risks or negative outcomes of certain actions.
{{< /code >}}
@y
> [!CAUTION]
> Advises about risks or negative outcomes of certain actions.
{{< /code >}}
@z

@x
The basic syntax is compatible with [GitHub], [Obsidian], and [Typora].
@y
The basic syntax is compatible with [GitHub], [Obsidian], and [Typora].
@z

@x
[GitHub]: https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#alerts
[Obsidian]: https://help.obsidian.md/Editing+and+formatting/Callouts
[Typora]: https://support.typora.io/Markdown-Reference/#callouts--github-style-alerts
@y
[GitHub]: https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#alerts
[Obsidian]: https://help.obsidian.md/Editing+and+formatting/Callouts
[Typora]: https://support.typora.io/Markdown-Reference/#callouts--github-style-alerts
@z

@x
### Extended syntax
@y
### Extended syntax
@z

@x
With the extended Markdown syntax, you may optionally include an alert sign and/or an alert title. The alert sign is one of&nbsp;`+`&nbsp;or&nbsp;`-`, typically used to indicate whether an alert is graphically foldable. For example:
@y
With the extended Markdown syntax, you may optionally include an alert sign and/or an alert title. The alert sign is one of&nbsp;`+`&nbsp;or&nbsp;`-`, typically used to indicate whether an alert is graphically foldable. For example:
@z

@x
{{< code file=content/example.md lang=text >}}
> [!WARNING]+ Radiation hazard
> Do not approach or handle without protective gear.
{{< /code >}}
@y
{{< code file=content/example.md lang=text >}}
> [!WARNING]+ Radiation hazard
> Do not approach or handle without protective gear.
{{< /code >}}
@z

@x
The extended syntax is compatible with [Obsidian].
@y
The extended syntax is compatible with [Obsidian].
@z

@x
{{% note %}}
The extended syntax is not compatible with GitHub or Typora. If you include an alert sign or an alert title, these applications render the Markdown as a blockquote.
{{% /note %}}
@y
{{% note %}}
The extended syntax is not compatible with GitHub or Typora. If you include an alert sign or an alert title, these applications render the Markdown as a blockquote.
{{% /note %}}
@z

@x
### Example
@y
### Example
@z

@x
This blockquote render hook renders a multilingual alert if an alert designator is present, otherwise it renders a blockquote according to the CommonMark specification.
@y
This blockquote render hook renders a multilingual alert if an alert designator is present, otherwise it renders a blockquote according to the CommonMark specification.
@z

@x
{{< code file=layouts/_default/_markup/render-blockquote.html copy=true >}}
{{ $emojis := dict
  "caution" ":exclamation:"
  "important" ":information_source:"
  "note" ":information_source:"
  "tip" ":bulb:"
  "warning" ":information_source:"
}}
@y
{{< code file=layouts/_default/_markup/render-blockquote.html copy=true >}}
{{ $emojis := dict
  "caution" ":exclamation:"
  "important" ":information_source:"
  "note" ":information_source:"
  "tip" ":bulb:"
  "warning" ":information_source:"
}}
@z

@x
{{ if eq .Type "alert" }}
  <blockquote class="alert alert-{{ .AlertType }}">
    <p class="alert-heading">
      {{ transform.Emojify (index $emojis .AlertType) }}
      {{ with .AlertTitle }}
        {{ . }}
      {{ else }}
        {{ or (i18n .AlertType) (title .AlertType) }}
      {{ end }}
    </p>
    {{ .Text }}
  </blockquote>
{{ else }}
  <blockquote>
    {{ .Text }}
  </blockquote>
{{ end }}
{{< /code >}}
@y
{{ if eq .Type "alert" }}
  <blockquote class="alert alert-{{ .AlertType }}">
    <p class="alert-heading">
      {{ transform.Emojify (index $emojis .AlertType) }}
      {{ with .AlertTitle }}
        {{ . }}
      {{ else }}
        {{ or (i18n .AlertType) (title .AlertType) }}
      {{ end }}
    </p>
    {{ .Text }}
  </blockquote>
{{ else }}
  <blockquote>
    {{ .Text }}
  </blockquote>
{{ end }}
{{< /code >}}
@z

@x
To override the label, create these entries in your i18n files:
@y
To override the label, create these entries in your i18n files:
@z

@x
{{< code-toggle file=i18n/en.toml >}}
caution = 'Caution'
important = 'Important'
note = 'Note'
tip = 'Tip'
warning = 'Warning'
{{< /code-toggle >}}
@y
{{< code-toggle file=i18n/en.toml >}}
caution = 'Caution'
important = 'Important'
note = 'Note'
tip = 'Tip'
warning = 'Warning'
{{< /code-toggle >}}
@z

@x
Although you can use one template with conditional logic as shown above, you can also create separate templates for each [`Type`](#type) of blockquote:
@y
Although you can use one template with conditional logic as shown above, you can also create separate templates for each [`Type`](#type) of blockquote:
@z

@x
```text
layouts/
└── _default/
    └── _markup/
        ├── render-blockquote-alert.html
        └── render-blockquote-regular.html
```
@y
```text
layouts/
└── _default/
    └── _markup/
        ├── render-blockquote-alert.html
        └── render-blockquote-regular.html
```
@z

@x
{{% include "/render-hooks/_common/pageinner.md" %}}
@y
{{% include "/render-hooks/_common/pageinner.md" %}}
@z
