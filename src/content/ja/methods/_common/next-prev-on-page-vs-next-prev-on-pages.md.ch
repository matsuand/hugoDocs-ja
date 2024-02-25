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
The `Next` and `Prev` methods on a `Pages` object are more flexible than the `Next` and `Prev` methods on a `Page` object.
@y
The `Next` and `Prev` methods on a `Pages` object are more flexible than the `Next` and `Prev` methods on a `Page` object.
@z

@x
||Page collection|Custom sort order
:--|:--|:-:
[`PAGES.Next`] and [`PAGES.Prev`]|locally defined|✔️
[`PAGE.Next`] and [`PAGE.Prev`]|globally defined|❌
@y
||Page collection|Custom sort order
:--|:--|:-:
[`PAGES.Next`] and [`PAGES.Prev`]|locally defined|✔️
[`PAGE.Next`] and [`PAGE.Prev`]|globally defined|❌
@z

@x
[`PAGES.Next`]: /methods/pages/next/
[`PAGES.Prev`]: /methods/pages/prev/
[`PAGE.Next`]: /methods/page/next/
[`PAGE.Prev`]: /methods/page/prev/
@y
[`PAGES.Next`]: /methods/pages/next/
[`PAGES.Prev`]: /methods/pages/prev/
[`PAGE.Next`]: /methods/page/next/
[`PAGE.Prev`]: /methods/page/prev/
@z

@x
locally defined
: Build the page collection every time you call `PAGES.Next` and `PAGES.Prev`. Navigation between pages is relative to the current page's position within the local collection, independent of the global collection.
@y
locally defined
: Build the page collection every time you call `PAGES.Next` and `PAGES.Prev`. Navigation between pages is relative to the current page's position within the local collection, independent of the global collection.
@z

@x
With a local collection, the navigation sort order is the same as the collection sort order.
@y
With a local collection, the navigation sort order is the same as the collection sort order.
@z

@x
globally defined
: Build the page collection once, on a list page. Navigation between pages is relative to the current page's position within the global collection.
@y
globally defined
: Build the page collection once, on a list page. Navigation between pages is relative to the current page's position within the global collection.
@z

@x
With a global collection, the navigation sort order is fixed, using Hugo's default sort order. In order of precedence:
@y
With a global collection, the navigation sort order is fixed, using Hugo's default sort order. In order of precedence:
@z

@x
1. Page [weight]
2. Page [date] (descending)
3. Page [linkTitle], falling back to page [title]
4. Page file path if the page is backed by a file
@y
1. Page [weight]
2. Page [date] (descending)
3. Page [linkTitle], falling back to page [title]
4. Page file path if the page is backed by a file
@z

@x
For example, with a global collection sorted by title, the navigation sort order will use Hugo's default sort order. This is probably not what you want or expect. For this reason, the `Next` and `Prev` methods on a `Pages` object are generally a better choice.
@y
For example, with a global collection sorted by title, the navigation sort order will use Hugo's default sort order. This is probably not what you want or expect. For this reason, the `Next` and `Prev` methods on a `Pages` object are generally a better choice.
@z

@x
[date]: /methods/page/date/
[weight]: /methods/page/weight/
[linkTitle]: /methods/page/linktitle/
[title]: /methods/page/title/
@y
[date]: /methods/page/date/
[weight]: /methods/page/weight/
[linkTitle]: /methods/page/linktitle/
[title]: /methods/page/title/
@z
