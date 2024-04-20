%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: IsSection
description: Reports whether the given page is a section page.
categories: []
keywords: []
@y
title: IsSection
description: Reports whether the given page is a section page.
categories: []
keywords: []
@z

@x
The `IsSection` method on a `Page` object returns `true` if the [page kind] is `section`.
@y
`Page` オブジェクトに対して `IsSection` メソッドを用いた場合、[ページの種類][page kind] が `section` ならば `true` を返します。
@z

@x
```text
content/
├── books/
│   ├── book-1/
│   │   └── index.md  <-- kind = page
│   ├── book-2.md     <-- kind = page
│   └── _index.md     <-- kind = section
└── _index.md         <-- kind = home
```
@y
```text
content/
├── books/
│   ├── book-1/
│   │   └── index.md  <-- 種類 = ページ
│   ├── book-2.md     <-- 種類 = ページ
│   └── _index.md     <-- 種類 = セクション
└── _index.md         <-- 種類 = ホーム
```
@z

% snip code...
% snip link...
