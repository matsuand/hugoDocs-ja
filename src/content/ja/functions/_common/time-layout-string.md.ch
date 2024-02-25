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
Format a `time.Time` value based on [Go's reference time]:
@y
Format a `time.Time` value based on [Go's reference time]:
@z

@x
[Go's reference time]: https://pkg.go.dev/time#pkg-constants
@y
[Go's reference time]: https://pkg.go.dev/time#pkg-constants
@z

@x
```text
Mon Jan 2 15:04:05 MST 2006
```
@y
```text
Mon Jan 2 15:04:05 MST 2006
```
@z

@x
Create a layout string using these components:
@y
Create a layout string using these components:
@z

@x
Description|Valid components
:--|:--
Year|`"2006" "06"`
Month|`"Jan" "January" "01" "1"`
Day of the week|`"Mon" "Monday"`
Day of the month|`"2" "_2" "02"`
Day of the year|`"__2" "002"`
Hour|`"15" "3" "03"`
Minute|`"4" "04"`
Second|`"5" "05"`
AM/PM mark|`"PM"`
Time zone offsets|`"-0700" "-07:00" "-07" "-070000" "-07:00:00"`
@y
Description|Valid components
:--|:--
Year|`"2006" "06"`
Month|`"Jan" "January" "01" "1"`
Day of the week|`"Mon" "Monday"`
Day of the month|`"2" "_2" "02"`
Day of the year|`"__2" "002"`
Hour|`"15" "3" "03"`
Minute|`"4" "04"`
Second|`"5" "05"`
AM/PM mark|`"PM"`
Time zone offsets|`"-0700" "-07:00" "-07" "-070000" "-07:00:00"`
@z

@x
Replace the sign in the layout string with a Z to print Z instead of an offset for the UTC zone.
@y
Replace the sign in the layout string with a Z to print Z instead of an offset for the UTC zone.
@z

@x
Description|Valid components
:--|:--
Time zone offsets|`"Z0700" "Z07:00" "Z07" "Z070000" "Z07:00:00"`
@y
Description|Valid components
:--|:--
Time zone offsets|`"Z0700" "Z07:00" "Z07" "Z070000" "Z07:00:00"`
@z

@x
```go-html-template
{{ $t := "2023-01-27T23:44:58-08:00" }}
{{ $t = time.AsTime $t }}
{{ $t = $t.Format "Jan 02, 2006 3:04 PM Z07:00" }}
@y
```go-html-template
{{ $t := "2023-01-27T23:44:58-08:00" }}
{{ $t = time.AsTime $t }}
{{ $t = $t.Format "Jan 02, 2006 3:04 PM Z07:00" }}
@z

@x
{{ $t }} → Jan 27, 2023 11:44 PM -08:00 
```
@y
{{ $t }} → Jan 27, 2023 11:44 PM -08:00 
```
@z

@x
Strings such as `PST` and `CET` are not time zones. They are time zone _abbreviations_.
@y
Strings such as `PST` and `CET` are not time zones. They are time zone _abbreviations_.
@z

@x
Strings such as `-07:00` and `+01:00` are not time zones. They are time zone _offsets_.
@y
Strings such as `-07:00` and `+01:00` are not time zones. They are time zone _offsets_.
@z

@x
A time zone is a geographic area with the same local time. For example, the time zone abbreviated by `PST` and `PDT` (depending on Daylight Savings Time) is `America/Los_Angeles`.
@y
A time zone is a geographic area with the same local time. For example, the time zone abbreviated by `PST` and `PDT` (depending on Daylight Savings Time) is `America/Los_Angeles`.
@z
