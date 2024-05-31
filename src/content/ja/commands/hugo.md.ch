%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: "hugo"
slug: hugo
url: /commands/hugo/
@y
title: "hugo"
slug: hugo
url: /commands/hugo/
@z

@x
## hugo
@y
## hugo
@z

@x
hugo builds your site
@y
hugo はサイトを生成します。
@z

@x
### Synopsis
@y
### 概要 {#synopsis}
@z

@x
hugo is the main command, used to build your Hugo site.
@y
hugo is the main command, used to build your Hugo site.
@z

@x
Hugo is a Fast and Flexible Static Site Generator
built with love by spf13 and friends in Go.
@y
Hugo is a Fast and Flexible Static Site Generator
built with love by spf13 and friends in Go.
@z

@x
Complete documentation is available at https://gohugo.io/.
@y
Complete documentation is available at https://gohugo.io/.
@z

@x
```
hugo [flags]
```
@y
```
hugo [flags]
```
@z

@x
### Options
@y
### オプション {#options}
@z

@x
  -b, --baseURL string             hostname (and path) to the root, e.g. https://spf13.com/
  -D, --buildDrafts                include content marked as draft
  -E, --buildExpired               include expired content
  -F, --buildFuture                include content with publishdate in the future
      --cacheDir string            filesystem path to cache directory
      --cleanDestinationDir        remove files from destination not found in static directories
      --clock string               set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
      --config string              config file (default is hugo.yaml|json|toml)
      --configDir string           config dir (default "config")
@y
  -b, --baseURL string             hostname (and path) to the root, e.g. https://spf13.com/
  -D, --buildDrafts                include content marked as draft
  -E, --buildExpired               include expired content
  -F, --buildFuture                include content with publishdate in the future
      --cacheDir string            filesystem path to cache directory
      --cleanDestinationDir        remove files from destination not found in static directories
      --clock string               set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
      --config string              config file (default is hugo.yaml|json|toml)
      --configDir string           config dir (default "config")
@z

@x
  -c, --contentDir string          filesystem path to content directory
      --debug                      debug output
  -d, --destination string         filesystem path to write files to
      --disableKinds strings       disable different kind of pages (home, RSS etc.)
      --enableGitInfo              add Git revision, date, author, and CODEOWNERS info to the pages
  -e, --environment string         build environment
      --forceSyncStatic            copy all files when static is changed.
      --gc                         enable to run some cleanup tasks (remove unused cache files) after the build
@y
  -c, --contentDir string          filesystem path to content directory
      --debug                      debug output
  -d, --destination string         filesystem path to write files to
      --disableKinds strings       disable different kind of pages (home, RSS etc.)
      --enableGitInfo              add Git revision, date, author, and CODEOWNERS info to the pages
  -e, --environment string         build environment
      --forceSyncStatic            copy all files when static is changed.
      --gc                         enable to run some cleanup tasks (remove unused cache files) after the build
@z

@x
  -h, --help                       help for hugo
      --ignoreCache                ignores the cache directory
      --ignoreVendorPaths string   ignores any _vendor for module paths matching the given Glob pattern
@y
  -h, --help                       help for hugo
      --ignoreCache                ignores the cache directory
      --ignoreVendorPaths string   ignores any _vendor for module paths matching the given Glob pattern
@z

@x
  -l, --layoutDir string           filesystem path to layout directory
      --logLevel string            log level (debug|info|warn|error)
      --minify                     minify any supported output format (HTML, XML etc.)
      --noBuildLock                don't create .hugo_build.lock file
      --noChmod                    don't sync permission mode of files
      --noTimes                    don't sync modification time of files
      --panicOnWarning             panic on first WARNING log
      --poll string                set this to a poll interval, e.g --poll 700ms, to use a poll based approach to watch for file system changes
      --printI18nWarnings          print missing translations
      --printMemoryUsage           print memory usage to screen at intervals
      --printPathWarnings          print warnings on duplicate target paths etc.
      --printUnusedTemplates       print warnings on unused templates.
      --quiet                      build in quiet mode
      --renderSegments strings     named segments to render (configured in the segments config)
