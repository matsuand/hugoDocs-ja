%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: cast.ToInt
description: Converts a value to a decimal integer (base 10).
keywords: []
@y
title: cast.ToInt
description: 10 進数の整数値 (基底 10) に変換します。
keywords: []
@z

@x
With a decimal (base 10) input:
@y
10 進数 (基底 10) を入力とする場合
@z

% snip code...

@x
With a binary (base 2) input:
@y
バイナリー (基底 2) を入力とする場合
@z

% snip code...

@x
With an octal (base 8) input (use either notation):
@y
8 進数 (基底 8) を入力とする場合 (表記方法は複数あり)
@z

% snip code...

@x
With a hexadecimal (base 16) input:
@y
16 進数 (基底 16) を入力とする場合
@z

% snip code...

@x
{{% note %}}
Values with a leading zero are octal (base 8). When casting a string representation of a decimal (base 10) number, remove leading zeros:

`{{ strings.TrimLeft "0" "0011" | int }} → 11`
{{% /note %}}
@y
{{% note %}}
先頭にゼロをつけた値は 8 進数 (基底 8) となります。
10 進数 (基底 10) の文字列表現をキャストする場合は、先頭のゼロを取り除いてください。

`{{ strings.TrimLeft "0" "0011" | int }} → 11`
{{% /note %}}
@z
