%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Search tools
linkTitle: Search
description: See some of the open-source and commercial search options for your newly created Hugo website.
categories: [developer tools]
keywords: [search]
@y
title: 検索ツール
linkTitle: 検索
description: See some of the open-source and commercial search options for your newly created Hugo website.
categories: [developer tools]
keywords: [search]
@z

@x
A static website with a dynamic search function? Yes, Hugo provides an alternative to embeddable scripts from Google or other search engines for static websites. Hugo allows you to provide your visitors with a custom search function by indexing your content files directly.
@y
静的なウェブサイトに動的な検索機能？
そうです。
Hugo provides an alternative to embeddable scripts from Google or other search engines for static websites. Hugo allows you to provide your visitors with a custom search function by indexing your content files directly.
@z

@x
## Open source
@y
## オープンソース {#open-source}
@z

@x
[Pagefind](https://github.com/cloudcannon/pagefind)
: A fully static search library that aims to perform well on large sites, while using as little of your users' bandwidth as possible.
@y
[Pagefind](https://github.com/cloudcannon/pagefind)
: A fully static search library that aims to perform well on large sites, while using as little of your users' bandwidth as possible.
@z

@x
[GitHub Gist for Hugo Workflow](https://gist.github.com/sebz/efddfc8fdcb6b480f567)
: This gist contains a simple workflow to create a search index for your static website. It uses a simple Grunt script to index all your content files and [lunr.js](https://lunrjs.com/) to serve the search results.
@y
[GitHub Gist for Hugo Workflow](https://gist.github.com/sebz/efddfc8fdcb6b480f567)
: This gist contains a simple workflow to create a search index for your static website. It uses a simple Grunt script to index all your content files and [lunr.js](https://lunrjs.com/) to serve the search results.
@z

@x
[hugo-lunr](https://www.npmjs.com/package/hugo-lunr)
: A simple way to add site search to your static Hugo site using [lunr.js](https://lunrjs.com/). Hugo-lunr will create an index file of any HTML and Markdown documents in your Hugo project.
@y
[hugo-lunr](https://www.npmjs.com/package/hugo-lunr)
: A simple way to add site search to your static Hugo site using [lunr.js](https://lunrjs.com/). Hugo-lunr will create an index file of any HTML and Markdown documents in your Hugo project.
@z

@x
[hugo-lunr-zh](https://www.npmjs.com/package/hugo-lunr-zh)
: A bit like Hugo-lunr, but Hugo-lunr-zh can help you separate the Chinese keywords.
@y
[hugo-lunr-zh](https://www.npmjs.com/package/hugo-lunr-zh)
: A bit like Hugo-lunr, but Hugo-lunr-zh can help you separate the Chinese keywords.
@z

@x
[GitHub Gist for Fuse.js integration](https://gist.github.com/eddiewebb/735feb48f50f0ddd65ae5606a1cb41ae)
: This gist demonstrates how to leverage Hugo's existing build time processing to generate a searchable JSON index used by [Fuse.js](https://fusejs.io/) on the client-side. Although this gist uses Fuse.js for fuzzy matching, any client-side search tool capable of reading JSON indexes will work. Does not require npm, grunt, or other build-time tools except Hugo!
@y
[GitHub Gist for Fuse.js integration](https://gist.github.com/eddiewebb/735feb48f50f0ddd65ae5606a1cb41ae)
: This gist demonstrates how to leverage Hugo's existing build time processing to generate a searchable JSON index used by [Fuse.js](https://fusejs.io/) on the client-side. Although this gist uses Fuse.js for fuzzy matching, any client-side search tool capable of reading JSON indexes will work. Does not require npm, grunt, or other build-time tools except Hugo!
@z

@x
[hugo-search-index](https://www.npmjs.com/package/hugo-search-index)
: A library containing Gulp tasks and a prebuilt browser script that implements search. Gulp generates a search index from project Markdown files.
@y
[hugo-search-index](https://www.npmjs.com/package/hugo-search-index)
: A library containing Gulp tasks and a prebuilt browser script that implements search. Gulp generates a search index from project Markdown files.
@z

@x
[hugofastsearch](https://gist.github.com/cmod/5410eae147e4318164258742dd053993)
: A usability and speed update to "GitHub Gist for Fuse.js integration" — global, keyboard-optimized search.
@y
[hugofastsearch](https://gist.github.com/cmod/5410eae147e4318164258742dd053993)
: A usability and speed update to "GitHub Gist for Fuse.js integration" — global, keyboard-optimized search.
@z

@x
[JS & Fuse.js tutorial](https://makewithhugo.com/add-search-to-a-hugo-site/)
: A simple client-side search solution, using FuseJS (does not require jQuery).
@y
[JS & Fuse.js tutorial](https://makewithhugo.com/add-search-to-a-hugo-site/)
: A simple client-side search solution, using FuseJS (does not require jQuery).
@z

@x
[Hugo Lyra](https://github.com/paolomainardi/hugo-lyra)
: Hugo-Lyra is a JavaScript module to integrate [Lyra](https://github.com/LyraSearch/lyra) into a Hugo website. It contains the server-side part to generate the index and the client-side library (optional) to bootstrap the search engine easily.
@y
[Hugo Lyra](https://github.com/paolomainardi/hugo-lyra)
: Hugo-Lyra is a JavaScript module to integrate [Lyra](https://github.com/LyraSearch/lyra) into a Hugo website. It contains the server-side part to generate the index and the client-side library (optional) to bootstrap the search engine easily.
@z

@x
## Commercial
@y
## 商用 {#commercial}
@z

@x
[Algolia](https://www.algolia.com/)
: Algolia's Search API makes it easy to deliver a great search experience in your apps and websites. Algolia Search provides hosted full-text, numerical, faceted, and geolocalized search.
@y
[Algolia](https://www.algolia.com/)
: Algolia's Search API makes it easy to deliver a great search experience in your apps and websites. Algolia Search provides hosted full-text, numerical, faceted, and geolocalized search.
@z

@x
[Bonsai](https://www.bonsai.io)
: Bonsai is a fully-managed hosted Elasticsearch service that is fast, reliable, and simple to set up. Easily ingest your docs from Hugo into Elasticsearch following [this guide from the docs](https://bonsai.io/docs/hugo).
@y
[Bonsai](https://www.bonsai.io)
: Bonsai is a fully-managed hosted Elasticsearch service that is fast, reliable, and simple to set up. Easily ingest your docs from Hugo into Elasticsearch following [this guide from the docs](https://bonsai.io/docs/hugo).
@z

@x
[ExpertRec](https://www.expertrec.com/)
: ExpertRec is a hosted search-as-a-service solution that is fast and scalable. Set-up and integration is extremely easy and takes only a few minutes. The search settings can be modified without coding using a dashboard.
@y
[ExpertRec](https://www.expertrec.com/)
: ExpertRec is a hosted search-as-a-service solution that is fast and scalable. Set-up and integration is extremely easy and takes only a few minutes. The search settings can be modified without coding using a dashboard.
@z
