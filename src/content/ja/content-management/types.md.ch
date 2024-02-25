%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Content types
description: Hugo is built around content organized in sections.
categories: [content management]
keywords: [lists,sections,content types,types,organization]
menu:
  docs:
    parent: content-management
    weight: 130
weight: 130
toc: true
aliases: [/content/types]
---
@y
---
title: Content types
description: Hugo is built around content organized in sections.
categories: [content management]
keywords: [lists,sections,content types,types,organization]
menu:
  docs:
    parent: content-management
    weight: 130
weight: 130
toc: true
aliases: [/content/types]
---
@z

@x
A **content type** is a way to organize your content. Hugo resolves the content type from either the `type` in front matter or, if not set, the first directory in the file path. E.g. `content/blog/my-first-event.md` will be of type `blog` if no `type` is set.
@y
A **content type** is a way to organize your content. Hugo resolves the content type from either the `type` in front matter or, if not set, the first directory in the file path. E.g. `content/blog/my-first-event.md` will be of type `blog` if no `type` is set.
@z

@x
A content type is used to
@y
A content type is used to
@z

@x
- Determine how the content is rendered. See [Template Lookup Order](/templates/lookup-order/) and [Content Views](/templates/views) for more.
- Determine which [archetype](/content-management/archetypes/) template to use for new content.
@y
- Determine how the content is rendered. See [Template Lookup Order](/templates/lookup-order/) and [Content Views](/templates/views) for more.
- Determine which [archetype](/content-management/archetypes/) template to use for new content.
@z
