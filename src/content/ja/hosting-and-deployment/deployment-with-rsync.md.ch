%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Deploy with Rsync
description: If you have access to your web host with SSH, you can use a simple rsync one-liner to incrementally deploy your entire Hugo website.
categories: [hosting and deployment]
keywords: [deployment,rsync]
menu:
  docs:
    parent: hosting-and-deployment
toc: true
aliases: [/tutorials/deployment-with-rsync/]
---
@y
---
title: Deploy with Rsync
description: If you have access to your web host with SSH, you can use a simple rsync one-liner to incrementally deploy your entire Hugo website.
categories: [hosting and deployment]
keywords: [deployment,rsync]
menu:
  docs:
    parent: hosting-and-deployment
toc: true
aliases: [/tutorials/deployment-with-rsync/]
---
@z

@x
## Assumptions
@y
## Assumptions
@z

@x
* A web host running a web server. This could be a shared hosting environment or a VPS.
* Access to your web host with SSH
* A functional static website built with Hugo
@y
* A web host running a web server. This could be a shared hosting environment or a VPS.
* Access to your web host with SSH
* A functional static website built with Hugo
@z

@x
The spoiler is that you can deploy your entire website with a command that looks like the following:
@y
The spoiler is that you can deploy your entire website with a command that looks like the following:
@z

@x
```txt
hugo && rsync -avz --delete public/ www-data@ftp.topologix.fr:~/www/
```
@y
```txt
hugo && rsync -avz --delete public/ www-data@ftp.topologix.fr:~/www/
```
@z

@x
As you will see, we'll put this command in a shell script file, which makes building and deployment as easy as executing `./deploy`.
@y
As you will see, we'll put this command in a shell script file, which makes building and deployment as easy as executing `./deploy`.
@z

@x
## Copy Your SSH Key to your host
@y
## Copy Your SSH Key to your host
@z

@x
To make logging in to your server more secure and less interactive, you can upload your SSH key. If you have already installed your SSH key to your server, you can move on to the next section.
@y
To make logging in to your server more secure and less interactive, you can upload your SSH key. If you have already installed your SSH key to your server, you can move on to the next section.
@z

@x
First, install the ssh client. On Debian distributions, use the following command:
@y
First, install the ssh client. On Debian distributions, use the following command:
@z

@x
{{< code file=install-openssh.sh >}}
sudo apt-get install openssh-client
{{< /code >}}
@y
{{< code file=install-openssh.sh >}}
sudo apt-get install openssh-client
{{< /code >}}
@z

@x
Then generate your ssh key. First, create the `.ssh` directory in your home directory if it doesn't exist:
@y
Then generate your ssh key. First, create the `.ssh` directory in your home directory if it doesn't exist:
@z

@x
```txt
~$ cd && mkdir .ssh & cd .ssh
```
@y
```txt
~$ cd && mkdir .ssh & cd .ssh
```
@z

@x
Next, execute this command to generate a new keypair called `rsa_id`:
@y
Next, execute this command to generate a new keypair called `rsa_id`:
@z

@x
```txt
~/.ssh/$ ssh-keygen -t rsa -q -C "For SSH" -f rsa_id
```
@y
```txt
~/.ssh/$ ssh-keygen -t rsa -q -C "For SSH" -f rsa_id
```
@z

@x
You'll be prompted for a passphrase, which is an extra layer of protection. Enter the passphrase you'd like to use, and then enter it again when prompted, or leave it blank if you don't want to have a passphrase. Not using a passphrase will let you transfer files non-interactively, as you won't be prompted for a password when you log in, but it is slightly less secure.
@y
You'll be prompted for a passphrase, which is an extra layer of protection. Enter the passphrase you'd like to use, and then enter it again when prompted, or leave it blank if you don't want to have a passphrase. Not using a passphrase will let you transfer files non-interactively, as you won't be prompted for a password when you log in, but it is slightly less secure.
@z

@x
To make logging in easier, add a definition for your web host to the file  `~/.ssh/config` with the following command, replacing `HOST` with the IP address or hostname of your web host, and `USER` with the username you use to log in to your web host when transferring files:
@y
To make logging in easier, add a definition for your web host to the file  `~/.ssh/config` with the following command, replacing `HOST` with the IP address or hostname of your web host, and `USER` with the username you use to log in to your web host when transferring files:
@z

