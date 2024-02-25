%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Comments
description: Hugo ships with an internal Disqus template, but this isn't the only commenting system that will work with your new Hugo website.
categories: [content management]
keywords: [sections,content,organization]
@y
title: コメント
description: Hugo は内部機能として Disqus テンプレートをサポートしています。ただしこれだけが唯一のコメント機能となるわけではなく、別の方法を使っても新たな Hugo ウェブサイトを動作させることはできます。
categories: [content management]
keywords: [sections,content,organization]
@z

@x
Hugo ships with support for [Disqus](https://disqus.com/), a third-party service that provides comment and community capabilities to websites via JavaScript.
@y
Hugo は [Disqus](https://disqus.com/) へのサポートを含んでいます。
これはサードパーティー製のサービスであり、JavaScript を使ってウェブサイト上にコメント機能やコミュニティー機能を提供するものです。
@z

@x
Your theme may already support Disqus, but if not, it is easy to add to your templates via [Hugo's built-in Disqus partial][disquspartial].
@y
利用するテーマによってはすでに Disqus をサポートしているかもしれませんが、サポートされていない場合であっても、[Hugo の組み込み Disqus partial][disquspartial] を通じてテンプレートに容易に追加することができます。
@z

@x
## Add Disqus
@y
## Disqus の追加 {#add-disqus}
@z

@x
Hugo comes with all the code you need to load Disqus into your templates. Before adding Disqus to your site, you'll need to [set up an account][disqussetup].
@y
Disqua をテンプレートにロードするためのコードは Hugo がすべて準備しています。
サイトへの Disqus 追加を行うにあたっては、まず初めに [アカウントのセットアップ][disqussetup] が必要です。
@z

@x
### Configure Disqus
@y
### Disqus の設定 {#configure-disqus}
@z

@x
Disqus comments require you set a single value in your [site's configuration file][configuration] like so:
@y
Disqus comments require you set a single value in your [site's configuration file][configuration] like so:
@z

@x
{{< code-toggle file=hugo >}}
[services.disqus]
shortname = 'your-disqus-shortname'
{{</ code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[services.disqus]
shortname = 'your-disqus-shortname'
{{</ code-toggle >}}
@z

@x
For many websites, this is enough configuration. However, you also have the option to set the following in the [front matter] of a single content file:
@y
For many websites, this is enough configuration. However, you also have the option to set the following in the [front matter] of a single content file:
@z

@x
* `disqus_identifier`
* `disqus_title`
* `disqus_url`
@y
* `disqus_identifier`
* `disqus_title`
* `disqus_url`
@z

@x
### Render Hugo's built-in Disqus partial template
@y
### Render Hugo's built-in Disqus partial template
@z

@x
Disqus has its own [internal template](/templates/internal/#disqus) available, to render it add the following code where you want comments to appear:
@y
Disqus has its own [internal template](/templates/internal/#disqus) available, to render it add the following code where you want comments to appear:
@z

@x
```go-html-template
{{ template "_internal/disqus.html" . }}
```
@y
```go-html-template
{{ template "_internal/disqus.html" . }}
```
@z

@x
## Alternatives
@y
## その他の方法 {#alternatives}
@z

@x
These are some alternatives to Disqus:
@y
Disqus ではない別の方法は、以下のようにいくつかあります。
@z

@x
* [Cactus Comments](https://cactus.chat/docs/integrations/hugo/) (Open Source, Matrix appservice, Docker install)
* [Comentario](https://gitlab.com/comentario/comentario) (Open Source, self-hosted, Go/Angular, run locally, in Docker or Kubernetes)
* [Comma](https://github.com/Dieterbe/comma) (Open source Go program that saves and loads comments to text files via REST api)
* [Commento](https://commento.io/) (Open Source, available as a service, local install, or docker image)
* [Giscus](https://giscus.app/) (Open source, comments system powered by GitHub Discussions)
* [Graph Comment](https://graphcomment.com/)
* [Hyvor Talk](https://talk.hyvor.com/) (Available as a service)
* [IntenseDebate](https://intensedebate.com/)
* [Isso](https://isso-comments.de/) (Self-hosted, Python) ([tutorial][issotutorial])
* [Muut](https://muut.com/)
* [Remark42](https://remark42.com/) (Open source, Golang, Easy to run docker)
* [ReplyBox](https://getreplybox.com/)
* [Staticman](https://staticman.net/)
* [Talkyard](https://blog-comments.talkyard.io/) (Open source, & serverless hosting)
* [Utterances](https://utteranc.es/) (Open source, GitHub comments widget built on GitHub issues)
@y
* [Cactus Comments](https://cactus.chat/docs/integrations/hugo/) (Open Source, Matrix appservice, Docker install)
* [Comentario](https://gitlab.com/comentario/comentario) (Open Source, self-hosted, Go/Angular, run locally, in Docker or Kubernetes)
* [Comma](https://github.com/Dieterbe/comma) (Open source Go program that saves and loads comments to text files via REST api)
* [Commento](https://commento.io/) (Open Source, available as a service, local install, or docker image)
* [Giscus](https://giscus.app/) (Open source, comments system powered by GitHub Discussions)
* [Graph Comment](https://graphcomment.com/)
* [Hyvor Talk](https://talk.hyvor.com/) (Available as a service)
* [IntenseDebate](https://intensedebate.com/)
* [Isso](https://isso-comments.de/) (Self-hosted, Python) ([tutorial][issotutorial])
* [Muut](https://muut.com/)
* [Remark42](https://remark42.com/) (Open source, Golang, Easy to run docker)
* [ReplyBox](https://getreplybox.com/)
* [Staticman](https://staticman.net/)
* [Talkyard](https://blog-comments.talkyard.io/) (Open source, & serverless hosting)
* [Utterances](https://utteranc.es/) (Open source, GitHub comments widget built on GitHub issues)
@z

@x
[configuration]: /getting-started/configuration/
[disquspartial]: /templates/internal/#disqus
[disqussetup]: https://disqus.com/profile/signup/
[forum]: https://discourse.gohugo.io
[front matter]: /content-management/front-matter/
[kaijuissue]: https://github.com/spf13/kaiju/issues/new
[issotutorial]: https://stiobhart.net/2017-02-24-isso-comments/
[partials]: /templates/partials/
[MongoDB]: https://www.mongodb.com/
[tweet]: https://twitter.com/spf13
@y
[configuration]: /getting-started/configuration/
[disquspartial]: /templates/internal/#disqus
[disqussetup]: https://disqus.com/profile/signup/
[forum]: https://discourse.gohugo.io
[front matter]: /content-management/front-matter/
[kaijuissue]: https://github.com/spf13/kaiju/issues/new
[issotutorial]: https://stiobhart.net/2017-02-24-isso-comments/
[partials]: /templates/partials/
[MongoDB]: https://www.mongodb.com/
[tweet]: https://twitter.com/spf13
@z
