%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Ancestors
description: Returns a collection of Page objects, one for each ancestor section of the given page. 
categories: []
keywords: []
@y
title: Ancestors
description: Returns a collection of Page objects, one for each ancestor section of the given page. 
categories: []
keywords: []
@z

@x
{{< new-in 0.109.0 >}}
@y
{{< new-in 0.109.0 >}}
@z

% snip include...

@x
With this content structure:
@y
With this content structure:
@z

% snip text...

@x
And this template:
@y
And this template:
@z

% snip code...

@x
On the November 2023 auctions page, Hugo renders:
@y
On the November 2023 auctions page, Hugo renders:
@z

% snip code...

@x
In the example above, notice that Hugo orders the ancestors from closest to furthest. This makes breadcrumb navigation simple:
@y
In the example above, notice that Hugo orders the ancestors from closest to furthest. This makes breadcrumb navigation simple:
@z

% snip code...

@x
With some CSS, the code above renders something like this, where each breadcrumb links to its page:
@y
With some CSS, the code above renders something like this, where each breadcrumb links to its page:
@z

% snip code...
