%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Security model
linkTitle: Security 
description: A summary of Hugo's security model.
categories: [about]
keywords: [security,privacy]
@y
title: セキュリティモデル
linkTitle: セキュリティ
description: A summary of Hugo's security model.
categories: [about]
keywords: [security,privacy]
@z

@x
## Runtime security
@y
## Runtime security
@z

@x
Hugo produces static output, so once built, the runtime is the browser (assuming the output is HTML) and any server (API) that you integrate with.
@y
Hugo produces static output, so once built, the runtime is the browser (assuming the output is HTML) and any server (API) that you integrate with.
@z

@x
But when developing and building your site, the runtime is the `hugo` executable. Securing a runtime can be [a real challenge](https://blog.logrocket.com/how-to-protect-your-node-js-applications-from-malicious-dependencies-5f2e60ea08f9/).
@y
But when developing and building your site, the runtime is the `hugo` executable. Securing a runtime can be [a real challenge](https://blog.logrocket.com/how-to-protect-your-node-js-applications-from-malicious-dependencies-5f2e60ea08f9/).
@z

@x
**Hugo's main approach is that of sandboxing and a security policy with strict defaults:**
@y
**Hugo's main approach is that of sandboxing and a security policy with strict defaults:**
@z

@x
* Hugo has a virtual file system and only the main project (not third-party components) is allowed to mount directories or files outside the project root.
* User-defined components have read-only access to the filesystem.
* We shell out to some external binaries to support [Asciidoctor](/content-management/formats/#formats) and similar, but those binaries and their flags are predefined and disabled by default (see [Security Policy](#security-policy)). General functions to run arbitrary external OS commands have been [discussed](https://github.com/gohugoio/hugo/issues/796), but not implemented because of security concerns.
@y
* Hugo has a virtual file system and only the main project (not third-party components) is allowed to mount directories or files outside the project root.
* User-defined components have read-only access to the filesystem.
* We shell out to some external binaries to support [Asciidoctor](/content-management/formats/#formats) and similar, but those binaries and their flags are predefined and disabled by default (see [Security Policy](#security-policy)). General functions to run arbitrary external OS commands have been [discussed](https://github.com/gohugoio/hugo/issues/796), but not implemented because of security concerns.
@z

@x
## Security policy
@y
## Security policy
@z

@x
Hugo has a built-in security policy that restricts access to [os/exec](https://pkg.go.dev/os/exec), remote communication and similar.
@y
Hugo has a built-in security policy that restricts access to [os/exec](https://pkg.go.dev/os/exec), remote communication and similar.
@z

@x
The default configuration is listed below. Any build using features not in the allow list of the security policy will fail with a detailed message about what needs to be done. Most of these settings are allow lists (string or slice, [Regular Expressions](https://pkg.go.dev/regexp) or `none` which matches nothing).
@y
The default configuration is listed below. Any build using features not in the allow list of the security policy will fail with a detailed message about what needs to be done. Most of these settings are allow lists (string or slice, [Regular Expressions](https://pkg.go.dev/regexp) or `none` which matches nothing).
@z

@x
{{< code-toggle config=security />}}
@y
{{< code-toggle config=security />}}
@z

@x
By default, Hugo permits the [`resources.GetRemote`] function to download files with media types corresponding to an internal allow list. To add media types to the allow list:
@y
By default, Hugo permits the [`resources.GetRemote`] function to download files with media types corresponding to an internal allow list. To add media types to the allow list:
@z

@x
[`resources.GetRemote`]: /functions/resources/getremote
@y
[`resources.GetRemote`]: /functions/resources/getremote
@z

@x
{{< code-toggle file=hugo >}}
[security.http]
mediaTypes = ['^image/avif$']
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[security.http]
mediaTypes = ['^image/avif$']
{{< /code-toggle >}}
@z

@x
Note that these and other configuration settings in Hugo can be overridden by the OS environment. For example, if you want to block all remote HTTP fetching of data:
@y
Note that these and other configuration settings in Hugo can be overridden by the OS environment. For example, if you want to block all remote HTTP fetching of data:
@z

@x
```txt
HUGO_SECURITY_HTTP_URLS=none hugo
```
@y
```txt
HUGO_SECURITY_HTTP_URLS=none hugo
```
@z

@x
## Dependency security
@y
## Dependency security
@z

@x
Hugo is built as a static binary using [Go Modules](https://github.com/golang/go/wiki/Modules) to manage its dependencies. Go Modules have several safeguards, one of them being the `go.sum` file. This is a database of the expected cryptographic checksums of all of your dependencies, including transitive dependencies.
@y
Hugo is built as a static binary using [Go Modules](https://github.com/golang/go/wiki/Modules) to manage its dependencies. Go Modules have several safeguards, one of them being the `go.sum` file. This is a database of the expected cryptographic checksums of all of your dependencies, including transitive dependencies.
@z

@x
[Hugo Modules](/hugo-modules/) is a feature built on top of the functionality of Go Modules. Like Go Modules, a Hugo project using Hugo Modules will have a `go.sum` file. We recommend that you commit this file to your version control system. The Hugo build will fail if there is a checksum mismatch, which would be an indication of [dependency tampering](https://julienrenaux.fr/2019/12/20/github-actions-security-risk/).
@y
[Hugo Modules](/hugo-modules/) is a feature built on top of the functionality of Go Modules. Like Go Modules, a Hugo project using Hugo Modules will have a `go.sum` file. We recommend that you commit this file to your version control system. The Hugo build will fail if there is a checksum mismatch, which would be an indication of [dependency tampering](https://julienrenaux.fr/2019/12/20/github-actions-security-risk/).
@z

@x
## Web application security
@y
## Web application security
@z

@x
These are the security threats as defined by [OWASP](https://en.wikipedia.org/wiki/OWASP).
@y
These are the security threats as defined by [OWASP](https://en.wikipedia.org/wiki/OWASP).
@z

@x
For HTML output, this is the core security model:
@y
For HTML output, this is the core security model:
@z

@x
<https://pkg.go.dev/html/template#hdr-Security_Model>
@y
<https://pkg.go.dev/html/template#hdr-Security_Model>
@z

@x
In short:
@y
In short:
@z

@x
Template and configuration authors (you) are trusted, but the data you send in is not.
This is why you sometimes need to use the _safe_ functions, such as `safeHTML`, to avoid escaping of data you know is safe.
There is one exception to the above, as noted in the documentation: If you enable inline shortcodes, you also say that the shortcodes and data handling in content files are trusted, as those macros are treated as pure text.
It may be worth adding that Hugo is a static site generator with no concept of dynamic user input.
@y
Template and configuration authors (you) are trusted, but the data you send in is not.
This is why you sometimes need to use the _safe_ functions, such as `safeHTML`, to avoid escaping of data you know is safe.
There is one exception to the above, as noted in the documentation: If you enable inline shortcodes, you also say that the shortcodes and data handling in content files are trusted, as those macros are treated as pure text.
It may be worth adding that Hugo is a static site generator with no concept of dynamic user input.
@z

@x
For content, the default Markdown renderer is [configured](/getting-started/configuration-markup) to remove or escape potentially unsafe content. This behavior can be reconfigured if you trust your content.
@y
For content, the default Markdown renderer is [configured](/getting-started/configuration-markup) to remove or escape potentially unsafe content. This behavior can be reconfigured if you trust your content.
@z
