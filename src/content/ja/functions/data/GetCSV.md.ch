%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
title: data.GetCSV
description: Returns an array of arrays from a local or remote CSV file, or an error if the file does not exist.
categories: []
keywords: []
@y
title: data.GetCSV
description: Returns an array of arrays from a local or remote CSV file, or an error if the file does not exist.
categories: []
keywords: []
@z

@x
{{% deprecated-in 0.123.0 %}}
Instead, use [`transform.Unmarshal`] with a [global], [page], or [remote] resource.
@y
{{% deprecated-in 0.123.0 %}}
Instead, use [`transform.Unmarshal`] with a [global], [page], or [remote] resource.
@z

@x
See the [remote data example].
@y
See the [remote data example].
@z

% snip links...

@x
Given the following directory structure:
@y
Given the following directory structure:
@z

@x
```text
my-project/
└── other-files/
    └── pets.csv
```
@y
```text
my-project/
└── other-files/
    └── pets.csv
```
@z

@x
Access the data with either of the following:
@y
Access the data with either of the following:
@z

% snip code...

@x
{{% note %}}
When working with local data, the filepath is relative to the working directory.
@y
{{% note %}}
When working with local data, the filepath is relative to the working directory.
@z

@x
You must not place CSV files in the project's data directory.
{{% /note %}}
@y
You must not place CSV files in the project's data directory.
{{% /note %}}
@z

@x
Access remote data with either of the following:
@y
Access remote data with either of the following:
@z

% snip code...

@x
The resulting data structure is an array of arrays:
@y
The resulting data structure is an array of arrays:
@z

% snip code...

@x
## Options
@y
## Options
@z

@x
Add headers to the request by providing an options map:
@y
Add headers to the request by providing an options map:
@z

% snip code...

@x
Add multiple headers using a slice:
@y
Add multiple headers using a slice:
@z

% snip code...

@x
## Global resource alternative
@y
## Global resource alternative
@z

@x
Consider using the [`resources.Get`] function with [`transform.Unmarshal`] when accessing a global resource.
@y
Consider using the [`resources.Get`] function with [`transform.Unmarshal`] when accessing a global resource.
@z

@x
```text
my-project/
└── assets/
    └── data/
        └── pets.csv
```
@y
```text
my-project/
└── assets/
    └── data/
        └── pets.csv
```
@z

% snip code...

@x
## Page resource alternative
@y
## Page resource alternative
@z

@x
Consider using the [`Resources.Get`] method with [`transform.Unmarshal`] when accessing a page resource.
@y
Consider using the [`Resources.Get`] method with [`transform.Unmarshal`] when accessing a page resource.
@z

@x
```text
my-project/
└── content/
    └── posts/
        └── my-pets/
            ├── index.md
            └── pets.csv
```
@y
```text
my-project/
└── content/
    └── posts/
        └── my-pets/
            ├── index.md
            └── pets.csv
```
@z

% snip code...

@x
## Remote resource alternative
@y
## Remote resource alternative
@z

@x
Consider using the [`resources.GetRemote`] function with [`transform.Unmarshal`] when accessing a remote resource to improve error handling and cache control.
@y
Consider using the [`resources.GetRemote`] function with [`transform.Unmarshal`] when accessing a remote resource to improve error handling and cache control.
@z

% snip code...

% snip links...
