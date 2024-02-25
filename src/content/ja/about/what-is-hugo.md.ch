%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: What is Hugo
description: Hugo is a fast and modern static site generator written in Go, and designed to make website creation fun again.
categories: [about]
keywords: []
menu:
  docs:
    parent: about
    weight: 20
weight: 20
toc: true
aliases: [/overview/introduction/,/about/why-i-built-hugo/]
---
@y
---
title: Hugo とは何か
description: Hugo は高速で現代的な静的サイトジェネレーターであり、Go 言語を使って書かれています。ウェブサイトの構築が一段と楽しくなるように設計されています。
categories: [about]
keywords: []
menu:
  docs:
    parent: about
    weight: 20
weight: 20
toc: true
aliases: [/overview/introduction/,/about/why-i-built-hugo/]
---
@z

@x
Hugo is a general-purpose website framework. Technically speaking, Hugo is a [static site generator]. Unlike systems that dynamically build a page with each visitor request, Hugo builds pages when you create or update your content. Since websites are viewed far more often than they are edited, Hugo is designed to provide an optimal viewing experience for your website's end users and an ideal writing experience for website authors.
@y
Hugo は汎用目的のウェブサイトフレームワークです。
技術的に表現すれば Hugo は [静的サイトジェネレーター][static site generator] (static site generator) です。
アクセス要求に対して動的にページ生成するシステムとは違って、Hugo はコンテントを生成したり更新したりした時点でページを構築します。
ウェブサイトというものは、編集する回数以上に参照されます。
したがって Hugo はエンドユーザーに対してはウェブサイトを最適な形で参照する機会を提供し、またウェブサイト作者には理想的にサイト構築する機会を提供するものです。
@z

@x
Websites built with Hugo are extremely fast and secure. Hugo sites can be hosted anywhere, including [Netlify], [Heroku], [GoDaddy], [DreamHost], [GitHub Pages], [GitLab Pages], [Surge], [Firebase], [Google Cloud Storage], [Amazon S3], [Rackspace], [Azure], and [CloudFront] and work well with CDNs. Hugo sites run without the need for a database or dependencies on expensive runtimes like Ruby, Python, or PHP.
@y
Hugo によって構築されたウェブサイトは、非常に高速でありセキュアなものとなります。
Hugo によるサイトはあらゆるところでホスティングが可能です。
たとえば [Netlify], [Heroku], [GoDaddy], [DreamHost], [GitHub Pages], [GitLab Pages], [Surge], [Firebase], [Google Cloud Storage], [Amazon S3], [Rackspace], [Azure], [CloudFront] などです。
また CDN でも同様に動作します。
Hugo はデータベースを必要とせず、Ruby、Python、PHP といった高負荷なランタイムに依存することなく動作させることができます。
@z

@x
We think of Hugo as the ideal website creation tool with nearly instant build times, able to rebuild whenever a change is made.
@y
Hugo は理想的なウェブ生成ツールであると考えています。
ビルドはほとんど瞬時であって、しかも変更をかけたらすぐに再生成されます。
@z

@x
## How fast is Hugo?
@y
## Hugo はどれだけ早いか {#how-fast-is-hugo}
@z

@x
{{< youtube "CdiDYZ51a2o" >}}
@y
{{< youtube "CdiDYZ51a2o" >}}
@z

@x
## What does Hugo do?
@y
## Hugo は何を実行するのか {#what-does-hugo-do}
@z

@x
In technical terms, Hugo takes a source directory of files and templates and uses these as input to create a complete website.
@y
技術用語を用いて表現すると、Hugo ではファイルとテンプレートのあるディレクトリを指示することで、それを入力とした完璧なウェブサイトを構築します。
@z

@x
## Who should use Hugo?
@y
## Hugo を使うのは誰か {#who-should-use-hugo}
@z

@x
Hugo is for people that prefer writing in a text editor over a browser.
@y
Hugo を好んで使うのは、ブラウザー上に表現する内容をテキストエディターだけを使って記述するような方々です。
@z

@x
Hugo is for people who want to hand code their own website without worrying about setting up complicated runtimes, dependencies and databases.
@y
Hugo を使いたいと思うのは、ウェブサイト構築のために実行ファイルや依存パッケージ、データベースを無理して設定するようなわずらわしいことはやりたくなくて、ウェブサイトに受け渡すコードをただ作るだけにしたい方々です。
@z

@x
Hugo is for people building a blog, a company site, a portfolio site, documentation, a single landing page, or a website with thousands of pages.
@y
Hugo を扱うのが向いているのは、ブログつくり、会社のサイト、ポートフォリオサイト、ドキュメント、単純な作りからなるページ、何千ものページを持つウェブサイトを作ろうとする人です。
@z

@x
[@spf13]: https://twitter.com/spf13
[Amazon S3]: https://aws.amazon.com/s3/
[Azure]: https://docs.microsoft.com/en-us/azure/storage/blobs/storage-blob-static-website
[CloudFront]: https://aws.amazon.com/cloudfront/
[DreamHost]: https://www.dreamhost.com/
[Firebase]: https://firebase.google.com/docs/hosting/
[GitHub Pages]: https://pages.github.com/
[GitLab Pages]: https://about.gitlab.com/features/pages/
[Go language]: https://go.dev/
[GoDaddy]: https://www.godaddy.com/
[Google Cloud Storage]: https://cloud.google.com/storage/
[Heroku]: https://www.heroku.com/
[Jekyll]: https://jekyllrb.com/
[Middleman]: https://middlemanapp.com/
[Nanoc]: https://nanoc.ws/
[Netlify]: https://netlify.com
[Rackspace]: https://www.rackspace.com/cloud/files
[Surge]: https://surge.sh
[contributing to it]: https://github.com/gohugoio/hugo
[rackspace]: https://www.rackspace.com/openstack/public/files
[static site generator]: /about/benefits/
@y
[@spf13]: https://twitter.com/spf13
[Amazon S3]: https://aws.amazon.com/s3/
[Azure]: https://docs.microsoft.com/en-us/azure/storage/blobs/storage-blob-static-website
[CloudFront]: https://aws.amazon.com/cloudfront/
[DreamHost]: https://www.dreamhost.com/
[Firebase]: https://firebase.google.com/docs/hosting/
[GitHub Pages]: https://pages.github.com/
[GitLab Pages]: https://about.gitlab.com/features/pages/
[Go language]: https://go.dev/
[GoDaddy]: https://www.godaddy.com/
[Google Cloud Storage]: https://cloud.google.com/storage/
[Heroku]: https://www.heroku.com/
[Jekyll]: https://jekyllrb.com/
[Middleman]: https://middlemanapp.com/
[Nanoc]: https://nanoc.ws/
[Netlify]: https://netlify.com
[Rackspace]: https://www.rackspace.com/cloud/files
[Surge]: https://surge.sh
[contributing to it]: https://github.com/gohugoio/hugo
[rackspace]: https://www.rackspace.com/openstack/public/files
[static site generator]: /about/benefits/
@z
