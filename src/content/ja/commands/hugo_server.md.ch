%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: "hugo server"
slug: hugo_server
url: /commands/hugo_server/
@y
title: "hugo server"
slug: hugo_server
url: /commands/hugo_server/
@z

@x
## hugo server
@y
## hugo server
@z

@x
A high performance webserver
@y
高性能のウェブサーバー。
@z

@x
### Synopsis
@y
### 概要 {#synopsis}
@z

@x
Hugo provides its own webserver which builds and serves the site.
While hugo server is high performance, it is a webserver with limited options.
@y
Hugo provides its own webserver which builds and serves the site.
While hugo server is high performance, it is a webserver with limited options.
@z

@x
'hugo server' will by default write and server files from disk, but you can
render to memory by using the '--renderToMemory' flag. This can be faster
in some cases, but it will consume more memory.
@y
'hugo server' will by default write and server files from disk, but you can
render to memory by using the '--renderToMemory' flag. This can be faster
in some cases, but it will consume more memory.
@z

@x
By default hugo will also watch your files for any changes you make and
automatically rebuild the site. It will then live reload any open browser pages
and push the latest content to them. As most Hugo sites are built in a fraction
of a second, you will be able to save and see your changes nearly instantly.
@y
By default hugo will also watch your files for any changes you make and
automatically rebuild the site. It will then live reload any open browser pages
and push the latest content to them. As most Hugo sites are built in a fraction
of a second, you will be able to save and see your changes nearly instantly.
@z

@x
```
hugo server [command] [flags]
```
@y
```
hugo server [command] [flags]
```
@z

@x
### Options
@y
### オプション {#options}
@z

@x
      --appendPort             append port to baseURL (default true)
  -b, --baseURL string         hostname (and path) to the root, e.g. https://spf13.com/
      --bind string            interface to which the server will bind (default "127.0.0.1")
  -D, --buildDrafts            include content marked as draft
  -E, --buildExpired           include expired content
  -F, --buildFuture            include content with publishdate in the future
      --cacheDir string        filesystem path to cache directory
      --cleanDestinationDir    remove files from destination not found in static directories
  -c, --contentDir string      filesystem path to content directory
      --disableBrowserError    do not show build errors in the browser
      --disableFastRender      enables full re-renders on changes
      --disableKinds strings   disable different kind of pages (home, RSS etc.)
      --disableLiveReload      watch without enabling live browser reload on rebuild
      --enableGitInfo          add Git revision, date, author, and CODEOWNERS info to the pages
      --forceSyncStatic        copy all files when static is changed.
      --gc                     enable to run some cleanup tasks (remove unused cache files) after the build
  -h, --help                   help for server
      --ignoreCache            ignores the cache directory
  -l, --layoutDir string       filesystem path to layout directory
      --liveReloadPort int     port for live reloading (i.e. 443 in HTTPS proxy situations) (default -1)
      --minify                 minify any supported output format (HTML, XML etc.)
      --navigateToChanged      navigate to changed content file on live browser reload
      --noBuildLock            don't create .hugo_build.lock file
      --noChmod                don't sync permission mode of files
      --noHTTPCache            prevent HTTP caching
      --noTimes                don't sync modification time of files
      --panicOnWarning         panic on first WARNING log
      --poll string            set this to a poll interval, e.g --poll 700ms, to use a poll based approach to watch for file system changes
  -p, --port int               port on which the server will listen (default 1313)
      --pprof                  enable the pprof server (port 8080)
      --printI18nWarnings      print missing translations
      --printMemoryUsage       print memory usage to screen at intervals
      --printPathWarnings      print warnings on duplicate target paths etc.
      --printUnusedTemplates   print warnings on unused templates.
      --renderStaticToDisk     serve static files from disk and dynamic files from memory
      --templateMetrics        display metrics about template executions
      --templateMetricsHints   calculate some improvement hints when combined with --templateMetrics
  -t, --theme strings          themes to use (located in /themes/THEMENAME/)
      --tlsAuto                generate and use locally-trusted certificates.
      --tlsCertFile string     path to TLS certificate file
      --tlsKeyFile string      path to TLS key file
      --trace file             write trace to file (not useful in general)
  -w, --watch                  watch filesystem for changes and recreate as needed (default true)
