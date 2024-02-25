%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Content summaries
linkTitle: Summaries
description: Hugo generates summaries of your content.
categories: [content management]
keywords: [summaries,abstracts,read more]
menu:
  docs:
    parent: content-management
    weight: 160
weight: 160
toc: true
aliases: [/content/summaries/,/content-management/content-summaries/]
---
@y
---
title: Content summaries
linkTitle: Summaries
description: Hugo generates summaries of your content.
categories: [content management]
keywords: [summaries,abstracts,read more]
menu:
  docs:
    parent: content-management
    weight: 160
weight: 160
toc: true
aliases: [/content/summaries/,/content-management/content-summaries/]
---
@z

@x
<!--more-->
@y
<!--more-->
@z

@x
With the use of the `.Summary` [page variable][pagevariables], Hugo generates summaries of content to use as a short version in summary views.
@y
With the use of the `.Summary` [page variable][pagevariables], Hugo generates summaries of content to use as a short version in summary views.
@z

@x
## Summary splitting options
@y
## Summary splitting options
@z

@x
* Automatic Summary Split
* Manual Summary Split
* Front Matter Summary
@y
* Automatic Summary Split
* Manual Summary Split
* Front Matter Summary
@z

@x
It is natural to accompany the summary with links to the original content, and a common design pattern is to see this link in the form of a "Read More ..." button. See the `.RelPermalink`, `.Permalink`, and `.Truncated` [page variables][pagevariables].
@y
It is natural to accompany the summary with links to the original content, and a common design pattern is to see this link in the form of a "Read More ..." button. See the `.RelPermalink`, `.Permalink`, and `.Truncated` [page variables][pagevariables].
@z

@x
### Automatic summary splitting
@y
### Automatic summary splitting
@z

@x
By default, Hugo automatically takes the first 70 words of your content as its summary and stores it into the `.Summary` page variable for use in your templates. You may customize the summary length by setting `summaryLength` in your [site configuration](/getting-started/configuration/).
@y
By default, Hugo automatically takes the first 70 words of your content as its summary and stores it into the `.Summary` page variable for use in your templates. You may customize the summary length by setting `summaryLength` in your [site configuration](/getting-started/configuration/).
@z

@x
{{% note %}}
You can customize how HTML tags in the summary are loaded using functions such as `plainify` and `safeHTML`.
{{% /note %}}
@y
{{% note %}}
You can customize how HTML tags in the summary are loaded using functions such as `plainify` and `safeHTML`.
{{% /note %}}
@z

@x
{{% note %}}
The Hugo-defined summaries are set to use word count calculated by splitting the text by one or more consecutive whitespace characters. If you are creating content in a `CJK` language and want to use Hugo's automatic summary splitting, set `hasCJKLanguage` to `true` in your [site configuration](/getting-started/configuration/).
{{% /note %}}
@y
{{% note %}}
The Hugo-defined summaries are set to use word count calculated by splitting the text by one or more consecutive whitespace characters. If you are creating content in a `CJK` language and want to use Hugo's automatic summary splitting, set `hasCJKLanguage` to `true` in your [site configuration](/getting-started/configuration/).
{{% /note %}}
@z

@x
### Manual summary splitting
@y
### Manual summary splitting
@z

@x
Alternatively, you may add the `<!--more-->` summary divider where you want to split the article.
@y
Alternatively, you may add the `<!--more-->` summary divider where you want to split the article.
@z

@x
For [Org mode content][org], use `# more` where you want to split the article.
@y
For [Org mode content][org], use `# more` where you want to split the article.
@z

@x
Content that comes before the summary divider will be used as that content's summary and stored in the `.Summary` page variable with all HTML formatting intact.
@y
Content that comes before the summary divider will be used as that content's summary and stored in the `.Summary` page variable with all HTML formatting intact.
@z

@x
{{% note %}}
The concept of a *summary divider* is not unique to Hugo. It is also called the "more tag" or "excerpt separator" in other literature.
{{% /note %}}
@y
{{% note %}}
The concept of a *summary divider* is not unique to Hugo. It is also called the "more tag" or "excerpt separator" in other literature.
{{% /note %}}
@z

@x
Pros
: Freedom, precision, and improved rendering. All HTML tags and formatting are preserved.
@y
Pros
: Freedom, precision, and improved rendering. All HTML tags and formatting are preserved.
@z

