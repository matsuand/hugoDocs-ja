%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% snip 対応

@x
title: Taxonomies
description: Hugo includes support for user-defined taxonomies.
categories: [content management]
keywords: [taxonomies,metadata,front matter,terms]
@y
title: 分類
description: Hugo ではユーザー定義の分類生成をサポートします。
categories: [content management]
keywords: [taxonomies,metadata,front matter,terms]
@z

@x
## What is a taxonomy?
@y
## 分類とは何か？ {#what-is-a-taxonomy}
@z

@x
Hugo includes support for user-defined groupings of content called **taxonomies**. Taxonomies are classifications of logical relationships between content.
@y
Hugo では、**分類** (taxonomy) と呼ぶコンテントのグループ分けをユーザー定義可能とする機能をサポートしています。
分類はコンテント間の論理的な関連を示す区分けと言えます。
@z

@x
### Definitions
@y
### 用語の定義 {#definitions}
@z

@x
Taxonomy
: a categorization that can be used to classify content
@y
分類 (taxonomy)
: コンテントを区分けするために用いられるグループのこと。
@z

@x
Term
: a key within the taxonomy
@y
対象語 (term)
: 分類の中で用いられるキーとなる語のこと。
@z

@x
Value
: a piece of content assigned to a term
@y
値 (value)
: 分類語に割り当てられたコンテントの集合のこと。
@z

@x
## Example taxonomy: movie website
@y
## 分類の例: 映画のウェブサイト {#example-taxonomy-movie-website}
@z

@x
Let's assume you are making a website about movies. You may want to include the following taxonomies:
@y
ここで映画に関するウェブサイトを作り出すものとします。
以下のような分類を含めたいと考えるかもしれません。
@z

@x
* Actors
* Directors
* Studios
* Genre
* Year
* Awards
@y
* Actors (俳優)
* Directors (監督)
* Studios (映画スタジオ)
* Genre (ジャンル)
* Year (制作年)
* Awards (受賞歴)
@z

@x
Then, in each of the movies, you would specify terms for each of these taxonomies (i.e., in the [front matter] of each of your movie content files). From these terms, Hugo would automatically create pages for each Actor, Director, Studio, Genre, Year, and Award, with each listing all of the Movies that matched that specific Actor, Director, Studio, Genre, Year, and Award.
@y
Then, in each of the movies, you would specify terms for each of these taxonomies (i.e., in the [front matter] of each of your movie content files). From these terms, Hugo would automatically create pages for each Actor, Director, Studio, Genre, Year, and Award, with each listing all of the Movies that matched that specific Actor, Director, Studio, Genre, Year, and Award.
@z

@x
### Movie taxonomy organization
@y
### 映画の分類構成 {#movie-taxonomy-organization}
@z

@x
To continue with the example of a movie site, the following demonstrates content relationships from the perspective of the taxonomy:
@y
To continue with the example of a movie site, the following demonstrates content relationships from the perspective of the taxonomy:
@z

@x
```txt
Actor                    <- Taxonomy
    Bruce Willis         <- Term
        The Sixth Sense  <- Value
        Unbreakable      <- Value
        Moonrise Kingdom <- Value
    Samuel L. Jackson    <- Term
        Unbreakable      <- Value
        The Avengers     <- Value
        xXx              <- Value
```
@y
```txt
Actor                    <- 分類
    Bruce Willis         <- 分類語
        The Sixth Sense  <- 値
        Unbreakable      <- 値
        Moonrise Kingdom <- 値
    Samuel L. Jackson    <- 分類語
        Unbreakable      <- 値
        The Avengers     <- 値
        xXx              <- 値
```
@z

@x
From the perspective of the content, the relationships would appear differently, although the data and labels used are the same:
@y
From the perspective of the content, the relationships would appear differently, although the data and labels used are the same:
@z

@x
```txt
Unbreakable                 <- Value
    Actors                  <- Taxonomy
        Bruce Willis        <- Term
        Samuel L. Jackson   <- Term
    Director                <- Taxonomy
        M. Night Shyamalan  <- Term
    ...
Moonrise Kingdom            <- Value
    Actors                  <- Taxonomy
        Bruce Willis        <- Term
        Bill Murray         <- Term
    Director                <- Taxonomy
        Wes Anderson        <- Term
    ...
```
@y
```txt
Unbreakable                 <- Value
    Actors                  <- Taxonomy
        Bruce Willis        <- Term
        Samuel L. Jackson   <- Term
    Director                <- Taxonomy
        M. Night Shyamalan  <- Term
    ...
Moonrise Kingdom            <- Value
    Actors                  <- Taxonomy
        Bruce Willis        <- Term
        Bill Murray         <- Term
    Director                <- Taxonomy
        Wes Anderson        <- Term
    ...
```
@z

