%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Hugo Deploy
description: Upload your site to GCS, S3, or Azure
categories: [hosting and deployment]
keywords: [deployment,s3,gcs,azure]
menu:
  docs:
    parent: hosting-and-deployment
    weight: 20
weight: 20
toc: true
---
@y
---
title: Hugo Deploy
description: Upload your site to GCS, S3, or Azure
categories: [hosting and deployment]
keywords: [deployment,s3,gcs,azure]
menu:
  docs:
    parent: hosting-and-deployment
    weight: 20
weight: 20
toc: true
---
@z

@x
You can use the "hugo deploy" command to upload your site directly to a Google Cloud Storage (GCS) bucket, an AWS S3 bucket, and/or an Azure Storage container.
@y
You can use the "hugo deploy" command to upload your site directly to a Google Cloud Storage (GCS) bucket, an AWS S3 bucket, and/or an Azure Storage container.
@z

@x
## Assumptions
@y
## Assumptions
@z

@x
* You have completed the [Quick Start] or have a Hugo website you are ready to deploy and share with the world.
* You have an account with the service provider ([Google Cloud](https://cloud.google.com/), [AWS](https://aws.amazon.com), or [Azure](https://azure.microsoft.com)) that you want to deploy to.
* You have authenticated.
  * Google Cloud: [Install the CLI](https://cloud.google.com/sdk) and run [`gcloud auth login`](https://cloud.google.com/sdk/gcloud/reference/auth/login).
  * AWS: [Install the CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html) and run [`aws configure`](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html).
  * Azure: [Install the CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) and run [`az login`](https://docs.microsoft.com/en-us/cli/azure/authenticate-azure-cli).
  * NOTE: Each service supports alternatives for authentication, including using environment variables. See [here](https://gocloud.dev/howto/blob/#services) for more details.
* You have created a bucket to deploy to. If you want your site to be
  public, be sure to configure the bucket to be publicly readable as a static website.
  * Google Cloud: [create a bucket](https://cloud.google.com/storage/docs/creating-buckets) and [host a static website](https://cloud.google.com/storage/docs/hosting-static-website)
  * Amazon S3: [create a bucket](https://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html) and [host a static website](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html)
  * Microsoft Azure: [create a storage container](https://docs.microsoft.com/en-us/azure/storage/blobs/storage-quickstart-blobs-portal) and [host a static website](https://learn.microsoft.com/en-us/azure/storage/blobs/storage-blob-static-website)
@y
* You have completed the [Quick Start] or have a Hugo website you are ready to deploy and share with the world.
* You have an account with the service provider ([Google Cloud](https://cloud.google.com/), [AWS](https://aws.amazon.com), or [Azure](https://azure.microsoft.com)) that you want to deploy to.
* You have authenticated.
  * Google Cloud: [Install the CLI](https://cloud.google.com/sdk) and run [`gcloud auth login`](https://cloud.google.com/sdk/gcloud/reference/auth/login).
  * AWS: [Install the CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html) and run [`aws configure`](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html).
  * Azure: [Install the CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) and run [`az login`](https://docs.microsoft.com/en-us/cli/azure/authenticate-azure-cli).
  * NOTE: Each service supports alternatives for authentication, including using environment variables. See [here](https://gocloud.dev/howto/blob/#services) for more details.
* You have created a bucket to deploy to. If you want your site to be
  public, be sure to configure the bucket to be publicly readable as a static website.
  * Google Cloud: [create a bucket](https://cloud.google.com/storage/docs/creating-buckets) and [host a static website](https://cloud.google.com/storage/docs/hosting-static-website)
  * Amazon S3: [create a bucket](https://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html) and [host a static website](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html)
  * Microsoft Azure: [create a storage container](https://docs.microsoft.com/en-us/azure/storage/blobs/storage-quickstart-blobs-portal) and [host a static website](https://learn.microsoft.com/en-us/azure/storage/blobs/storage-blob-static-website)
@z

@x
## Configuring your first deployment
@y
## Configuring your first deployment
@z

@x
In the configuration file for your site, add a `[deployment]` section
and a `[[deployment.targets]]` subsection. The only required parameters are
the name and URL:
@y
In the configuration file for your site, add a `[deployment]` section
and a `[[deployment.targets]]` subsection. The only required parameters are
the name and URL:
@z

@x
```toml
[deployment]
@y
```toml
[deployment]
@z

@x
[[deployment.targets]]
# An arbitrary name for this target.
name = "production"
@y
[[deployment.targets]]
# An arbitrary name for this target.
name = "production"
@z

@x
# URL specifies the Go Cloud Development Kit URL to deploy to. Examples:
URL = "<FILL ME IN>"
@y
# URL specifies the Go Cloud Development Kit URL to deploy to. Examples:
URL = "<FILL ME IN>"
@z

@x
# Google Cloud Storage -- see https://gocloud.dev/howto/blob/#gcs
#URL = "gs://<Bucket Name>"
@y
# Google Cloud Storage -- see https://gocloud.dev/howto/blob/#gcs
#URL = "gs://<Bucket Name>"
@z

@x
# Amazon Web Services S3; see https://gocloud.dev/howto/blob/#s3
# For S3-compatible endpoints, see https://gocloud.dev/howto/blob/#s3-compatible
#URL = "s3://<Bucket Name>?region=<AWS region>"
@y
# Amazon Web Services S3; see https://gocloud.dev/howto/blob/#s3
# For S3-compatible endpoints, see https://gocloud.dev/howto/blob/#s3-compatible
#URL = "s3://<Bucket Name>?region=<AWS region>"
@z

@x
# Microsoft Azure Blob Storage; see https://gocloud.dev/howto/blob/#azure
#URL = "azblob://$web"
@y
# Microsoft Azure Blob Storage; see https://gocloud.dev/howto/blob/#azure
#URL = "azblob://$web"
@z

@x
```
@y
```
@z

@x
## Deploy
@y
## Deploy
@z

@x
To deploy to a target:
@y
To deploy to a target:
@z

@x
```bash
hugo deploy [--target=<target name>]
```
@y
```bash
hugo deploy [--target=<target name>]
```
@z

@x
The deploy process recursively walks through your local publish directory
(`public` by default) and syncs it to the destination bucket, to ensure
that the local and remote contents match.
@y
The deploy process recursively walks through your local publish directory
(`public` by default) and syncs it to the destination bucket, to ensure
that the local and remote contents match.
@z

@x
If you don't specify a target, Hugo will deploy to the first target in your
configuration.
@y
If you don't specify a target, Hugo will deploy to the first target in your
configuration.
@z

@x
See `hugo help deploy` or [the deploy command-line documentation][commandline] for more command-line options.
@y
See `hugo help deploy` or [the deploy command-line documentation][commandline] for more command-line options.
@z

@x
### How the file list works
@y
### How the file list works
@z

@x
The first thing `hugo deploy` does is create file lists for local and remote by
traversing the local publish directory and remote bucket.
@y
The first thing `hugo deploy` does is create file lists for local and remote by
traversing the local publish directory and remote bucket.
@z

@x
For both local and remote, the file list includes and excludes files according to
the [deployment target's configuration][config] --
* If the configuration specifies an `include` pattern, all files
  are skipped by default except those matching the pattern.
* If the configuration specifies an `exclude` pattern, files matching the
  pattern are skipped.
@y
For both local and remote, the file list includes and excludes files according to
the [deployment target's configuration][config] --
* If the configuration specifies an `include` pattern, all files
  are skipped by default except those matching the pattern.
* If the configuration specifies an `exclude` pattern, files matching the
  pattern are skipped.
@z

@x
{{% note %}}
When creating the local file list, a few additional skips apply: first, Hugo always
skips files named `.DS_Store`. 
@y
{{% note %}}
When creating the local file list, a few additional skips apply: first, Hugo always
skips files named `.DS_Store`. 
@z

@x
Second, Hugo always skips local hidden directories
(directories with names starting with a period, e.g. `.git`) and does not
traverse into them, except for the special [hidden directory named
`.well-known`](https://en.wikipedia.org/wiki/Well-known_URI), which is
traversed if it exists.
{{% /note %}}
@y
Second, Hugo always skips local hidden directories
(directories with names starting with a period, e.g. `.git`) and does not
traverse into them, except for the special [hidden directory named
`.well-known`](https://en.wikipedia.org/wiki/Well-known_URI), which is
traversed if it exists.
{{% /note %}}
@z

@x
### How the local and remote file lists are compared
@y
### How the local and remote file lists are compared
@z

@x
In the second step, Hugo compares the two file lists to figure out what changes
actually need to be made on the remote. File names are compared first; if the
local and remote files both exist then the sizes and md5sums are compared. Any
difference means that the file will be (re-)uploaded.
@y
In the second step, Hugo compares the two file lists to figure out what changes
actually need to be made on the remote. File names are compared first; if the
local and remote files both exist then the sizes and md5sums are compared. Any
difference means that the file will be (re-)uploaded.
@z

@x
Specifying the `--force` flag will ensure all files are re-uploaded even
if Hugo cannot detect any differences between local and remote.
@y
Specifying the `--force` flag will ensure all files are re-uploaded even
if Hugo cannot detect any differences between local and remote.
@z

@x
Files are deleted from the remote bucket if they are not present in the local
file list.
@y
Files are deleted from the remote bucket if they are not present in the local
file list.
@z

@x
{{% note %}}
If a remote file is excluded from the file list generation using the
exclude/include configs, then the comparison step will not know to delete the
file -- so it will remain on the remote even if it isn't present locally.
{{% /note %}}
@y
{{% note %}}
If a remote file is excluded from the file list generation using the
exclude/include configs, then the comparison step will not know to delete the
file -- so it will remain on the remote even if it isn't present locally.
{{% /note %}}
@z

@x
If the [`--confirm` or `--dryRun` flags][commandline] are given, Hugo displays 
what differences it has found and either pauses or stops here.
@y
If the [`--confirm` or `--dryRun` flags][commandline] are given, Hugo displays 
what differences it has found and either pauses or stops here.
@z

@x
### How synchronization works
@y
### How synchronization works
@z

@x
Hugo applies the list of changes to the remote storage bucket. Missing and/or
changed files are uploaded, and files missing locally but present remotely are
deleted. As files are uploaded, their headers are also configured on the remote
according to the matchers configuration.
@y
Hugo applies the list of changes to the remote storage bucket. Missing and/or
changed files are uploaded, and files missing locally but present remotely are
deleted. As files are uploaded, their headers are also configured on the remote
according to the matchers configuration.
@z

@x
{{% note %}}
As a safety measure to help prevent accidents, if there are more than 256 files
to delete, Hugo won't delete any files from the remote. Use the `--maxDeletes`
command line flag to override this.
{{% /note %}}
@y
{{% note %}}
As a safety measure to help prevent accidents, if there are more than 256 files
to delete, Hugo won't delete any files from the remote. Use the `--maxDeletes`
command line flag to override this.
{{% /note %}}
@z

@x
## Advanced configuration
@y
## Advanced configuration
@z

@x
Here's a full example deployment configuration:
@y
Here's a full example deployment configuration:
@z

@x
```toml
[deployment]
@y
```toml
[deployment]
@z

@x
# By default, files are uploaded in an arbitrary order.
# If you specify an `order` list, files that match regular expressions 
# in this list will be uploaded first, in the specified order.
order = [".jpg$", ".gif$"]
@y
# By default, files are uploaded in an arbitrary order.
# If you specify an `order` list, files that match regular expressions 
# in this list will be uploaded first, in the specified order.
order = [".jpg$", ".gif$"]
@z

@x
[[deployment.targets]]
# Define one or more targets, e.g., staging and production.
# Each target gets its own [[deployment.targets]] section.
@y
[[deployment.targets]]
# Define one or more targets, e.g., staging and production.
# Each target gets its own [[deployment.targets]] section.
@z

@x
# An arbitrary name for this target.
name = "mydeployment"
# The Go Cloud Development Kit URL to deploy to. Examples:
URL = "<FILL ME IN>"
@y
# An arbitrary name for this target.
name = "mydeployment"
# The Go Cloud Development Kit URL to deploy to. Examples:
URL = "<FILL ME IN>"
@z

@x
# GCS; see https://gocloud.dev/howto/blob/#gcs
#URL = "gs://<Bucket Name>"
@y
# GCS; see https://gocloud.dev/howto/blob/#gcs
#URL = "gs://<Bucket Name>"
@z

@x
# S3; see https://gocloud.dev/howto/blob/#s3
# For S3-compatible endpoints, see https://gocloud.dev/howto/blob/#s3-compatible
#URL = "s3://<Bucket Name>?region=<AWS region>"
@y
# S3; see https://gocloud.dev/howto/blob/#s3
# For S3-compatible endpoints, see https://gocloud.dev/howto/blob/#s3-compatible
#URL = "s3://<Bucket Name>?region=<AWS region>"
@z

@x
# Azure Blob Storage; see https://gocloud.dev/howto/blob/#azure
#URL = "azblob://$web"
@y
# Azure Blob Storage; see https://gocloud.dev/howto/blob/#azure
#URL = "azblob://$web"
@z

@x
# You can use a "prefix=" query parameter to target a subfolder of the bucket:
#URL = "gs://<Bucket Name>?prefix=a/subfolder/"
@y
# You can use a "prefix=" query parameter to target a subfolder of the bucket:
#URL = "gs://<Bucket Name>?prefix=a/subfolder/"
@z

@x
# If you are using a CloudFront CDN, deploy will invalidate the cache as needed.
#cloudFrontDistributionID = "<FILL ME IN>"
@y
# If you are using a CloudFront CDN, deploy will invalidate the cache as needed.
#cloudFrontDistributionID = "<FILL ME IN>"
@z

@x
# Include or exclude specific files when deploying to this target:
# If exclude is non-empty, and a local or remote file's path matches it, that file is not synced.
# If include is non-empty, and a local or remote file's path does not match it, that file is not synced.
# Note: local files that don't pass the include/exclude filters are not uploaded to remote,
# and remote files that don't pass the include/exclude filters are not deleted.
# 
# The pattern syntax is documented here: https://godoc.org/github.com/gobwas/glob#Glob
# Patterns should be written with forward slashes as separator.
# 
#include = "**.html" # would only include files with ".html" suffix
#exclude = "**.{jpg, png}" # would exclude files with ".jpg" or ".png" suffix
@y
# Include or exclude specific files when deploying to this target:
# If exclude is non-empty, and a local or remote file's path matches it, that file is not synced.
# If include is non-empty, and a local or remote file's path does not match it, that file is not synced.
# Note: local files that don't pass the include/exclude filters are not uploaded to remote,
# and remote files that don't pass the include/exclude filters are not deleted.
# 
# The pattern syntax is documented here: https://godoc.org/github.com/gobwas/glob#Glob
# Patterns should be written with forward slashes as separator.
# 
#include = "**.html" # would only include files with ".html" suffix
#exclude = "**.{jpg, png}" # would exclude files with ".jpg" or ".png" suffix
@z

@x
#######################
[[deployment.matchers]] 
# Matchers enable special caching, content type and compression behavior for
# specified file types. You can include any number of matcher blocks; the first one
# matching a given file pattern will be used.
@y
#######################
[[deployment.matchers]] 
# Matchers enable special caching, content type and compression behavior for
# specified file types. You can include any number of matcher blocks; the first one
# matching a given file pattern will be used.
@z

@x
# See https://golang.org/pkg/regexp/syntax/ for pattern syntax.
# Pattern searching is stopped on first match.
pattern = "<FILL ME IN>"
@y
# See https://golang.org/pkg/regexp/syntax/ for pattern syntax.
# Pattern searching is stopped on first match.
pattern = "<FILL ME IN>"
@z

@x
# If true, Hugo will gzip the file before uploading it to the bucket.
# With many storage services, this will save on storage and bandwidth costs
# for uncompressed file types.
#gzip = false 
@y
# If true, Hugo will gzip the file before uploading it to the bucket.
# With many storage services, this will save on storage and bandwidth costs
# for uncompressed file types.
#gzip = false 
@z

@x
# If true, Hugo always re-uploads this file even if size and md5 match.
# This is useful if Hugo isn't reliably able to determine whether to re-upload
# the file on its own.
#force = false
@y
# If true, Hugo always re-uploads this file even if size and md5 match.
# This is useful if Hugo isn't reliably able to determine whether to re-upload
# the file on its own.
#force = false
@z

@x
# Content-type header to configure for this file when served.
# By default this can be determined from the file extension.
#contentType = ""
@y
# Content-type header to configure for this file when served.
# By default this can be determined from the file extension.
#contentType = ""
@z

@x
# Cache-control header to configure for this file when served.
# The default is the empty string.
#cacheControl = ""
@y
# Cache-control header to configure for this file when served.
# The default is the empty string.
#cacheControl = ""
@z

@x
# Content-encoding header to configure for this file when served.
# By default, if gzip is True, this will be filled with "gzip".
#contentEncoding = ""
@y
# Content-encoding header to configure for this file when served.
# By default, if gzip is True, this will be filled with "gzip".
#contentEncoding = ""
@z

@x
# Samples:
@y
# Samples:
@z

@x
[[deployment.matchers]]
# Cache static assets for 1 year.
pattern = "^.+\\.(js|css|svg|ttf)$"
cacheControl = "max-age=31536000, no-transform, public"
gzip = true
@y
[[deployment.matchers]]
# Cache static assets for 1 year.
pattern = "^.+\\.(js|css|svg|ttf)$"
cacheControl = "max-age=31536000, no-transform, public"
gzip = true
@z

@x
[[deployment.matchers]]
pattern = "^.+\\.(png|jpg)$"
cacheControl = "max-age=31536000, no-transform, public"
gzip = false
@y
[[deployment.matchers]]
pattern = "^.+\\.(png|jpg)$"
cacheControl = "max-age=31536000, no-transform, public"
gzip = false
@z

@x
[[deployment.matchers]]
# Set custom content type for /sitemap.xml
pattern = "^sitemap\\.xml$"
contentType = "application/xml"
gzip = true
@y
[[deployment.matchers]]
# Set custom content type for /sitemap.xml
pattern = "^sitemap\\.xml$"
contentType = "application/xml"
gzip = true
@z

@x
[[deployment.matchers]]
pattern = "^.+\\.(html|xml|json)$"
gzip = true
```
@y
[[deployment.matchers]]
pattern = "^.+\\.(html|xml|json)$"
gzip = true
```
@z

@x
[Quick Start]: /getting-started/quick-start/
[commandline]: /commands/hugo_deploy/
[config]: #advanced-configuration
@y
[Quick Start]: /getting-started/quick-start/
[commandline]: /commands/hugo_deploy/
[config]: #advanced-configuration
@z
