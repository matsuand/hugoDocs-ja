%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: collections.Where 
description: Returns the given collection, removing elements that do not satisfy the comparison condition.
categories: []
keywords: []
@y
title: collections.Where 
description: 指定されたコレクションから、比較条件に合致しない要素を取り除いて返します。
categories: []
keywords: []
@z

@x
The `where` function returns the given collection, removing elements that do not satisfy the comparison condition. The comparison condition is composed of the `KEY`, `OPERATOR`, and `VALUE` arguments:
@y
`where` 関数は指定されたコレクションに対して、比較条件に合致しない要素を取り除いたコレクションを返します。比較条件は `KEY`、`OPERATOR`、`VALUE` の引数により構成されます。
@z

@x
```text
collections.Where COLLECTION KEY [OPERATOR] VALUE
                             --------------------
                             comparison condition
```
@y
```text
collections.Where COLLECTION KEY [OPERATOR] VALUE
                             --------------------
                                 比 較 条 件
```
@z

@x
Hugo will test for equality if you do not provide an `OPERATOR` argument. For example:
@y
`OPERATOR` 引数が指定されなかった場合は、一致するかどうかが条件となります。
たとえば以下です。
@z

% snip code...

@x
## Arguments
@y
## 引数 {#aArguments}
@z

@x
The where function takes three or four arguments. The `OPERATOR` argument is optional.
@y
where 関数は 3 つ、または 4 つの引数をとります。
`OPERATOR` 引数は任意です。
@z

@x
COLLECTION
: (`any`) A [page collection] or a [slice] of [maps].
@y
COLLECTION
: (`any`) A [page collection] or a [slice] of [maps].
@z

@x
[maps]: /getting-started/glossary/#map
[page collection]: /getting-started/glossary/#page-collection
[slice]: /getting-started/glossary/#slice
@y
[maps]: /getting-started/glossary/#map
[page collection]: /getting-started/glossary/#page-collection
[slice]: /getting-started/glossary/#slice
@z

@x
KEY
: (`string`) The key of the page or map value to compare with `VALUE`. With page collections, commonly used comparison keys are `Section`, `Type`, and `Params`. To compare with a member of the page `Params` map, [chain] the subkey as shown below:
@y
KEY
: (`string`) The key of the page or map value to compare with `VALUE`. With page collections, commonly used comparison keys are `Section`, `Type`, and `Params`. To compare with a member of the page `Params` map, [chain] the subkey as shown below:
@z

% snip code...
% snip link...

