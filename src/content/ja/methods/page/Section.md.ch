%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Section
description: Returns the name of the top level section in which the given page resides.
categories: []
keywords: []
@y
title: Section
description: Returns the name of the top level section in which the given page resides.
categories: []
keywords: []
@z

@x
With this content structure:
@y
With this content structure:
@z

% snip text...

@x
When rendering lesson-1.md:
@y
When rendering lesson-1.md:
@z

% snip code...

@x
In the example above "lessons" is the top level section.
@y
In the example above "lessons" is the top level section.
@z

@x
The `Section` method is often used with the [`where`] function to build a page collection.
@y
The `Section` method is often used with the [`where`] function to build a page collection.
@z

% snip code...

@x
This is similar to using the [`Type`] method with the `where` function
@y
This is similar to using the [`Type`] method with the `where` function
@z

% snip code...

@x
However, if the `type` field in front matter has been defined on one or more pages, the page collection based on `Type` will be different than the page collection based on `Section`.
@y
However, if the `type` field in front matter has been defined on one or more pages, the page collection based on `Type` will be different than the page collection based on `Section`.
@z

% snip links...
