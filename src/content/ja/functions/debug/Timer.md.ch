%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: debug.Timer
description: Creates a named timer that reports elapsed time to the console.
categories: []
keywords: []
@y
title: debug.Timer
description: 名前づけしたタイマーを起動して経過時間をコンソールに出力します。
categories: []
keywords: []
@z

@x
{{< new-in 0.120.0 >}}
@y
{{< new-in 0.120.0 >}}
@z

@x
Use the `debug.Timer` function to determine execution time for a block of code, useful for finding performance bottle necks in templates.
@y
`debug.Timer` 関数を利用すると、コードブロックの実行時間を確認することができます。
テンプレート内のボトルネックを検出する際に有用です。
@z

@x
The timer starts when you instantiate it, and stops when you call its `Stop` method.
@y
タイマーは初期化した時から起動し、`Stop` メソッドの呼び出しによって停止します。
@z

% snip code...

@x
Use the `--logLevel info` command line flag when you build the site.
@y
サイトのビルド時には `--logLevel info` コマンドを使うことができます。
@z

% snip command...

@x
The results are displayed in the console at the end of the build. You can have as many timers as you want and if you don't stop them, they will be stopped at the end of build.
@y
ビルドが終了すると、コンソール上に結果が出力されます。
必要ならいくつでもタイマーを起動させることができます。
タイマーを停止しなかった場合でも、ビルドが終了すれば停止します。
@z

% snip text...