@x
Cons
: Extra work for content authors, since they need to remember to type `<!--more-->` (or `# more` for [org content][org]) in each content file. This can be automated by adding the summary divider below the front matter of an [archetype](/content-management/archetypes/).
@y
Cons
: Extra work for content authors, since they need to remember to type `<!--more-->` (or `# more` for [org content][org]) in each content file. This can be automated by adding the summary divider below the front matter of an [archetype](/content-management/archetypes/).
@z

@x
{{% note %}}
Be careful to enter `<!--more-->` exactly; i.e., all lowercase and with no whitespace.
{{% /note %}}
@y
{{% note %}}
Be careful to enter `<!--more-->` exactly; i.e., all lowercase and with no whitespace.
{{% /note %}}
@z

@x
### Front matter summary
@y
### Front matter summary
@z

@x
You might want your summary to be something other than the text that starts the article. In this case you can provide a separate summary in the `summary` variable of the article front matter.
@y
You might want your summary to be something other than the text that starts the article. In this case you can provide a separate summary in the `summary` variable of the article front matter.
@z

@x
Pros
: Complete freedom of text independent of the content of the article. Markup can be used within the summary.
@y
Pros
: Complete freedom of text independent of the content of the article. Markup can be used within the summary.
@z

@x
Cons
: Extra work for content authors as they need to write an entirely separate piece of text as the summary of the article.
@y
Cons
: Extra work for content authors as they need to write an entirely separate piece of text as the summary of the article.
@z

@x
## Summary selection order
@y
## Summary selection order
@z

@x
Because there are multiple ways in which a summary can be specified it is useful to understand the order of selection Hugo follows when deciding on the text to be returned by `.Summary`. It is as follows:
@y
Because there are multiple ways in which a summary can be specified it is useful to understand the order of selection Hugo follows when deciding on the text to be returned by `.Summary`. It is as follows:
@z

@x
1. If there is a `<!--more-->` summary divider present in the article, the text up to the divider will be provided as per the manual summary split method
2. If there is a `summary` variable in the article front matter the value of the variable will be provided as per the front matter summary method
3. The text at the start of the article will be provided as per the automatic summary split method
@y
1. If there is a `<!--more-->` summary divider present in the article, the text up to the divider will be provided as per the manual summary split method
2. If there is a `summary` variable in the article front matter the value of the variable will be provided as per the front matter summary method
3. The text at the start of the article will be provided as per the automatic summary split method
@z

@x
{{% note %}}
Hugo uses the _first_ of the above steps that returns text. So if, for example, your article has both `summary` variable in its front matter and a `<!--more-->` summary divider Hugo will use the manual summary split method.
{{% /note %}}
@y
{{% note %}}
Hugo uses the _first_ of the above steps that returns text. So if, for example, your article has both `summary` variable in its front matter and a `<!--more-->` summary divider Hugo will use the manual summary split method.
{{% /note %}}
@z

@x
## Example: first 10 articles with summaries
@y
## Example: first 10 articles with summaries
@z

@x
You can show content summaries with the following code. You could use the following snippet, for example, in a [section template].
@y
You can show content summaries with the following code. You could use the following snippet, for example, in a [section template].
@z

@x
{{< code file=page-list-with-summaries.html >}}
{{ range first 10 .Pages }}
  <article>
    <!-- this <div> includes the title summary -->
    <div>
      <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
      {{ .Summary }}
    </div>
    {{ if .Truncated }}
      <!-- This <div> includes a read more link, but only if the summary is truncated... -->
      <div>
        <a href="{{ .RelPermalink }}">Read More…</a>
      </div>
    {{ end }}
  </article>
{{ end }}
{{< /code >}}
@y
{{< code file=page-list-with-summaries.html >}}
{{ range first 10 .Pages }}
  <article>
    <!-- this <div> includes the title summary -->
    <div>
      <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
      {{ .Summary }}
    </div>
    {{ if .Truncated }}
      <!-- This <div> includes a read more link, but only if the summary is truncated... -->
      <div>
        <a href="{{ .RelPermalink }}">Read More…</a>
      </div>
    {{ end }}
  </article>
{{ end }}
{{< /code >}}
@z

@x
Note how the `.Truncated` boolean variable value may be used to hide the "Read More..." link when the content is not truncated; i.e., when the summary contains the entire article.
@y
Note how the `.Truncated` boolean variable value may be used to hide the "Read More..." link when the content is not truncated; i.e., when the summary contains the entire article.
@z

@x
[org]: /content-management/formats/
[pagevariables]: /methods/page/
[section template]: /templates/section-templates/
@y
[org]: /content-management/formats/
[pagevariables]: /methods/page/
[section template]: /templates/section-templates/
@z
