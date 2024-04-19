%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

% snip 対応

@x
title: Round
description: Returns the result of rounding TIME to the nearest multiple of DURATION since January 1, 0001, 00:00:00 UTC.
categories: []
keywords: []
@y
title: Round
description: Returns the result of rounding TIME to the nearest multiple of DURATION since January 1, 0001, 00:00:00 UTC.
categories: []
keywords: []
@z

@x
The rounding behavior for halfway values is to round up.
@y
The rounding behavior for halfway values is to round up.
@z

@x
The `Round` method operates on TIME as an absolute duration since the [zero time]; it does not operate on the presentation form of the time. If DURATION is a multiple of one hour, `Round` may return a time with a non-zero minute, depending on the time zone.
@y
The `Round` method operates on TIME as an absolute duration since the [zero time]; it does not operate on the presentation form of the time. If DURATION is a multiple of one hour, `Round` may return a time with a non-zero minute, depending on the time zone.
@z

% snip code...
% snip link...
