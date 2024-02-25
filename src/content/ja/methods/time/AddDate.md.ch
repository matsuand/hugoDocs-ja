%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: AddDate
description: Returns the time corresponding to adding the given number of years, months, and days to the given time.Time value.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: time.Time
  signatures: [TIME.AddDate YEARS MONTHS DAYS]
aliases: [/functions/adddate]
---
@y
---
title: AddDate
description: Returns the time corresponding to adding the given number of years, months, and days to the given time.Time value.
categories: []
keywords: []
action:
  aliases: []
  related: []
  returnType: time.Time
  signatures: [TIME.AddDate YEARS MONTHS DAYS]
aliases: [/functions/adddate]
---
@z

@x
```go-html-template
{{ $d := "2022-01-01" | time.AsTime }}
@y
```go-html-template
{{ $d := "2022-01-01" | time.AsTime }}
@z

@x
{{ $d.AddDate 0 0 1 | time.Format "2006-01-02" }} → 2022-01-02
{{ $d.AddDate 0 1 1 | time.Format "2006-01-02" }} → 2022-02-02
{{ $d.AddDate 1 1 1 | time.Format "2006-01-02" }} → 2023-02-02
@y
{{ $d.AddDate 0 0 1 | time.Format "2006-01-02" }} → 2022-01-02
{{ $d.AddDate 0 1 1 | time.Format "2006-01-02" }} → 2022-02-02
{{ $d.AddDate 1 1 1 | time.Format "2006-01-02" }} → 2023-02-02
@z

@x
{{ $d.AddDate -1 -1 -1 | time.Format "2006-01-02" }} → 2020-11-30
```
@y
{{ $d.AddDate -1 -1 -1 | time.Format "2006-01-02" }} → 2020-11-30
```
@z

@x
{{% note %}}
When adding months or years, Hugo normalizes the final `time.Time` value if the resulting day does not exist. For example, adding one month to 31 January produces 2 March or 3 March, depending on the year.
@y
{{% note %}}
When adding months or years, Hugo normalizes the final `time.Time` value if the resulting day does not exist. For example, adding one month to 31 January produces 2 March or 3 March, depending on the year.
@z

@x
See [this explanation](https://github.com/golang/go/issues/31145#issuecomment-479067967) from the Go team.
{{% /note %}}
@y
See [this explanation](https://github.com/golang/go/issues/31145#issuecomment-479067967) from the Go team.
{{% /note %}}
@z

@x
```go-html-template
{{ $d := "2023-01-31" | time.AsTime }}
{{ $d.AddDate 0 1 0 | time.Format "2006-01-02" }} → 2023-03-03
@y
```go-html-template
{{ $d := "2023-01-31" | time.AsTime }}
{{ $d.AddDate 0 1 0 | time.Format "2006-01-02" }} → 2023-03-03
@z

@x
{{ $d := "2024-01-31" | time.AsTime }}
{{ $d.AddDate 0 1 0 | time.Format "2006-01-02" }} → 2024-03-02
@y
{{ $d := "2024-01-31" | time.AsTime }}
{{ $d.AddDate 0 1 0 | time.Format "2006-01-02" }} → 2024-03-02
@z

@x
{{ $d := "2024-02-29" | time.AsTime }}
{{ $d.AddDate 1 0 0 | time.Format "2006-01-02" }} → 2025-03-01
```
@y
{{ $d := "2024-02-29" | time.AsTime }}
{{ $d.AddDate 1 0 0 | time.Format "2006-01-02" }} → 2025-03-01
```
@z
