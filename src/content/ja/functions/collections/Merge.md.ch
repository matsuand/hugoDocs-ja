%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: collections.Merge
description: Returns the result of merging two or more maps.
categories: []
keywords: []
@y
title: collections.Merge
description: Returns the result of merging two or more maps.
categories: []
keywords: []
@z

@x
Returns the result of merging two or more maps from left to right. If a key already exists, `merge` updates its value. If a key is absent, `merge` inserts the value under the new key.
@y
Returns the result of merging two or more maps from left to right. If a key already exists, `merge` updates its value. If a key is absent, `merge` inserts the value under the new key.
@z

@x
Key handling is case-insensitive.
@y
Key handling is case-insensitive.
@z

@x
The following examples use these map definitions:
@y
The following examples use these map definitions:
@z

% snip code...

@x
Example 1
@y
Example 1
@z

% snip code...

@x
Example 2
@y
Example 2
@z

% snip code...

@x
Example 3
@y
Example 3
@z

% snip code...

@x
Example 4
@y
Example 4
@z

% snip code...

@x
{{% note %}}
Regardless of depth, merging only applies to maps. For slices, use [append](/functions/collections/append).
{{% /note %}}
@y
{{% note %}}
Regardless of depth, merging only applies to maps. For slices, use [append](/functions/collections/append).
{{% /note %}}
@z
