%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Deploy with Rclone
description: If you have access to your web host with SFTP/FTP/SSH/HTTP(DAV), you can use rclone to incrementally deploy your entire Hugo website.
categories: [hosting and deployment]
keywords: [deployment,rclone,sftp]
menu:
  docs:
    parent: hosting-and-deployment
toc: true
aliases: [/tutorials/deployment-with-rclone/]
---
@y
---
title: Deploy with Rclone
description: If you have access to your web host with SFTP/FTP/SSH/HTTP(DAV), you can use rclone to incrementally deploy your entire Hugo website.
categories: [hosting and deployment]
keywords: [deployment,rclone,sftp]
menu:
  docs:
    parent: hosting-and-deployment
toc: true
aliases: [/tutorials/deployment-with-rclone/]
---
@z

@x
## Assumptions
@y
## Assumptions
@z

@x
* A web host running a web server. This could be a shared hosting environment or a VPS.
* Access to your web host with any of the [protocols supported by rclone](https://rclone.org/#providers), such as SFTP.
* A functional static website built with Hugo
* Deploying from an [Rclone](https://rclone.org) compatible operating system
* You have [installed Rclone](https://rclone.org/install/).
@y
* A web host running a web server. This could be a shared hosting environment or a VPS.
* Access to your web host with any of the [protocols supported by rclone](https://rclone.org/#providers), such as SFTP.
* A functional static website built with Hugo
* Deploying from an [Rclone](https://rclone.org) compatible operating system
* You have [installed Rclone](https://rclone.org/install/).
@z

@x
**NB**: You can remove ``--interactive`` in the commands below once you are comfortable with rclone, if you wish. Also, ``--gc`` and ``--minify`` are optional in the ``hugo`` commands below.
@y
**NB**: You can remove ``--interactive`` in the commands below once you are comfortable with rclone, if you wish. Also, ``--gc`` and ``--minify`` are optional in the ``hugo`` commands below.
@z

@x
## Getting started
@y
## Getting started
@z

@x
The spoiler is that you can even deploy your entire website from any compatible OS with no configuration. Using SFTP for example:
@y
The spoiler is that you can even deploy your entire website from any compatible OS with no configuration. Using SFTP for example:
@z

@x
```txt
hugo --gc --minify
rclone sync --interactive --sftp-host sftp.example.com --sftp-user www-data --sftp-ask-password public/ :sftp:www/
```
@y
```txt
hugo --gc --minify
rclone sync --interactive --sftp-host sftp.example.com --sftp-user www-data --sftp-ask-password public/ :sftp:www/
```
@z

@x
## Configure Rclone for even easier usage
@y
## Configure Rclone for even easier usage
@z

@x
The easiest way is simply to run `rclone config`.
@y
The easiest way is simply to run `rclone config`.
@z

@x
The [Rclone docs](https://rclone.org/docs/) provide [an example of configuring Rclone to use SFTP](https://rclone.org/sftp/).
@y
The [Rclone docs](https://rclone.org/docs/) provide [an example of configuring Rclone to use SFTP](https://rclone.org/sftp/).
@z

@x
For the next commands, we will assume you configured a remote you named ``hugo-www``
@y
For the next commands, we will assume you configured a remote you named ``hugo-www``
@z

@x
The above 'spoiler' commands could become:
@y
The above 'spoiler' commands could become:
@z

@x
```txt
hugo --gc --minify
rclone sync --interactive public/ hugo-www:www/
```
@y
```txt
hugo --gc --minify
rclone sync --interactive public/ hugo-www:www/
```
@z

@x
After you issue the above commands (and respond to any prompts), check your website and you will see that it is deployed.
@y
After you issue the above commands (and respond to any prompts), check your website and you will see that it is deployed.
@z
