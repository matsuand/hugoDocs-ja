%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: collections.Index
description: Looks up the index(es) or key(s) of the data structure passed into it.
categories: []
keywords: []
@y
title: collections.Index
description: Looks up the index(es) or key(s) of the data structure passed into it.
categories: []
keywords: []
@z

@x
The `index` functions returns the result of indexing its first argument by the following arguments. Each indexed item must be a map or a slice, e.g.:
@y
The `index` functions returns the result of indexing its first argument by the following arguments. Each indexed item must be a map or a slice, e.g.:
@z

% snip code...

@x
The function takes multiple indices as arguments, and this can be used to get nested values, e.g.:
@y
The function takes multiple indices as arguments, and this can be used to get nested values, e.g.:
@z

% snip code...

@x
You may write multiple indices as a slice:
@y
You may write multiple indices as a slice:
@z

% snip code...

@x
## Example: load data from a path based on front matter parameters
@y
## Example: load data from a path based on front matter parameters
@z

@x
Assume you want to add a `location = ""` field to your front matter for every article written in `content/vacations/`. You want to use this field to populate information about the location at the bottom of the article in your `single.html` template. You also have a directory in `data/locations/` that looks like the following:
@y
Assume you want to add a `location = ""` field to your front matter for every article written in `content/vacations/`. You want to use this field to populate information about the location at the bottom of the article in your `single.html` template. You also have a directory in `data/locations/` that looks like the following:
@z

% snip text...

@x
Here is an example:
@y
Here is an example:
@z

% snip code...

@x
The example we will use will be an article on Oslo, whose front matter should be set to exactly the same name as the corresponding file name in `data/locations/`:
@y
The example we will use will be an article on Oslo, whose front matter should be set to exactly the same name as the corresponding file name in `data/locations/`:
@z

% snip code...

@x
The content of `oslo.toml` can be accessed from your template using the following node path: `.Site.Data.locations.oslo`. However, the specific file you need is going to change according to the front matter.
@y
The content of `oslo.toml` can be accessed from your template using the following node path: `.Site.Data.locations.oslo`. However, the specific file you need is going to change according to the front matter.
@z

@x
This is where the `index` function is needed. `index` takes 2 arguments in this use case:
@y
This is where the `index` function is needed. `index` takes 2 arguments in this use case:
@z

@x
1. The node path
2. A string corresponding to the desired data; e.g.&mdash;
@y
1. The node path
2. A string corresponding to the desired data; e.g.&mdash;
@z

% snip code...

@x
The variable for `.Params.location` is a string and can therefore replace `oslo` in the example above:
@y
The variable for `.Params.location` is a string and can therefore replace `oslo` in the example above:
@z

% snip code...

@x
Now the call will return the specific file according to the location specified in the content's front matter, but you will likely want to write specific properties to the template. You can do this by continuing down the node path via dot notation (`.`):
@y
Now the call will return the specific file according to the location specified in the content's front matter, but you will likely want to write specific properties to the template. You can do this by continuing down the node path via dot notation (`.`):
@z

% snip code...
