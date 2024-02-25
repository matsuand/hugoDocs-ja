%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Data inspection
linkTitle: Inspection
description: Use template functions to inspect values and data structures.
categories: [troubleshooting]
keywords: []
@y
title: Data inspection
linkTitle: Inspection
description: Use template functions to inspect values and data structures.
categories: [troubleshooting]
keywords: []
@z

@x
Use the [`jsonify`] function to inspect a data structure:
@y
Use the [`jsonify`] function to inspect a data structure:
@z

% snip code...

% snip output...

@x
{{% note %}}
Hugo will throw an error if you attempt to use the construct above to display context that includes a page collection. For example, in a home page template, this will fail:
@y
{{% note %}}
Hugo will throw an error if you attempt to use the construct above to display context that includes a page collection. For example, in a home page template, this will fail:
@z

@x
`{{ jsonify (dict "indent" "  ") . }}`
{{% /note %}}
@y
`{{ jsonify (dict "indent" "  ") . }}`
{{% /note %}}
@z

@x
Use the [`debug.Dump`] function to inspect data types:
@y
Use the [`debug.Dump`] function to inspect data types:
@z

% snip code...

% snip output...

@x
Use the [`printf`] function (render) or [`warnf`] function (log to console) to inspect simple data structures. The layout string below displays both value and data type.
@y
Use the [`printf`] function (render) or [`warnf`] function (log to console) to inspect simple data structures. The layout string below displays both value and data type.
@z

% snip code...

% snip links...
