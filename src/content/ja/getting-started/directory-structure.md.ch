%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: Directory structure
description: Each Hugo project is a directory, with subdirectories that contribute to the content, structure, behavior, and presentation of your site.
categories: [getting started,fundamentals]
keywords: [source, organization, directories]
@y
title: ディレクトリ構造
description: Hugo のプロジェクトは一つのディレクトリに収められます。そこにはサブディレクトリがあって、コンテント、ドキュメント構造、ふるまい、ドキュメント表現を実現するものとして構成されます。
categories: [getting started,fundamentals]
keywords: [source, organization, directories]
@z

@x
## Site skeleton
@y
## サイトのスケルトン {#site-skeleton}
@z

@x
Hugo generates a project skeleton when you create a new site. For example, this command:
@y
Hugo において新たなサイトを生成すると、プロジェクトのスケルトンを作り出します。
たとえば以下のコマンドを実行します。
@z

% snip command...

@x
Creates this directory structure:
@y
そうすると以下のディレクトリ構造が生成されます。
@z

@x
└── hugo.toml         <-- site configuration
@y
└── hugo.toml         <-- サイト設定
@z

@x
Depending on requirements, you may wish to organize your site configuration into subdirectories:
@y
必要に応じて、サイト設定はサブディレクトリに置くこともできます。
@z

@x
├── config/           <-- site configuration
@y
├── config/           <-- サイト設定
@z

@x
When you build your site, Hugo creates a `public` directory, and typically a `resources` directory as well:
@y
サイトをビルドすると Hugo は `public` ディレクトリを生成します。
さらに `resources` という文字通りのリソースディレクトリも生成します。
@z

@x
├── public/       <-- created when you build your site
├── resources/    <-- created when you build your site
@y
├── public/       <-- サイトビルド時に生成
├── resources/    <-- サイトビルド時に生成
@z

@x
## Directories
@y
## ディレクトリ {#directories}
@z

@x
Each of the subdirectories contributes to the content, structure, behavior, or presentation of your site.
@y
各サブディレクトリは、コンテント、ドキュメント構造、ふるまい、ドキュメント表現をなすものとして構成されます。
@z

@x
archetypes
: The `archetypes` directory contains templates for new content. See&nbsp;[details](/content-management/archetypes/).
@y
archetypes
: `archetypes`  (アーキタイプ) ディレクトリは、新たに含めるコンテントのテンプレートを含めます。
詳しくは [アーキタイプ](/content-management/archetypes/) を参照してください。
@z

@x
assets
: The `assets` directory contains global resources typically passed through an asset pipeline. This includes resources such as images, CSS, Sass, JavaScript, and TypeScript. See&nbsp;[details](/hugo-pipes/introduction/).
@y
assets
: `assets` ディレクトリは、アセットパイプラインを通じて受け渡されるグローバルリソースを含めます。
そのリソースとは、イメージ、CSS、Sass、Javascript、TypeScrit などです。
詳しくは [Hugo パイプライン](/hugo-pipes/introduction/) を参照してください。
@z

