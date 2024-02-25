%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
# Do not remove front matter.
---
@y
---
# Do not remove front matter.
---
@z

@x
When specifying the regular expression, use a raw [string literal] (backticks) instead of an interpreted string literal (double quotes) to simplify the syntax. With an interpreted string literal you must escape backslashes.
@y
正規表現を指定する際には、"解釈される" (interpreted) [文字列リテラル][string literal] (ダブルクォートで囲む) ではなく、そのままの文字列リテラル (バッククォートで囲む) を用いることで、文法を簡易なものにしてください。
"解釈される" 文字列リテラルを用いる場合、バックスラッシュそのものはエスケープする必要があります。
@z

@x
Go's regular expression package implements the [RE2 syntax]. The RE2 syntax is a subset of that accepted by [PCRE], roughly speaking, and with various [caveats]. Note that the RE2 `\C` escape sequence is not supported.
@y
Go 言語の正規表現パッケージでは [RE2 文法][RE2 syntax] を実装しています。
RE2 文法とは、おおざっぱに言えば [PCRE] が許容する文法のサブセットであり、さまざまな [注意事項][caveats] があります。
なお RE2 のエスケープシーケンス `\C` はサポートされません。
@z

@x
[caveats]: https://swtch.com/~rsc/regexp/regexp3.html#caveats
[PCRE]: https://www.pcre.org/
[RE2 syntax]: https://github.com/google/re2/wiki/Syntax/
[string literal]: https://go.dev/ref/spec#String_literals
@y
[caveats]: https://swtch.com/~rsc/regexp/regexp3.html#caveats
[PCRE]: https://www.pcre.org/
[RE2 syntax]: https://github.com/google/re2/wiki/Syntax/
[string literal]: https://go.dev/ref/spec#String_literals
@z
