%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Related content
description: List related content in "See Also" sections.
categories: [content management]
keywords: [content]
@y
title: 関連コンテント
description: List related content in "See Also" sections.
categories: [content management]
keywords: [content]
@z

@x
Hugo uses a set of factors to identify a page's related content based on front matter parameters. This can be tuned to the desired set of indices and parameters or left to Hugo's default [Related Content configuration](#configure-related-content).
@y
Hugo uses a set of factors to identify a page's related content based on front matter parameters. This can be tuned to the desired set of indices and parameters or left to Hugo's default [Related Content configuration](#configure-related-content).
@z

@x
## List related content
@y
## 関連コンテントの一覧 {#list-related-content}
@z

@x
To list up to 5 related pages (which share the same _date_ or _keyword_ parameters) is as simple as including something similar to this partial in your single page template:
@y
To list up to 5 related pages (which share the same _date_ or _keyword_ parameters) is as simple as including something similar to this partial in your single page template:
@z

@x
{{< code file=layouts/partials/related.html >}}
{{ $related := .Site.RegularPages.Related . | first 5 }}
{{ with $related }}
<h3>See Also</h3>
<ul>
 {{ range . }}
 <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
 {{ end }}
</ul>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/partials/related.html >}}
{{ $related := .Site.RegularPages.Related . | first 5 }}
{{ with $related }}
<h3>See Also</h3>
<ul>
 {{ range . }}
 <li><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></li>
 {{ end }}
</ul>
{{ end }}
{{< /code >}}
@z

@x
The `Related` method takes one argument which may be a `Page` or a options map. The options map have these options:
@y
The `Related` method takes one argument which may be a `Page` or a options map. The options map have these options:
@z

@x
indices
: (`slice`) The indices to search within.
@y
indices
: (`slice`) The indices to search within.
@z

@x
document
: (`page`) The page for which to find related content. Required when specifying an options map.
@y
document
: (`page`) The page for which to find related content. Required when specifying an options map.
@z

@x
namedSlices
: (`slice`) The keywords to search for, expressed as a slice of `KeyValues` using the [`keyVals`] function.
@y
namedSlices
: (`slice`) The keywords to search for, expressed as a slice of `KeyValues` using the [`keyVals`] function.
@z

@x
fragments
: (`slice`) A list of special keywords that is used for indices configured as type "fragments". This will match the [fragment] identifiers of the documents.
@y
fragments
: (`slice`) A list of special keywords that is used for indices configured as type "fragments". This will match the [fragment] identifiers of the documents.
@z

% snip links...

@x
A fictional example using all of the above options:
@y
A fictional example using all of the above options:
@z

% snip code...