@y
      --appendPort             append port to baseURL (default true)
  -b, --baseURL string         hostname (and path) to the root, e.g. https://spf13.com/
      --bind string            interface to which the server will bind (default "127.0.0.1")
  -D, --buildDrafts            include content marked as draft
  -E, --buildExpired           include expired content
  -F, --buildFuture            include content with publishdate in the future
      --cacheDir string        filesystem path to cache directory
      --cleanDestinationDir    remove files from destination not found in static directories
  -c, --contentDir string      filesystem path to content directory
      --disableBrowserError    do not show build errors in the browser
      --disableFastRender      enables full re-renders on changes
      --disableKinds strings   disable different kind of pages (home, RSS etc.)
      --disableLiveReload      watch without enabling live browser reload on rebuild
      --enableGitInfo          add Git revision, date, author, and CODEOWNERS info to the pages
      --forceSyncStatic        copy all files when static is changed.
      --gc                     enable to run some cleanup tasks (remove unused cache files) after the build
  -h, --help                   help for server
      --ignoreCache            ignores the cache directory
  -l, --layoutDir string       filesystem path to layout directory
      --liveReloadPort int     port for live reloading (i.e. 443 in HTTPS proxy situations) (default -1)
      --minify                 minify any supported output format (HTML, XML etc.)
      --navigateToChanged      navigate to changed content file on live browser reload
      --noBuildLock            don't create .hugo_build.lock file
      --noChmod                don't sync permission mode of files
      --noHTTPCache            prevent HTTP caching
      --noTimes                don't sync modification time of files
      --panicOnWarning         panic on first WARNING log
      --poll string            set this to a poll interval, e.g --poll 700ms, to use a poll based approach to watch for file system changes
  -p, --port int               port on which the server will listen (default 1313)
      --pprof                  enable the pprof server (port 8080)
      --printI18nWarnings      print missing translations
      --printMemoryUsage       print memory usage to screen at intervals
      --printPathWarnings      print warnings on duplicate target paths etc.
      --printUnusedTemplates   print warnings on unused templates.
      --renderStaticToDisk     serve static files from disk and dynamic files from memory
      --templateMetrics        display metrics about template executions
      --templateMetricsHints   calculate some improvement hints when combined with --templateMetrics
  -t, --theme strings          themes to use (located in /themes/THEMENAME/)
      --tlsAuto                generate and use locally-trusted certificates.
      --tlsCertFile string     path to TLS certificate file
      --tlsKeyFile string      path to TLS key file
      --trace file             write trace to file (not useful in general)
  -w, --watch                  watch filesystem for changes and recreate as needed (default true)
@z

@x
### Options inherited from parent commands
@y
### 上位コマンドから継承するオプション {#options-inherited-from-parent-commands}
@z

@x
      --clock string               set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
@y
      --clock string               Hugo が用いる日時を指定します。--clock 2021-11-06T22:30:00.00+09:00
@x
      --config string              config file (default is hugo.yaml|json|toml)
@y
      --config string              設定ファイルを指定します。 (デフォルトは hugo.yaml|json|toml)
@z
@x
      --configDir string           config dir (default "config")
@y
      --configDir string           設定ディレクトリを指定します。 (デフォルトは "config")
@z
@x
      --debug                      debug output
@y
      --debug                      デバッグ出力を行います。
@z
@x
  -d, --destination string         filesystem path to write files to
@y
  -d, --destination string         ファイル出力を行うパスを指定します。
@z
@x
  -e, --environment string         build environment
@y
  -e, --environment string         ビルド環境を指定します。
@z
@x
      --ignoreVendorPaths string   ignores any _vendor for module paths matching the given Glob pattern
@y
      --ignoreVendorPaths string   指定 Glob パターンにマッチするモジュールパスを _vendor として無視します。
@z
@x
      --logLevel string            log level (debug|info|warn|error)
@y
      --logLevel string            ログレベルを指定します。 (debug|info|warn|error)
@z
@x
      --quiet                      build in quiet mode
@y
      --quiet                      出力抑制モード (quite mode) によりビルドを行います。
@z
@x
      --renderToMemory             render to memory (mostly useful when running the server)
@y
      --renderToMemory             メモリーにレンダーします。 (サーバー起動時に有用)
@z
@x
  -s, --source string              filesystem path to read files relative from
@y
  -s, --source string              ファイル入力元を相対パスで指定します。
@z
@x
      --themesDir string           filesystem path to themes directory
@y
      --themesDir string           テーマディレクトリのパスを指定します。
@z
@x
  -v, --verbose                    verbose output
@y
  -v, --verbose                    詳細出力を行います。
@z

@x
### SEE ALSO
@y
### 関連コマンド {#see-also}
@z

@x
* [hugo](/commands/hugo/)	 - hugo builds your site
* [hugo server trust](/commands/hugo_server_trust/)	 - Install the local CA in the system trust store.
@y
* [hugo](/commands/hugo/)	 - サイトの構築
* [hugo server trust](/commands/hugo_server_trust/)	 - Install the local CA in the system trust store.
@z
