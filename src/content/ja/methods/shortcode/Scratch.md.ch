%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Scratch
description: Creates a "scratch pad" scoped to the shortcode to store and manipulate data. 
categories: []
keywords: []
action:
  related:
    - functions/collections/NewScratch
  returnType: maps.Scratch
  signatures: [SHORTCODE.Scratch]
---
@y
---
title: Scratch
description: Creates a "scratch pad" scoped to the shortcode to store and manipulate data. 
categories: []
keywords: []
action:
  related:
    - functions/collections/NewScratch
  returnType: maps.Scratch
  signatures: [SHORTCODE.Scratch]
---
@z

@x
The `Scratch` method within a shortcode creates a [scratch pad] to store and manipulate data. The scratch pad is scoped to the shortcode, and is reset on server rebuilds.
@y
The `Scratch` method within a shortcode creates a [scratch pad] to store and manipulate data. The scratch pad is scoped to the shortcode, and is reset on server rebuilds.
@z

@x
{{% note %}}
With the introduction of the [`newScratch`] function, and the ability to [assign values to template variables] after initialization, the `Scratch` method within a shortcode is obsolete.
@y
{{% note %}}
With the introduction of the [`newScratch`] function, and the ability to [assign values to template variables] after initialization, the `Scratch` method within a shortcode is obsolete.
@z

@x
[assign values to template variables]: https://go.dev/doc/go1.11#text/template
[`newScratch`]: /functions/collections/newscratch/
{{% /note %}}
@y
[assign values to template variables]: https://go.dev/doc/go1.11#text/template
[`newScratch`]: /functions/collections/newscratch/
{{% /note %}}
@z

@x
[scratch pad]: /getting-started/glossary/#scratch-pad
@y
[scratch pad]: /getting-started/glossary/#scratch-pad
@z

@x
{{% include "methods/page/_common/scratch-methods.md" %}}
@y
{{% include "methods/page/_common/scratch-methods.md" %}}
@z