@x
{{% note %}}
We improved and simplified this feature in Hugo 0.111.0. Before this we had 3 different methods: `Related`, `RelatedTo` and `RelatedIndices`. Now we have only one method: `Related`. The old methods are still available but deprecated. Also see [this blog article](https://regisphilibert.com/blog/2018/04/hugo-optmized-relashionships-with-related-content/) for a great explanation of more advanced usage of this feature.
{{% /note %}}
@y
{{% note %}}
We improved and simplified this feature in Hugo 0.111.0. Before this we had 3 different methods: `Related`, `RelatedTo` and `RelatedIndices`. Now we have only one method: `Related`. The old methods are still available but deprecated. Also see [this blog article](https://regisphilibert.com/blog/2018/04/hugo-optmized-relashionships-with-related-content/) for a great explanation of more advanced usage of this feature.
{{% /note %}}
@z

@x
## Index content headings in related content
@y
## Index content headings in related content
@z

@x
{{< new-in 0.111.0 >}}
@y
{{< new-in 0.111.0 >}}
@z

@x
Hugo can index the headings in your content and use this to find related content. You can enable this by adding a index of type `fragments` to your `related` configuration:
@y
Hugo can index the headings in your content and use this to find related content. You can enable this by adding a index of type `fragments` to your `related` configuration:
@z

% snip code...

@x
* The `name` maps to a optional front matter slice attribute that can be used to link from the page level down to the fragment/heading level.
* If `applyFilter`is enabled, the `.HeadingsFiltered` on each page in the result will reflect the filtered headings. This is useful if you want to show the headings in the related content listing:
@y
* The `name` maps to a optional front matter slice attribute that can be used to link from the page level down to the fragment/heading level.
* If `applyFilter`is enabled, the `.HeadingsFiltered` on each page in the result will reflect the filtered headings. This is useful if you want to show the headings in the related content listing:
@z

% snip code...

@x
## Configure related content
@y
## Configure related content
@z

@x
Hugo provides a sensible default configuration of Related Content, but you can fine-tune this in your configuration, on the global or language level if needed.
@y
Hugo provides a sensible default configuration of Related Content, but you can fine-tune this in your configuration, on the global or language level if needed.
@z

@x
### Default configuration
@y
### Default configuration
@z

@x
Without any `related` configuration set on the project, Hugo's Related Content methods will use the following.
@y
Without any `related` configuration set on the project, Hugo's Related Content methods will use the following.
@z

@x
{{< code-toggle config=related />}}
@y
{{< code-toggle config=related />}}
@z

@x
Custom configuration should be set using the same syntax.
@y
Custom configuration should be set using the same syntax.
@z

@x
{{% note %}}
If you add a `related` configuration section, you need to add a complete configuration. It is not possible to just set, say, `includeNewer` and use the rest  from the Hugo defaults.
{{% /note %}}
@y
{{% note %}}
If you add a `related` configuration section, you need to add a complete configuration. It is not possible to just set, say, `includeNewer` and use the rest  from the Hugo defaults.
{{% /note %}}
@z

@x
### Top level configuration options
@y
### Top level configuration options
@z

@x
threshold
: (`int`) A value between 0-100. Lower value will give more, but maybe not so relevant, matches.
@y
threshold
: (`int`) A value between 0-100. Lower value will give more, but maybe not so relevant, matches.
@z

@x
includeNewer
: (`bool`) Set to `true` to include **pages newer than the current page** in the related content listing. This will mean that the output for older posts may change as new related content gets added.
@y
includeNewer
: (`bool`) Set to `true` to include **pages newer than the current page** in the related content listing. This will mean that the output for older posts may change as new related content gets added.
@z

@x
toLower
: (`bool`) Set to `true` to lower case keywords in both the indexes and the queries. This may give more accurate results at a slight performance penalty. Note that this can also be set per index.
@y
toLower
: (`bool`) Set to `true` to lower case keywords in both the indexes and the queries. This may give more accurate results at a slight performance penalty. Note that this can also be set per index.
@z

@x
### Configuration options per index
@y
### Configuration options per index
@z

@x
name
: (`string`) The index name. This value maps directly to a page parameter. Hugo supports string values (`author` in the example) and lists (`tags`, `keywords` etc.) and time and date objects.
@y
name
: (`string`) The index name. This value maps directly to a page parameter. Hugo supports string values (`author` in the example) and lists (`tags`, `keywords` etc.) and time and date objects.
@z

@x
type {{< new-in 0.111.0 >}} 
: (`string`) One of `basic`(default) or `fragments`.
@y
type {{< new-in 0.111.0 >}} 
: (`string`) One of `basic`(default) or `fragments`.
@z

@x
applyFilter {{< new-in 0.111.0 >}}
: (`string`) Apply a `type` specific filter to the result of a search. This is currently only used for the `fragments` type.
@y
applyFilter {{< new-in 0.111.0 >}}
: (`string`) Apply a `type` specific filter to the result of a search. This is currently only used for the `fragments` type.
@z

@x
weight
: (`int`) An integer weight that indicates _how important_ this parameter is relative to the other parameters. It can be `0`, which has the effect of turning this index off, or even negative. Test with different values to see what fits your content best.
@y
weight
: (`int`) An integer weight that indicates _how important_ this parameter is relative to the other parameters. It can be `0`, which has the effect of turning this index off, or even negative. Test with different values to see what fits your content best.
@z

@x
cardinalityThreshold {{< new-in 0.111.0 >}}
: (`int`) If between 1 and 100, this is a percentage. All keywords that are used in more than this percentage of documents are removed. For example, setting this to `60` will remove all keywords that are used in more than 60% of the documents in the index. If `0`, no keyword is removed from the index. Default is `0`.
@y
cardinalityThreshold {{< new-in 0.111.0 >}}
: (`int`) If between 1 and 100, this is a percentage. All keywords that are used in more than this percentage of documents are removed. For example, setting this to `60` will remove all keywords that are used in more than 60% of the documents in the index. If `0`, no keyword is removed from the index. Default is `0`.
@z

@x
pattern
: (`string`) This is currently only relevant for dates. When listing related content, we may want to list content that is also close in time. Setting "2006" (default value for date indexes) as the pattern for a date index will add weight to pages published in the same year. For busier blogs, "200601" (year and month) may be a better default.
@y
pattern
: (`string`) This is currently only relevant for dates. When listing related content, we may want to list content that is also close in time. Setting "2006" (default value for date indexes) as the pattern for a date index will add weight to pages published in the same year. For busier blogs, "200601" (year and month) may be a better default.
@z

@x
toLower
: (`bool`) See above.
@y
toLower
: (`bool`) See above.
@z

@x
## Performance considerations
@y
## Performance considerations
@z

@x
**Fast is Hugo's middle name** and we would not have released this feature had it not been blistering fast.
@y
**Fast is Hugo's middle name** and we would not have released this feature had it not been blistering fast.
@z

@x
This feature has been in the back log and requested by many for a long time. The development got this recent kick start from this Twitter thread:
@y
This feature has been in the back log and requested by many for a long time. The development got this recent kick start from this Twitter thread:
@z

@x
{{< tweet user="scott_lowe" id="898398437527363585" >}}
@y
{{< tweet user="scott_lowe" id="898398437527363585" >}}
@z

@x
Scott S. Lowe removed the "Related Content" section built using the `intersect` template function on tags, and the build time dropped from 30 seconds to less than 2 seconds on his 1700 content page sized blog.
@y
Scott S. Lowe removed the "Related Content" section built using the `intersect` template function on tags, and the build time dropped from 30 seconds to less than 2 seconds on his 1700 content page sized blog.
@z

@x
He should now be able to add an improved version of that "Related Content" section without giving up the fast live-reloads. But it's worth noting that:
@y
He should now be able to add an improved version of that "Related Content" section without giving up the fast live-reloads. But it's worth noting that:
@z

@x
* If you don't use any of the `Related` methods, you will not use the Relate Content feature, and performance will be the same as before.
* Calling `.RegularPages.Related` etc. will create one inverted index, also sometimes named posting list, that will be reused for any lookups in that same page collection. Doing that in addition to, as an example, calling `.Pages.Related` will work as expected, but will create one additional inverted index. This should still be very fast, but worth having in mind, especially for bigger sites.
@y
* If you don't use any of the `Related` methods, you will not use the Relate Content feature, and performance will be the same as before.
* Calling `.RegularPages.Related` etc. will create one inverted index, also sometimes named posting list, that will be reused for any lookups in that same page collection. Doing that in addition to, as an example, calling `.Pages.Related` will work as expected, but will create one additional inverted index. This should still be very fast, but worth having in mind, especially for bigger sites.
@z

@x
{{% note %}}
We currently do not index **Page content**. We thought we would release something that will make most people happy before we start solving [Sherlock's last case](https://github.com/joearms/sherlock).
{{% /note %}}
@y
{{% note %}}
We currently do not index **Page content**. We thought we would release something that will make most people happy before we start solving [Sherlock's last case](https://github.com/joearms/sherlock).
{{% /note %}}
@z
