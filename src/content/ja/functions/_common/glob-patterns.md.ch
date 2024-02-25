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
Path|Pattern|Match
:--|:--|:--
`images/foo/a.jpg`|`images/foo/*.jpg`|`true`
`images/foo/a.jpg`|`images/foo/*.*`|`true`
`images/foo/a.jpg`|`images/foo/*`|`true`
`images/foo/a.jpg`|`images/*/*.jpg`|`true`
`images/foo/a.jpg`|`images/*/*.*`|`true`
`images/foo/a.jpg`|`images/*/*`|`true`
`images/foo/a.jpg`|`*/*/*.jpg`|`true`
`images/foo/a.jpg`|`*/*/*.*`|`true`
`images/foo/a.jpg`|`*/*/*`|`true`
`images/foo/a.jpg`|`**/*.jpg`|`true`
`images/foo/a.jpg`|`**/*.*`|`true`
`images/foo/a.jpg`|`**/*`|`true`
`images/foo/a.jpg`|`**`|`true`
`images/foo/a.jpg`|`*/*.jpg`|`false`
`images/foo/a.jpg`|`*.jpg`|`false`
`images/foo/a.jpg`|`*.*`|`false`
`images/foo/a.jpg`|`*`|`false`
@y
Path|Pattern|Match
:--|:--|:--
`images/foo/a.jpg`|`images/foo/*.jpg`|`true`
`images/foo/a.jpg`|`images/foo/*.*`|`true`
`images/foo/a.jpg`|`images/foo/*`|`true`
`images/foo/a.jpg`|`images/*/*.jpg`|`true`
`images/foo/a.jpg`|`images/*/*.*`|`true`
`images/foo/a.jpg`|`images/*/*`|`true`
`images/foo/a.jpg`|`*/*/*.jpg`|`true`
`images/foo/a.jpg`|`*/*/*.*`|`true`
`images/foo/a.jpg`|`*/*/*`|`true`
`images/foo/a.jpg`|`**/*.jpg`|`true`
`images/foo/a.jpg`|`**/*.*`|`true`
`images/foo/a.jpg`|`**/*`|`true`
`images/foo/a.jpg`|`**`|`true`
`images/foo/a.jpg`|`*/*.jpg`|`false`
`images/foo/a.jpg`|`*.jpg`|`false`
`images/foo/a.jpg`|`*.*`|`false`
`images/foo/a.jpg`|`*`|`false`
@z