@x
config
: The `config` directory contains your site configuration, possibly split into multiple subdirectories and files. For projects with minimal configuration or projects that do not need to behave differently in different environments, a single configuration file named `hugo.toml` in the root of the project is sufficient. See&nbsp;[details](/getting-started/configuration/#configuration-directory).
@y
config
: `config` ディレクトリは、サイトの設定を含めます。
複数のサブディレクトリ、複数のファイルに分けることも行われます。
環境によって異なる動作を必要とはしない、最小限の設定あるいはプロジェクトである場合は、ただ一つの設定ファイル `hugo.toml` をプロジェクトのルートディレクトリに置くだけで十分です。
詳しくは [設定ディレクトリ](/getting-started/configuration/#configuration-directory) を参照してください。
@z

@x
content
: The `content` directory contains the markup files (typically Markdown) and page resources that comprise the content of your site. See&nbsp;[details](/content-management/organization/).
@y
content
: `content` (コンテント) ディレクトリは、サイト内容を表現するマークアップファイル (一般にはマークダウン)、ページリソースを含めます。
詳しくは [コンテントの構成](/content-management/organization/) を参照してください。
@z

@x
data
: The `data` directory contains data files (JSON, TOML, YAML, or XML) that augment content, configuration, localization, and navigation. See&nbsp;[details](/templates/data-templates/).
@y
data
: The `data` directory contains data files (JSON, TOML, YAML, or XML) that augment content, configuration, localization, and navigation. See&nbsp;[details](/templates/data-templates/).
@z

@x
i18n
: The `i18n` directory contains translation tables for multilingual sites. See&nbsp;[details](/content-management/multilingual/).
@y
i18n
: The `i18n` directory contains translation tables for multilingual sites. See&nbsp;[details](/content-management/multilingual/).
@z

@x
layouts
: The layouts directory contains templates to transform content, data, and resources into a complete website. See&nbsp;[details](/templates/).
@y
layouts
: The layouts directory contains templates to transform content, data, and resources into a complete website. See&nbsp;[details](/templates/).
@z

@x
public
: The `public` directory contains the published website, generated when you run the `hugo` or `hugo server` commands. Hugo recreates this directory and its content as needed. See&nbsp;[details](/getting-started/usage/#build-your-site).
@y
public
: The `public` directory contains the published website, generated when you run the `hugo` or `hugo server` commands. Hugo recreates this directory and its content as needed. See&nbsp;[details](/getting-started/usage/#build-your-site).
@z

@x
resources
: The `resources` directory contains cached output from Hugo's asset pipelines, generated when you run the `hugo` or `hugo server` commands. By default this cache directory includes CSS and images. Hugo recreates this directory and its content as needed.
@y
resources
: The `resources` directory contains cached output from Hugo's asset pipelines, generated when you run the `hugo` or `hugo server` commands. By default this cache directory includes CSS and images. Hugo recreates this directory and its content as needed.
@z

@x
static
: The `static` directory contains files that will be copied to the public directory when you build your site. For example: `favicon.ico`, `robots.txt`, and files that verify site ownership. Before the introduction of [page bundles](/getting-started/glossary/#page-bundle) and [asset pipelines](/hugo-pipes/introduction/), the `static` directory was also used for images, CSS, and JavaScript. See&nbsp;[details](/content-management/static-files/).
@y
static
: The `static` directory contains files that will be copied to the public directory when you build your site. For example: `favicon.ico`, `robots.txt`, and files that verify site ownership. Before the introduction of [page bundles](/getting-started/glossary/#page-bundle) and [asset pipelines](/hugo-pipes/introduction/), the `static` directory was also used for images, CSS, and JavaScript. See&nbsp;[details](/content-management/static-files/).
@z

@x
themes
: The `themes` directory contains one or more [themes](/getting-started/glossary/#theme), each in its own subdirectory.
@y
themes
: The `themes` directory contains one or more [themes](/getting-started/glossary/#theme), each in its own subdirectory.
@z

@x
## Union file system
@y
## Union file system
@z

@x
Hugo creates a union file system, allowing you to mount two or more directories to the same location. For example, let's say your home directory contains a Hugo project in one directory, and shared content in another:
@y
Hugo creates a union file system, allowing you to mount two or more directories to the same location. For example, let's say your home directory contains a Hugo project in one directory, and shared content in another:
@z

@x
You can include the shared content when you build your site using mounts. In your site configuration:
@y
You can include the shared content when you build your site using mounts. In your site configuration:
@z

% snip code...

@x
{{% note %}}
When you overlay one directory on top of another, you must mount both directories.
@y
{{% note %}}
When you overlay one directory on top of another, you must mount both directories.
@z

@x
Hugo does not follow symbolic links. If you need the functionality provided by symbolic links, use Hugo's union file system instead.
{{% /note %}}
@y
Hugo does not follow symbolic links. If you need the functionality provided by symbolic links, use Hugo's union file system instead.
{{% /note %}}
@z

@x
After mounting, the union file system has this structure:
@y
After mounting, the union file system has this structure:
@z

% snip text...

@x
{{% note %}}
When two or more files have the same path, the order of precedence follows the order of the mounts. For example, if the shared content directory contains `books/book-1.md`, it will be ignored because the project's content directory was mounted first.
{{% /note %}}
@y
{{% note %}}
When two or more files have the same path, the order of precedence follows the order of the mounts. For example, if the shared content directory contains `books/book-1.md`, it will be ignored because the project's content directory was mounted first.
{{% /note %}}
@z

@x
You can mount directories to `archetypes`, `assets`, `content`, `data`, `i18n`, `layouts`, and `static`. See&nbsp;[details](/hugo-modules/configuration/#module-configuration-mounts).
@y
You can mount directories to `archetypes`, `assets`, `content`, `data`, `i18n`, `layouts`, and `static`. See&nbsp;[details](/hugo-modules/configuration/#module-configuration-mounts).
@z

@x
You can also mount directories from Git repositories using Hugo Modules. See&nbsp;[details](/hugo-modules/).
@y
You can also mount directories from Git repositories using Hugo Modules. See&nbsp;[details](/hugo-modules/).
@z

@x
## Theme skeleton
@y
## Theme skeleton {#theme-skeleton}
@z

@x
Hugo generates a functional theme skeleton when you create a new theme. For example, this command:
@y
Hugo generates a functional theme skeleton when you create a new theme. For example, this command:
@z

% snip command...

@x
Creates this directory structure (subdirectories not shown):
@y
Creates this directory structure (subdirectories not shown):
@z

% snip text...

@x
Using the union file system described above, Hugo mounts each of these directories to the corresponding location in the project. When two files have the same path, the file in the project directory takes precedence. This allows you, for example, to override a theme's template by placing a copy in the same location within the project directory.
@y
Using the union file system described above, Hugo mounts each of these directories to the corresponding location in the project. When two files have the same path, the file in the project directory takes precedence. This allows you, for example, to override a theme's template by placing a copy in the same location within the project directory.
@z

@x
If you are simultaneously using components from two or more themes or modules, and there's a path collision, the first mount takes precedence.
@y
If you are simultaneously using components from two or more themes or modules, and there's a path collision, the first mount takes precedence.
@z