@x
```txt
~/.ssh/$ cat >> config <<EOF
Host HOST
     Hostname HOST
     Port 22
     User USER
     IdentityFile ~/.ssh/rsa_id
EOF
```
@y
```txt
~/.ssh/$ cat >> config <<EOF
Host HOST
     Hostname HOST
     Port 22
     User USER
     IdentityFile ~/.ssh/rsa_id
EOF
```
@z

@x
Then copy your ssh public key to the remote server with the `ssh-copy-id` command:
@y
Then copy your ssh public key to the remote server with the `ssh-copy-id` command:
@z

@x
```txt
~/.ssh/$ ssh-copy-id -i rsa_id.pub USER@HOST.com
```
@y
```txt
~/.ssh/$ ssh-copy-id -i rsa_id.pub USER@HOST.com
```
@z

@x
Now you can easily connect to the remote server:
@y
Now you can easily connect to the remote server:
@z

@x
```txt
~$ ssh user@host
Enter passphrase for key '/home/mylogin/.ssh/rsa_id':
```
@y
```txt
~$ ssh user@host
Enter passphrase for key '/home/mylogin/.ssh/rsa_id':
```
@z

@x
Now that you can log in with your SSH key, let's create a script to automate deployment of your Hugo site.
@y
Now that you can log in with your SSH key, let's create a script to automate deployment of your Hugo site.
@z

@x
## Shell script
@y
## Shell script
@z

@x
Create a new script called `deploy` the root of your Hugo tree:
@y
Create a new script called `deploy` the root of your Hugo tree:
@z

@x
```txt
~/websites/topologix.fr$ editor deploy
```
@y
```txt
~/websites/topologix.fr$ editor deploy
```
@z

@x
Add the following content. Replace the `USER`, `HOST`, and `DIR` values with your own values:
@y
Add the following content. Replace the `USER`, `HOST`, and `DIR` values with your own values:
@z

@x
```sh
#!/bin/sh
USER=my-user
HOST=my-server.com
DIR=my/directory/to/topologix.fr/   # the directory where your web site files should go
@y
```sh
#!/bin/sh
USER=my-user
HOST=my-server.com
DIR=my/directory/to/topologix.fr/   # the directory where your web site files should go
@z

@x
hugo && rsync -avz --delete public/ ${USER}@${HOST}:~/${DIR} # this will delete everything on the server that's not in the local public folder 
@y
hugo && rsync -avz --delete public/ ${USER}@${HOST}:~/${DIR} # this will delete everything on the server that's not in the local public folder 
@z

@x
exit 0
```
@y
exit 0
```
@z

@x
Note that `DIR` is the relative path from the remote user's home. If you have to specify a full path (for instance `/var/www/mysite/`) you must change `~/${DIR}` to `${DIR}` inside the command-line. For most cases you should not have to.
@y
Note that `DIR` is the relative path from the remote user's home. If you have to specify a full path (for instance `/var/www/mysite/`) you must change `~/${DIR}` to `${DIR}` inside the command-line. For most cases you should not have to.
@z

@x
Save and close, and make the `deploy` file executable:
@y
Save and close, and make the `deploy` file executable:
@z

@x
```txt
~/websites/topologix.fr$ chmod +x deploy
```
@y
```txt
~/websites/topologix.fr$ chmod +x deploy
```
@z

@x
Now you only have to enter the following command to deploy and update your website:
@y
Now you only have to enter the following command to deploy and update your website:
@z

@x
```txt
~/websites/topologix.fr$ ./deploy
```
@y
```txt
~/websites/topologix.fr$ ./deploy
```
@z

@x
Your site builds and deploys:
@y
Your site builds and deploys:
@z

@x
```txt
Started building sites ...
Built site for language en:
0 draft content
0 future content
0 expired content
5 pages created
0 non-page files copied
0 paginator pages created
0 tags created
0 categories created
total in 56 ms
sending incremental file list
404.html
index.html
index.xml
sitemap.xml
posts/
posts/index.html
@y
```txt
Started building sites ...
Built site for language en:
0 draft content
0 future content
0 expired content
5 pages created
0 non-page files copied
0 paginator pages created
0 tags created
0 categories created
total in 56 ms
sending incremental file list
404.html
index.html
index.xml
sitemap.xml
posts/
posts/index.html
@z

@x
sent 9,550 bytes  received 1,708 bytes  7,505.33 bytes/sec
total size is 966,557  speedup is 85.86
```
@y
sent 9,550 bytes  received 1,708 bytes  7,505.33 bytes/sec
total size is 966,557  speedup is 85.86
```
@z

@x
You can incorporate other processing tasks into this deployment script as well.
@y
You can incorporate other processing tasks into this deployment script as well.
@z
