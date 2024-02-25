%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Benefits of static site generators
linkTitle: Static site generators
description: Improved performance, security and ease of use are just a few of the reasons static site generators are so appealing.
categories: [about]
keywords: [ssg,static,performance,security]
menu:
  docs:
    parent: about
    weight: 40
weight: 40
---
@y
---
title: 静的サイトジェネレーターの利点
linkTitle: 静的サイトジェネレーター
description: 性能改善、セキュリティ、使いやすさは、静的サイトジェネレーターの魅力をお伝えする、ほんの一部の理由にすぎません。
categories: [about]
keywords: [ssg,static,performance,security]
menu:
  docs:
    parent: about
    weight: 40
weight: 40
---
@z

@x
The purpose of website generators is to render content into HTML files. Most are "dynamic site generators." That means the HTTP server---i.e., the program that sends files to the browser to be viewed---runs the generator to create a new HTML file every time an end user requests a page.
@y
ウェブサイトジェネレーターの目的は、コンテントを HTML ファイルにレンダリングすることです。
そのほとんどは「動的サイトジェネレーター」(dynamic site generators) です。
と言うことは、ブラウザーに表示するべきファイルを送り込むプログラム、つまり HTTP サーバーがそのジェネレーターを起動させて、エンドユーザーのページ要求のたびに、新たな HTML ファイルを毎回作り出すということを行っています。
@z

@x
Over time, dynamic site generators were programmed to cache their HTML files to prevent unnecessary delays in delivering pages to end users. A cached page is a static version of a web page.
@y
動的なサイトジェネレーターでは HTML ファイルをキャッシュするようにプログラムされるようになりました。
これはエンドユーザーにページ提供する際に、不要な遅延を避けるようにしたからです。
そのようにキャッシュされたページとは、静的に生成されたウェブページです。
@z

@x
Hugo takes caching a step further and all HTML files are rendered on your computer. You can review the files locally before copying them to the computer hosting the HTTP server. Since the HTML files aren't generated dynamically, we say that Hugo is a *static site generator*.
@y
Hugo はこのキャッシング処理を一歩進めて、あらかじめ全 HTML ファイルをコンピューター内にレンダリングするようになりました。
ローカルでファイルを確認してから、その後に HTTP サーバーを稼働させるコンピューターにファイルをコピーするものです。
HTML ファイルはもはや動的に生成されてはいません。
したがって Hugo は *静的サイトジェネレーター* と呼ぶのです。
@z

@x
This has many benefits. The most noticeable is performance. HTTP servers are *very* good at sending files---so good, in fact, that you can effectively serve the same number of pages with a fraction of the memory and CPU needed for a dynamic site.
@y
ここには多くのメリットがあります。
最大の利点は処理性能です。
HTTP サーバーはファイル送信を *とても* 得意としています。
これは間違いありません。
動的サイトが必要とするメモリや CPU の一部を利用するだけで、同じ数のページを効率よく提供することができます。
@z

@x
## More on static site generators
@y
## 静的サイトジェネレーターの詳細 {#more-on-static-site-generators}
@z

@x
* ["An Introduction to Static Site Generators", David Walsh]
* ["Hugo vs. WordPress page load speed comparison: Hugo leaves WordPress in its dust", GettingThingsTech][hugovwordpress]
* ["Static Site Generators", O'Reilly]
* [StaticGen: Top Open-Source Static Site Generators (GitHub Stars)]
* ["Top 10 Static Website Generators", Netlify blog]
* ["The Resurgence of Static", dotCMS][dotcms]
@y
* ["An Introduction to Static Site Generators", David Walsh]
* ["Hugo vs. WordPress page load speed comparison: Hugo leaves WordPress in its dust", GettingThingsTech][hugovwordpress]
* ["Static Site Generators", O'Reilly]
* [StaticGen: Top Open-Source Static Site Generators (GitHub Stars)]
* ["Top 10 Static Website Generators", Netlify blog]
* ["The Resurgence of Static", dotCMS][dotcms]
@z

@x
["An Introduction to Static Site Generators", David Walsh]: https://davidwalsh.name/introduction-static-site-generators
["Static Site Generators", O'Reilly]: https://github.com/gohugoio/hugoDocs/files/1242701/static-site-generators.pdf
["Top 10 Static Website Generators", Netlify blog]: https://www.netlify.com/blog/2016/05/02/top-ten-static-website-generators/
[hugovwordpress]: https://gettingthingstech.com/hugo-vs.-wordpress-page-load-speed-comparison-hugo-leaves-wordpress-in-its-dust/
[StaticGen: Top Open-Source Static Site Generators (GitHub Stars)]: https://www.staticgen.com/
[dotcms]: https://dotcms.com/blog/post/the-resurgence-of-static
@y
["An Introduction to Static Site Generators", David Walsh]: https://davidwalsh.name/introduction-static-site-generators
["Static Site Generators", O'Reilly]: https://github.com/gohugoio/hugoDocs/files/1242701/static-site-generators.pdf
["Top 10 Static Website Generators", Netlify blog]: https://www.netlify.com/blog/2016/05/02/top-ten-static-website-generators/
[hugovwordpress]: https://gettingthingstech.com/hugo-vs.-wordpress-page-load-speed-comparison-hugo-leaves-wordpress-in-its-dust/
[StaticGen: Top Open-Source Static Site Generators (GitHub Stars)]: https://www.staticgen.com/
[dotcms]: https://dotcms.com/blog/post/the-resurgence-of-static
@z