@y
  -l, --layoutDir string           filesystem path to layout directory
      --logLevel string            log level (debug|info|warn|error)
      --minify                     minify any supported output format (HTML, XML etc.)
      --noBuildLock                don't create .hugo_build.lock file
      --noChmod                    don't sync permission mode of files
      --noTimes                    don't sync modification time of files
      --panicOnWarning             panic on first WARNING log
      --poll string                set this to a poll interval, e.g --poll 700ms, to use a poll based approach to watch for file system changes
      --printI18nWarnings          print missing translations
      --printMemoryUsage           print memory usage to screen at intervals
      --printPathWarnings          print warnings on duplicate target paths etc.
      --printUnusedTemplates       print warnings on unused templates.
      --quiet                      build in quiet mode
      --renderSegments strings     named segments to render (configured in the segments config)
@z

@x
  -s, --source string              filesystem path to read files relative from
      --templateMetrics            display metrics about template executions
      --templateMetricsHints       calculate some improvement hints when combined with --templateMetrics
  -t, --theme strings              themes to use (located in /themes/THEMENAME/)
      --themesDir string           filesystem path to themes directory
      --trace file                 write trace to file (not useful in general)
  -v, --verbose                    verbose output
  -w, --watch                      watch filesystem for changes and recreate as needed
@y
  -s, --source string              filesystem path to read files relative from
      --templateMetrics            display metrics about template executions
      --templateMetricsHints       calculate some improvement hints when combined with --templateMetrics
  -t, --theme strings              themes to use (located in /themes/THEMENAME/)
      --themesDir string           filesystem path to themes directory
      --trace file                 write trace to file (not useful in general)
  -v, --verbose                    verbose output
  -w, --watch                      watch filesystem for changes and recreate as needed
@z

@x
### SEE ALSO
@y
### 関連コマンド {#see-also}
@z

@x
* [hugo completion](/commands/hugo_completion/)	 - Generate the autocompletion script for the specified shell
* [hugo config](/commands/hugo_config/)	 - Print the site configuration
* [hugo convert](/commands/hugo_convert/)	 - Convert your content to different formats
* [hugo deploy](/commands/hugo_deploy/)	 - Deploy your site to a Cloud provider.
* [hugo env](/commands/hugo_env/)	 - Print Hugo version and environment info
* [hugo gen](/commands/hugo_gen/)	 - A collection of several useful generators.
* [hugo import](/commands/hugo_import/)	 - Import your site from others.
* [hugo list](/commands/hugo_list/)	 - Listing out various types of content
* [hugo mod](/commands/hugo_mod/)	 - Various Hugo Modules helpers.
* [hugo new](/commands/hugo_new/)	 - Create new content for your site
* [hugo server](/commands/hugo_server/)	 - A high performance webserver
* [hugo version](/commands/hugo_version/)	 - Print Hugo version and environment info
@y
* [hugo completion](/commands/hugo_completion/)	 - Generate the autocompletion script for the specified shell
* [hugo config](/commands/hugo_config/)	 - Print the site configuration
* [hugo convert](/commands/hugo_convert/)	 - Convert your content to different formats
* [hugo deploy](/commands/hugo_deploy/)	 - Deploy your site to a Cloud provider.
* [hugo env](/commands/hugo_env/)	 - Print Hugo version and environment info
* [hugo gen](/commands/hugo_gen/)	 - A collection of several useful generators.
* [hugo import](/commands/hugo_import/)	 - 他よりサイトにインポートします。
* [hugo list](/commands/hugo_list/)	 - さまざまなタイプのコンテントを一覧表示します。
* [hugo mod](/commands/hugo_mod/)	 - さまざまな Hugo モジュールヘルパー。
* [hugo new](/commands/hugo_new/)	 - サイト向けのコンテントを新規生成します。
* [hugo server](/commands/hugo_server/)	 - 高性能のウェブサーバー。
* [hugo version](/commands/hugo_version/)	 - Print Hugo version and environment info
@z