@x
## Default taxonomies
@y
## Default taxonomies {#default-taxonomies}
@z

@x
Hugo natively supports taxonomies.
@y
Hugo natively supports taxonomies.
@z

@x
Without adding a single line to your [site configuration] file, Hugo will automatically create taxonomies for `tags` and `categories`. That would be the same as manually [configuring your taxonomies](#configure-taxonomies) as below:
@y
Without adding a single line to your [site configuration] file, Hugo will automatically create taxonomies for `tags` and `categories`. That would be the same as manually [configuring your taxonomies](#configure-taxonomies) as below:
@z

@x
{{< code-toggle config=taxonomies />}}
@y
{{< code-toggle config=taxonomies />}}
@z

@x
If you do not want Hugo to create any taxonomies, set `disableKinds` in your [site configuration] to the following:
@y
If you do not want Hugo to create any taxonomies, set `disableKinds` in your [site configuration] to the following:
@z

@x
{{< code-toggle file=hugo >}}
disableKinds = ["taxonomy","term"]
{{</ code-toggle >}}
@y
{{< code-toggle file=hugo >}}
disableKinds = ["taxonomy","term"]
{{</ code-toggle >}}
@z

@x
{{% include "content-management/_common/page-kinds.md" %}}
@y
{{% include "content-management/_common/page-kinds.md" %}}
@z

@x
### Default destinations
@y
### Default destinations {#default-destinations}
@z

@x
When taxonomies are used---and [taxonomy templates] are provided---Hugo will automatically create both a page listing all the taxonomy's terms and individual pages with lists of content associated with each term. For example, a `categories` taxonomy declared in your configuration and used in your content front matter will create the following pages:
@y
When taxonomies are used---and [taxonomy templates] are provided---Hugo will automatically create both a page listing all the taxonomy's terms and individual pages with lists of content associated with each term. For example, a `categories` taxonomy declared in your configuration and used in your content front matter will create the following pages:
@z

@x
* A single page at `example.com/categories/` that lists all the [terms within the taxonomy]
* [Individual taxonomy list pages][taxonomy templates] (e.g., `/categories/development/`) for each of the terms that shows a listing of all pages marked as part of that taxonomy within any content file's [front matter]
@y
* A single page at `example.com/categories/` that lists all the [terms within the taxonomy]
* [Individual taxonomy list pages][taxonomy templates] (e.g., `/categories/development/`) for each of the terms that shows a listing of all pages marked as part of that taxonomy within any content file's [front matter]
@z

@x
## Configure taxonomies
@y
## 分類の設定 {#configure-taxonomies}
@z

@x
Custom taxonomies other than the [defaults](#default-taxonomies) must be defined in your [site configuration] before they can be used throughout the site. You need to provide both the plural and singular labels for each taxonomy. For example, `singular key = "plural value"` for TOML and `singular key: "plural value"` for YAML.
@y
Custom taxonomies other than the [defaults](#default-taxonomies) must be defined in your [site configuration] before they can be used throughout the site. You need to provide both the plural and singular labels for each taxonomy. For example, `singular key = "plural value"` for TOML and `singular key: "plural value"` for YAML.
@z

@x
### Example: adding a custom taxonomy named "series"
@y
### Example: adding a custom taxonomy named "series" {#example-adding-a-custom-taxonomy-named-series}
@z

@x
{{% note %}}
While adding custom taxonomies, you need to put in the default taxonomies too, _if you want to keep them_.
{{% /note %}}
@y
{{% note %}}
While adding custom taxonomies, you need to put in the default taxonomies too, _if you want to keep them_.
{{% /note %}}
@z

@x
{{< code-toggle file=hugo >}}
[taxonomies]
  tag = "tags"
  category = "categories"
  series = "series"
{{</ code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[taxonomies]
  tag = "tags"
  category = "categories"
  series = "series"
{{</ code-toggle >}}
@z

@x
### Example: removing default taxonomies
@y
### Example: removing default taxonomies {#example-removing-default-taxonomies}
@z

@x
If you want to have just the default `tags` taxonomy, and remove the `categories` taxonomy for your site, you can do so by modifying the `taxonomies` value in your [site configuration].
@y
If you want to have just the default `tags` taxonomy, and remove the `categories` taxonomy for your site, you can do so by modifying the `taxonomies` value in your [site configuration].
@z

@x
{{< code-toggle file=hugo >}}
[taxonomies]
  tag = "tags"
{{</ code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[taxonomies]
  tag = "tags"
{{</ code-toggle >}}
@z

@x
If you want to disable all taxonomies altogether, see the use of `disableKinds` in [Hugo Taxonomy Defaults](#default-taxonomies).
@y
If you want to disable all taxonomies altogether, see the use of `disableKinds` in [Hugo Taxonomy Defaults](#default-taxonomies).
@z

@x note
You can add content and front matter to your taxonomy list and taxonomy terms pages. See [Content Organization](/content-management/organization/) for more information on how to add an `_index.md` for this purpose.
@y
You can add content and front matter to your taxonomy list and taxonomy terms pages. See [Content Organization](/content-management/organization/) for more information on how to add an `_index.md` for this purpose.
@z

@x
## Assign terms to content
@y
## Assign terms to content
@z

@x
To assign one or more terms to a page, create a front matter field using the plural name of the taxonomy, then add terms to the corresponding array. For example:
@y
To assign one or more terms to a page, create a front matter field using the plural name of the taxonomy, then add terms to the corresponding array. For example:
@z

@x
{{< code-toggle file=content/example.md fm=true >}}
title = 'Example'
tags = ['Tag A','Tag B']
categories = ['Category A','Category B']
{{< /code-toggle >}}
@y
{{< code-toggle file=content/example.md fm=true >}}
title = 'Example'
tags = ['Tag A','Tag B']
categories = ['Category A','Category B']
{{< /code-toggle >}}
@z

@x
## Order taxonomies
@y
## 分類の並び {#order-taxonomies}
@z

@x
A content file can assign weight for each of its associate taxonomies. Taxonomic weight can be used for sorting or ordering content in [taxonomy list templates] and is declared in a content file's [front matter]. The convention for declaring taxonomic weight is `taxonomyname_weight`.
@y
A content file can assign weight for each of its associate taxonomies. Taxonomic weight can be used for sorting or ordering content in [taxonomy list templates] and is declared in a content file's [front matter]. The convention for declaring taxonomic weight is `taxonomyname_weight`.
@z

@x
The following show a piece of content that has a weight of 22, which can be used for ordering purposes when rendering the pages assigned to the "a", "b" and "c" values of the `tags` taxonomy. It has also been assigned the weight of 44 when rendering the "d" category page.
@y
The following show a piece of content that has a weight of 22, which can be used for ordering purposes when rendering the pages assigned to the "a", "b" and "c" values of the `tags` taxonomy. It has also been assigned the weight of 44 when rendering the "d" category page.
@z

@x
### Example: taxonomic `weight`
@y
### Example: taxonomic `weight` {#example-taxonomic-weight}
@z

@x
{{< code-toggle >}}
title = "foo"
tags = [ "a", "b", "c" ]
tags_weight = 22
categories = ["d"]
categories_weight = 44
{{</ code-toggle >}}
@y
{{< code-toggle >}}
title = "foo"
tags = [ "a", "b", "c" ]
tags_weight = 22
categories = ["d"]
categories_weight = 44
{{</ code-toggle >}}
@z

@x
By using taxonomic weight, the same piece of content can appear in different positions in different taxonomies.
@y
By using taxonomic weight, the same piece of content can appear in different positions in different taxonomies.
@z

@x
## Add custom metadata to a taxonomy or term
@y
## Add custom metadata to a taxonomy or term {#add-custom-metadata-to-a-taxonomy-or-term}
@z

@x
If you need to add custom metadata to your taxonomy terms, you will need to create a page for that term at `/content/<TAXONOMY>/<TERM>/_index.md` and add your metadata in its front matter. Continuing with our 'Actors' example, let's say you want to add a Wikipedia page link to each actor. Your terms pages would be something like this:
@y
If you need to add custom metadata to your taxonomy terms, you will need to create a page for that term at `/content/<TAXONOMY>/<TERM>/_index.md` and add your metadata in its front matter. Continuing with our 'Actors' example, let's say you want to add a Wikipedia page link to each actor. Your terms pages would be something like this:
@z

@x
{{< code-toggle file=content/actors/bruce-willis/_index.md fm=true >}}
title: "Bruce Willis"
wikipedia: "https://en.wikipedia.org/wiki/Bruce_Willis"
{{< /code-toggle >}}
@y
{{< code-toggle file=content/actors/bruce-willis/_index.md fm=true >}}
title: "Bruce Willis"
wikipedia: "https://en.wikipedia.org/wiki/Bruce_Willis"
{{< /code-toggle >}}
@z

% snip links...