@x
OPERATOR
: (`string`) The logical comparison [operator](#operators).
@y
OPERATOR
: (`string`) 論理比較[オペレーター](#operators).
@z

@x
VALUE
: (`any`) The value with which to compare. The values to compare must have comparable data types. For example:
@y
VALUE
: (`any`) The value with which to compare. The values to compare must have comparable data types. For example:
@z

@x
Comparison|Result
:--|:--
`"123" "eq" "123"`|`true`
`"123" "eq" 123`|`false`
`false "eq" "false"`|`false`
`false "eq" false`|`true`
@y
比較|結果
:--|:--
`"123" "eq" "123"`|`true`
`"123" "eq" 123`|`false`
`false "eq" "false"`|`false`
`false "eq" false`|`true`
@z

@x
When one or both of the values to compare is a slice, use the `in`, `not in`, or `intersect` operators as described below.
@y
When one or both of the values to compare is a slice, use the `in`, `not in`, or `intersect` operators as described below.
@z

@x
## Operators
@y
## オペレーター {#operators}
@z

@x
Use any of the following logical operators:
@y
以下のいずれかの論理オペレーターを利用します。
@z

@x
`=`, `==`, `eq`
: (`bool`) Reports whether the given field value is equal to `VALUE`.
@y
`=`, `==`, `eq`
: (`bool`) Reports whether the given field value is equal to `VALUE`.
@z

@x
`!=`, `<>`, `ne`
: (`bool`) Reports whether the given field value is not equal to `VALUE`.
@y
`!=`, `<>`, `ne`
: (`bool`) Reports whether the given field value is not equal to `VALUE`.
@z

@x
`>=`, `ge`
: (`bool`) Reports whether the given field value is greater than or equal to `VALUE`.
@y
`>=`, `ge`
: (`bool`) Reports whether the given field value is greater than or equal to `VALUE`.
@z

@x
`>`, `gt`
: `true` Reports whether the given field value is greater than `VALUE`.
@y
`>`, `gt`
: `true` Reports whether the given field value is greater than `VALUE`.
@z

@x
`<=`, `le`
: (`bool`) Reports whether the given field value is less than or equal to `VALUE`.
@y
`<=`, `le`
: (`bool`) Reports whether the given field value is less than or equal to `VALUE`.
@z

@x
`<`, `lt`
: (`bool`) Reports whether the given field value is less than `VALUE`.
@y
`<`, `lt`
: (`bool`) Reports whether the given field value is less than `VALUE`.
@z

@x
`in`
: (`bool`) Reports whether the given field value is a member of `VALUE`. Compare string to slice, or string to string. See&nbsp;[details](/functions/collections/in).
@y
`in`
: (`bool`) Reports whether the given field value is a member of `VALUE`. Compare string to slice, or string to string. See&nbsp;[details](/functions/collections/in).
@z

@x
`not in`
: (`bool`) Reports whether the given field value is not a member of `VALUE`. Compare string to slice, or string to string. See&nbsp;[details](/functions/collections/in).
@y
`not in`
: (`bool`) Reports whether the given field value is not a member of `VALUE`. Compare string to slice, or string to string. See&nbsp;[details](/functions/collections/in).
@z

@x
`intersect`
: (`bool`) Reports whether the given field value (a slice) contains one or more elements in common with `VALUE`. See&nbsp;[details](/functions/collections/intersect).
@y
`intersect`
: (`bool`) Reports whether the given field value (a slice) contains one or more elements in common with `VALUE`. See&nbsp;[details](/functions/collections/intersect).
@z

@x
`like` {{< new-in 0.116.0 >}}
: (`bool`) Reports whether the given field value matches the regular expression specified in `VALUE`. Use the `like` operator to compare `string` values. The `like` operator returns `false` when comparing other data types to the regular expression.
@y
`like` {{< new-in 0.116.0 >}}
: (`bool`) Reports whether the given field value matches the regular expression specified in `VALUE`. Use the `like` operator to compare `string` values. The `like` operator returns `false` when comparing other data types to the regular expression.
@z

@x
{{% note %}}
The examples below perform comparisons within a page collection, but the same comparisons are applicable to a slice of maps.
{{% /note %}}
@y
{{% note %}}
The examples below perform comparisons within a page collection, but the same comparisons are applicable to a slice of maps.
{{% /note %}}
@z

@x
## String comparison
@y
## 文字列比較 {#string-comparison}
@z

@x
Compare the value of the given field to a [`string`]:
@y
Compare the value of the given field to a [`string`]:
@z

% snip link...
% snip code...

@x
## Numeric comparison
@y
## 数値比較 {#numeric-comparison}
@z

@x
Compare the value of the given field to an [`int`] or [`float`]:
@y
Compare the value of the given field to an [`int`] or [`float`]:
@z

% snip links...
% snip code...

@x
## Boolean comparison
@y
## ブール値比較 {#boolean-comparison}
@z

@x
Compare the value of the given field to a [`bool`]:
@y
Compare the value of the given field to a [`bool`]:
@z

% snip link...
% snip code...

@x
## Member comparison
@y
## メンバー比較 {#member-comparison}
@z

@x
Compare a [`scalar`] to a [`slice`].
@y
Compare a [`scalar`] to a [`slice`].
@z

% snip links...

@x
For example, to return a collection of pages where the `color` page parameter is either "red" or "yellow":
@y
For example, to return a collection of pages where the `color` page parameter is either "red" or "yellow":
@z

% snip code...

@x
To return a collection of pages where the "color" page parameter is neither "red" nor "yellow":
@y
To return a collection of pages where the "color" page parameter is neither "red" nor "yellow":
@z

% snip code...

@x
## Intersection comparison
@y
## Intersection comparison
@z

@x
Compare a [`slice`] to a [`slice`], returning collection elements with common values. This is frequently used when comparing taxonomy terms.
@y
Compare a [`slice`] to a [`slice`], returning collection elements with common values. This is frequently used when comparing taxonomy terms.
@z

@x
For example, to return a collection of pages where any of the terms in the "genres" taxonomy are "suspense" or "romance":
@y
For example, to return a collection of pages where any of the terms in the "genres" taxonomy are "suspense" or "romance":
@z

% snip code...

@x
## Regular expression comparison
@y
## 正規表現比較 {#regular-expression-comparison}
@z

@x
{{< new-in 0.116.0 >}}
@y
{{< new-in 0.116.0 >}}
@z

@x
To return a collection of pages where the "author" page parameter begins with either "victor" or "Victor":
@y
To return a collection of pages where the "author" page parameter begins with either "victor" or "Victor":
@z

% snip code...

@x
{{% include "functions/_common/regular-expressions.md" %}}
@y
{{% include "functions/_common/regular-expressions.md" %}}
@z

@x
{{% note %}}
Use the `like` operator to compare string values. Comparing other data types will result in an empty collection.
{{% /note %}}
@y
{{% note %}}
Use the `like` operator to compare string values. Comparing other data types will result in an empty collection.
{{% /note %}}
@z

@x
## Date comparison
@y
## Date comparison
@z

@x
### Predefined dates
@y
### Predefined dates
@z

@x
There are four predefined front matter dates: [`date`], [`publishDate`], [`lastmod`], and [`expiryDate`]. Regardless of the front matter data format (TOML, YAML, or JSON) these are [`time.Time`] values, allowing precise comparisons.
@y
There are four predefined front matter dates: [`date`], [`publishDate`], [`lastmod`], and [`expiryDate`]. Regardless of the front matter data format (TOML, YAML, or JSON) these are [`time.Time`] values, allowing precise comparisons.
@z

% snip links...

@x
For example, to return a collection of pages that were created before the current year:
@y
For example, to return a collection of pages that were created before the current year:
@z

% snip code...

@x
### Custom dates
@y
### Custom dates
@z

@x
With custom front matter dates, the comparison depends on the front matter data format (TOML, YAML, or JSON). 
@y
With custom front matter dates, the comparison depends on the front matter data format (TOML, YAML, or JSON). 
@z

@x
{{% note %}}
Using TOML for pages with custom front matter dates enables precise date comparisons.
{{% /note %}}
@y
{{% note %}}
Using TOML for pages with custom front matter dates enables precise date comparisons.
{{% /note %}}
@z

@x
With TOML, date values are first-class citizens. TOML has a date data type while JSON and YAML do not. If you quote a TOML date, it is a string. If you do not quote a TOML date value, it is [`time.Time`] value, enabling precise comparisons.
@y
With TOML, date values are first-class citizens. TOML has a date data type while JSON and YAML do not. If you quote a TOML date, it is a string. If you do not quote a TOML date value, it is [`time.Time`] value, enabling precise comparisons.
@z

@x
In the TOML example below, note that the event date is not quoted.
@y
In the TOML example below, note that the event date is not quoted.
@z

@x
{{< code file="content/events/2024-user-conference.md" >}}
+++
title = '2024 User Conference"
eventDate = 2024-04-01
+++
{{< /code >}}
@y
{{< code file="content/events/2024-user-conference.md" >}}
+++
title = '2024 User Conference"
eventDate = 2024-04-01
+++
{{< /code >}}
@z

@x
To return a collection of future events:
@y
To return a collection of future events:
@z

% snip code...

@x
When working with YAML or JSON, or quoted TOML values, custom dates are strings; you cannot compare them with `time.Time` values. String comparisons may be possible if the custom date layout is consistent from one page to the next. To be safe, filter the pages by ranging through the collection:
@y
When working with YAML or JSON, or quoted TOML values, custom dates are strings; you cannot compare them with `time.Time` values. String comparisons may be possible if the custom date layout is consistent from one page to the next. To be safe, filter the pages by ranging through the collection:
@z

% snip code...

@x
## Nil comparison
@y
## Nil comparison
@z

@x
To return a collection of pages where the "color" parameter is present in front matter, compare to `nil`:
@y
To return a collection of pages where the "color" parameter is present in front matter, compare to `nil`:
@z

% snip code...

@x
To return a collection of pages where the "color" parameter is not present in front matter, compare to `nil`:
@y
To return a collection of pages where the "color" parameter is not present in front matter, compare to `nil`:
@z

% snip code...

@x
In both examples above, note that `nil` is not quoted.
@y
In both examples above, note that `nil` is not quoted.
@z

@x
## Nested comparison
@y
## Nested comparison
@z

@x
These are equivalent:
@y
These are equivalent:
@z

% snip code...

@x
## Portable section comparison
@y
## Portable section comparison
@z

@x
Useful for theme authors, avoid hardcoding section names by using the `where` function with the [`MainSections`] method on a `Site` object.
@y
Useful for theme authors, avoid hardcoding section names by using the `where` function with the [`MainSections`] method on a `Site` object.
@z

% snip link...

% snip code...

@x
With this construct, a theme author can instruct users to specify their main sections in the site configuration:
@y
With this construct, a theme author can instruct users to specify their main sections in the site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[params]
mainSections = ['blog','galleries']
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[params]
mainSections = ['blog','galleries']
{{< /code-toggle >}}
@z

@x
If `params.mainSections` is not defined in the site configuration, the `MainSections` method returns a slice with one element---the top level section with the most pages.
@y
If `params.mainSections` is not defined in the site configuration, the `MainSections` method returns a slice with one element---the top level section with the most pages.
@z

@x
## Boolean/undefined comparison
@y
## Boolean/undefined comparison
@z

@x
Consider this site content:
@y
Consider this site content:
@z

% snip text...

@x
The first two pages have an "exclude" field in front matter, but the last page does not. When testing for _equality_, the third page is _excluded_ from the result. When testing for _inequality_, the third page is _included_ in the result.
@y
The first two pages have an "exclude" field in front matter, but the last page does not. When testing for _equality_, the third page is _excluded_ from the result. When testing for _inequality_, the third page is _included_ in the result.
@z

@x
### Equality test
@y
### Equality test
@z

@x
This template:
@y
This template:
@z

% snip code...

@x
Is rendered to:
@y
Is rendered to:
@z

% snip code...

@x
This template:
@y
This template:
@z

% snip code...

@x
Is rendered to:
@y
Is rendered to:
@z

% snip code...

@x
### Inequality test
@y
### Inequality test
@z

@x
This template:
@y
This template:
@z

% snip code...

@x
Is rendered to:
@y
Is rendered to:
@z

% snip code...

@x
This template:
@y
This template:
@z

% snip code...

@x
Is rendered to:
@y
Is rendered to:
@z

% snip code...

@x
To exclude a page with an undefined field from a boolean _inequality_ test:
@y
To exclude a page with an undefined field from a boolean _inequality_ test:
@z

@x
1. Create a collection using a boolean comparison
2. Create a collection using a nil comparison
3. Subtract the second collection from the first collection using the [`collections.Complement`] function.
@y
1. Create a collection using a boolean comparison
2. Create a collection using a nil comparison
3. Subtract the second collection from the first collection using the [`collections.Complement`] function.
@z

% snip link...

@x
This template:
@y
This template:
@z

% snip code...

@x
Is rendered to:
@y
Is rendered to:
@z

% snip code...

@x
This template:
@y
This template:
@z

% snip code...

@x
Is rendered to:
@y
Is rendered to:
@z

% snip code...
