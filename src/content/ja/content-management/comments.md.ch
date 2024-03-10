%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% snip 対応

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
Disqus has its own [internal template](/templates/embedded/#disqus) available, to render it add the following code where you want comments to appear:
@y
Disqus has its own [internal template](/templates/embedded/#disqus) available, to render it add the following code where you want comments to appear:
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
Commercial commenting systems:
@y
商用のコメントシステム
@z

@x
- [Graph Comment](https://graphcomment.com/)
- [Hyvor Talk](https://talk.hyvor.com/)
- [IntenseDebate](https://intensedebate.com/)
- [ReplyBox](https://getreplybox.com/)
@y
- [Graph Comment](https://graphcomment.com/)
- [Hyvor Talk](https://talk.hyvor.com/)
- [IntenseDebate](https://intensedebate.com/)
- [ReplyBox](https://getreplybox.com/)
@z

@x
Open-source commenting systems:
@y
オープンソースのコメントシステム
@z

@x
- [Cactus Comments](https://cactus.chat/docs/integrations/hugo/)
- [Comentario](https://gitlab.com/comentario/comentario/)
- [Comma](https://github.com/Dieterbe/comma/)
- [Commento](https://commento.io/)
- [Giscus](https://giscus.app/)
- [Isso](https://isso-comments.de/)
- [Remark42](https://remark42.com/)
- [Staticman](https://staticman.net/)
- [Talkyard](https://blog-comments.talkyard.io/)
- [Utterances](https://utteranc.es/)
@y
- [Cactus Comments](https://cactus.chat/docs/integrations/hugo/)
- [Comentario](https://gitlab.com/comentario/comentario/)
- [Comma](https://github.com/Dieterbe/comma/)
- [Commento](https://commento.io/)
- [Giscus](https://giscus.app/)
- [Isso](https://isso-comments.de/)
- [Remark42](https://remark42.com/)
- [Staticman](https://staticman.net/)
- [Talkyard](https://blog-comments.talkyard.io/)
- [Utterances](https://utteranc.es/)
@z

% snip links...
