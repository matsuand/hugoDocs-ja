%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% snip 対応

@x
title: Name
description: Returns the name of the given resource as optionally defined in front matter, falling back to its file path.
categories: []
keywords: []
@y
title: Name
description: Returns the name of the given resource as optionally defined in front matter, falling back to its file path.
categories: []
keywords: []
@z

@x
The value returned by the `Name` method on a `Resource` object depends on the resource type.
@y
The value returned by the `Name` method on a `Resource` object depends on the resource type.
@z

@x
## Global resource
@y
## Global resource
@z

@x
With a [global resource], the `Name` method returns the path to the resource, relative to the assets directory.
@y
With a [global resource], the `Name` method returns the path to the resource, relative to the assets directory.
@z

% snip text...

% snip code...

@x
## Page resource
@y
## Page resource
@z

@x
With a [page resource], if you create an element in the `resources` array in front matter, the `Name` method returns the value of the `name` parameter.
@y
With a [page resource], if you create an element in the `resources` array in front matter, the `Name` method returns the value of the `name` parameter.
@z

% snip code...

% snip code...

@x
If you do not create an element in the `resources` array in front matter, the `Name` method returns the file path, relative to the page bundle.
@y
If you do not create an element in the `resources` array in front matter, the `Name` method returns the file path, relative to the page bundle.
@z

% snip text...

% snip code...

@x
## Remote resource
@y
## Remote resource
@z

@x
With a [remote resource], the `Name` method returns a hashed file name.
@y
With a [remote resource], the `Name` method returns a hashed file name.
@z

% snip code...

% snip links...
