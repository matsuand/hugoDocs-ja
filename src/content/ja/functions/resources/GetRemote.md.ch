%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: resources.GetRemote
description: Returns a remote resource from the given URL, or nil if none found.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/data/GetCSV
    - functions/data/GetJSON
    - functions/resources/ByType
    - functions/resources/Get
    - functions/resources/GetMatch
    - functions/resources/Match
    - methods/page/Resources
  returnType: resource.Resource
  signatures: ['resources.GetRemote URL [OPTIONS]']
toc: true
---
@y
---
title: resources.GetRemote
description: Returns a remote resource from the given URL, or nil if none found.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/data/GetCSV
    - functions/data/GetJSON
    - functions/resources/ByType
    - functions/resources/Get
    - functions/resources/GetMatch
    - functions/resources/Match
    - methods/page/Resources
  returnType: resource.Resource
  signatures: ['resources.GetRemote URL [OPTIONS]']
toc: true
---
@z

% snip code...

@x
## Options
@y
## Options
@z

@x
The `resources.GetRemote` function takes an optional map of options.
@y
The `resources.GetRemote` function takes an optional map of options.
@z

% snip code...

@x
If you need multiple values for the same header key, use a slice:
@y
If you need multiple values for the same header key, use a slice:
@z

% snip code...

@x
You can also change the request method and set the request body:
@y
You can also change the request method and set the request body:
@z

% snip code...

@x
## Remote data
@y
## Remote data
@z

@x
When retrieving remote data, use the [`transform.Unmarshal`] function to [unmarshal] the response.
@y
When retrieving remote data, use the [`transform.Unmarshal`] function to [unmarshal] the response.
@z

% snip links...

% snip code...

@x
## Error handling
@y
## Error handling
@z

@x
The [`Err`] method on a resource returned by the `resources.GetRemote` function returns an error message if the HTTP request fails, else nil. If you do not handle the error yourself, Hugo will fail the build.
@y
The [`Err`] method on a resource returned by the `resources.GetRemote` function returns an error message if the HTTP request fails, else nil. If you do not handle the error yourself, Hugo will fail the build.
@z

% snip link...

% snip code...

@x
To log an error as a warning instead of an error:
@y
To log an error as a warning instead of an error:
@z

% snip code...

@x
## HTTP response
@y
## HTTP response
@z

@x
The [`Data`] method on a resource returned by the `resources.GetRemote` function returns information from the HTTP response.
@y
The [`Data`] method on a resource returned by the `resources.GetRemote` function returns information from the HTTP response.
@z

% snip link...

% snip code...

@x
ContentLength
: (`int`) The content length in bytes.
@y
ContentLength
: (`int`) The content length in bytes.
@z

@x
ContentType
: (`string`) The content type.
@y
ContentType
: (`string`) The content type.
@z

@x
Status
: (`string`) The HTTP status text.
@y
Status
: (`string`) The HTTP status text.
@z

@x
StatusCode
: (`int`) The HTTP status code.
@y
StatusCode
: (`int`) The HTTP status code.
@z

@x
TransferEncoding
: (`string`) The transfer encoding.
@y
TransferEncoding
: (`string`) The transfer encoding.
@z

@x
## Caching
@y
## Caching
@z

@x
Resources returned from `resources.GetRemote` are cached to disk. See [configure file caches] for details.
@y
Resources returned from `resources.GetRemote` are cached to disk. See [configure file caches] for details.
@z

@x
By default, Hugo derives the cache key from the arguments passed to the function, the URL and the options map, if any.
@y
By default, Hugo derives the cache key from the arguments passed to the function, the URL and the options map, if any.
@z

@x
Override the cache key by setting a `key` in the options map. Use this approach to have more control over how often Hugo fetches a remote resource.
@y
Override the cache key by setting a `key` in the options map. Use this approach to have more control over how often Hugo fetches a remote resource.
@z

% snip code...

% snip link...

@x
## Security
@y
## Security
@z

@x
To protect against malicious intent, the `resources.GetRemote` function inspects the server response including:
@y
To protect against malicious intent, the `resources.GetRemote` function inspects the server response including:
@z

@x
- The [Content-Type] in the response header
- The file extension, if any
- The content itself
@y
- The [Content-Type] in the response header
- The file extension, if any
- The content itself
@z

@x
If Hugo is unable to resolve the media type to an entry in its [allowlist], the function throws an error:
@y
If Hugo is unable to resolve the media type to an entry in its [allowlist], the function throws an error:
@z

@x
```text
ERROR error calling resources.GetRemote: failed to resolve media type...
```
@y
```text
ERROR error calling resources.GetRemote: failed to resolve media type...
```
@z

@x
For example, you will see the error above if you attempt to download an executable.
@y
For example, you will see the error above if you attempt to download an executable.
@z

@x
Although the allowlist contains entries for common media types, you may encounter situations where Hugo is unable to resolve the media type of a file that you know to be safe. In these situations, edit your site configuration to add the media type to the allowlist. For example:
@y
Although the allowlist contains entries for common media types, you may encounter situations where Hugo is unable to resolve the media type of a file that you know to be safe. In these situations, edit your site configuration to add the media type to the allowlist. For example:
@z

% snip code...

@x
Note that the entry above is:
@y
Note that the entry above is:
@z

@x
- An _addition_ to the allowlist; it does not _replace_ the allowlist
- An array of regular expressions
@y
- An _addition_ to the allowlist; it does not _replace_ the allowlist
- An array of regular expressions
@z

@x
For example, to add two entries to the allowlist:
@y
For example, to add two entries to the allowlist:
@z

% snip code...

% snip link...
