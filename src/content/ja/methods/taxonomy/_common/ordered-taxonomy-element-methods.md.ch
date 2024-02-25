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
An ordered taxonomy is a slice, where each element is an object that contains the term and a slice of its weighted pages.
@y
An ordered taxonomy is a slice, where each element is an object that contains the term and a slice of its weighted pages.
@z

@x
Each element of the slice provides these methods:
@y
Each element of the slice provides these methods:
@z

@x
Count
: (`int`) Returns the number of pages to which the term is assigned.
@y
Count
: (`int`) Returns the number of pages to which the term is assigned.
@z

@x
Page
: (`page.Page`) Returns the term's `Page` object, useful for linking to the term page.
@y
Page
: (`page.Page`) Returns the term's `Page` object, useful for linking to the term page.
@z

@x
Pages
: (`page.Pages`) Returns a `Pages` object containing the `Page` objects to which the term is assigned, sorted by [taxonomic weight]. To sort or group, use any of the [methods] available to the `Pages` object. For example, sort by the last modification date.
@y
Pages
: (`page.Pages`) Returns a `Pages` object containing the `Page` objects to which the term is assigned, sorted by [taxonomic weight]. To sort or group, use any of the [methods] available to the `Pages` object. For example, sort by the last modification date.
@z

@x
Term
: (`string`) Returns the term name.
@y
Term
: (`string`) Returns the term name.
@z

@x
WeightedPages
: (`page.WeightedPages`) Returns a slice of weighted pages to which the term is assigned, sorted by [taxonomic weight]. The `Pages` method above is more flexible, allowing you to sort and group.
@y
WeightedPages
: (`page.WeightedPages`) Returns a slice of weighted pages to which the term is assigned, sorted by [taxonomic weight]. The `Pages` method above is more flexible, allowing you to sort and group.
@z

@x
[methods]: /methods/pages/
[taxonomic weight]: /getting-started/glossary/#taxonomic-weight
@y
[methods]: /methods/pages/
[taxonomic weight]: /getting-started/glossary/#taxonomic-weight
@z
