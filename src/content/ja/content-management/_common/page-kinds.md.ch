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
| Kind | Description | Example |
|----------------|--------------------------------------------------------------------|-------------------------------------------------------------------------------|
| `home` | The landing page for the home page | `/index.html` |
| `page` | The landing page for a given page | `my-post` page (`/posts/my-post/index.html`) |
| `section` | The landing page of a given section | `posts` section (`/posts/index.html`) |
| `taxonomy` | The landing page for a taxonomy | `tags` taxonomy (`/tags/index.html`) |
| `term` | The landing page for one taxonomy's term | term `awesome` in `tags` taxonomy (`/tags/awesome/index.html`) |
@y
| Kind | Description | Example |
|----------------|--------------------------------------------------------------------|-------------------------------------------------------------------------------|
| `home` | The landing page for the home page | `/index.html` |
| `page` | The landing page for a given page | `my-post` page (`/posts/my-post/index.html`) |
| `section` | The landing page of a given section | `posts` section (`/posts/index.html`) |
| `taxonomy` | The landing page for a taxonomy | `tags` taxonomy (`/tags/index.html`) |
| `term` | The landing page for one taxonomy's term | term `awesome` in `tags` taxonomy (`/tags/awesome/index.html`) |
@z

@x
Four other page kinds unrelated to content are `robotsTXT`, `RSS`, `sitemap`, and `404`. Although primarily for internal use, you can specify the name when disabling one or more page kinds on your site. For example:
@y
Four other page kinds unrelated to content are `robotsTXT`, `RSS`, `sitemap`, and `404`. Although primarily for internal use, you can specify the name when disabling one or more page kinds on your site. For example:
@z

@x
{{< code-toggle file=hugo >}}
disableKinds = ['robotsTXT','404']
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
disableKinds = ['robotsTXT','404']
{{< /code-toggle >}}
@z
