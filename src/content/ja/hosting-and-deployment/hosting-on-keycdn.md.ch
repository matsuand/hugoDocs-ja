%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Host on KeyCDN
description: "Accelerate your Hugo site globally with a KeyCDN integration. This tutorial shows you how to set up your static site as a GitLab page behind a KeyCDN pull zone."
categories: [hosting and deployment]
keywords: [hosting,keycdn]
menu:
  docs:
    parent: hosting-and-deployment
---
@y
---
title: Host on KeyCDN
description: "Accelerate your Hugo site globally with a KeyCDN integration. This tutorial shows you how to set up your static site as a GitLab page behind a KeyCDN pull zone."
categories: [hosting and deployment]
keywords: [hosting,keycdn]
menu:
  docs:
    parent: hosting-and-deployment
---
@z

@x
[KeyCDN](https://www.keycdn.com/) provides a multitude of features to help accelerate and secure your Hugo site globally including Brotli compression, Let's Encrypt support, Origin Shield, and more.
@y
[KeyCDN](https://www.keycdn.com/) provides a multitude of features to help accelerate and secure your Hugo site globally including Brotli compression, Let's Encrypt support, Origin Shield, and more.
@z

@x
## Assumptions
@y
## Assumptions
@z

@x
- You already have a Hugo page configured
- You have a GitLab account
- You have a KeyCDN account
@y
- You already have a Hugo page configured
- You have a GitLab account
- You have a KeyCDN account
@z

@x
## Create a KeyCDN Pull Zone
@y
## Create a KeyCDN Pull Zone
@z

@x
The first step will be to log in to your KeyCDN account and create a new zone. Name this whatever you like and select the [Pull Zone](https://www.keycdn.com/support/create-a-pull-zone/) option. As for the origin URL, your site will be running on [GitLab Pages](https://docs.gitlab.com/ee/user/project/pages/getting_started_part_one.html) with a URL of `https://youruser.gitlab.io/reponame/`. Use this as the Origin URL.
@y
The first step will be to log in to your KeyCDN account and create a new zone. Name this whatever you like and select the [Pull Zone](https://www.keycdn.com/support/create-a-pull-zone/) option. As for the origin URL, your site will be running on [GitLab Pages](https://docs.gitlab.com/ee/user/project/pages/getting_started_part_one.html) with a URL of `https://youruser.gitlab.io/reponame/`. Use this as the Origin URL.
@z

@x
![Screenshot of KeyCDN's pull zone creation page](/images/hosting-and-deployment/hosting-on-keycdn/keycdn-pull-zone.png)
@y
![Screenshot of KeyCDN's pull zone creation page](/images/hosting-and-deployment/hosting-on-keycdn/keycdn-pull-zone.png)
@z

@x
While the origin location doesn’t exist yet, you will need to use your new Zone URL address (or [Zone Alias](https://www.keycdn.com/support/create-a-zone-alias/)) in the `.gitlab-ci.yml` file that will be uploaded to your GitLab project.
@y
While the origin location doesn’t exist yet, you will need to use your new Zone URL address (or [Zone Alias](https://www.keycdn.com/support/create-a-zone-alias/)) in the `.gitlab-ci.yml` file that will be uploaded to your GitLab project.
@z

@x
Ensure that you use your Zone URL or Zone alias as the `BASEURL` variable in the example below. This will be the user-visible website address.
@y
Ensure that you use your Zone URL or Zone alias as the `BASEURL` variable in the example below. This will be the user-visible website address.
@z

@x
## Configure Your .gitlab-ci.yml File
@y
## Configure Your .gitlab-ci.yml File
@z

@x
Your `.gitlab-ci.yml` file should look similar to the example below. Be sure to modify any variables that are specific to your setup.
@y
Your `.gitlab-ci.yml` file should look similar to the example below. Be sure to modify any variables that are specific to your setup.
@z

@x
```yml
image: alpine:latest
@y
```yml
image: alpine:latest
@z

@x
variables:
    BASEURL: "https://cipull-7bb7.kxcdn.com/"
    HUGO_VERSION: "0.26"
    HUGO_CHECKSUM: "67e4ba5ec2a02c8164b6846e30a17cc765b0165a5b183d5e480149baf54e1a50"
    KEYCDN_ZONE_ID: "75544"
@y
variables:
    BASEURL: "https://cipull-7bb7.kxcdn.com/"
    HUGO_VERSION: "0.26"
    HUGO_CHECKSUM: "67e4ba5ec2a02c8164b6846e30a17cc765b0165a5b183d5e480149baf54e1a50"
    KEYCDN_ZONE_ID: "75544"
@z

@x
before_script:
    - apk update
    - apk add curl
@y
before_script:
    - apk update
    - apk add curl
@z

@x
pages:
    stage: deploy
    script:
    - apk add git
    - git submodule update --init
    - curl -sSL https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz -o /tmp/hugo.tar.gz
    - echo "${HUGO_CHECKSUM}  /tmp/hugo.tar.gz" | sha256sum -c
    - tar xf /tmp/hugo.tar.gz hugo -C /tmp/ && cp /tmp/hugo /usr/bin
    - hugo --baseURL ${BASEURL}
    - curl "https://api.keycdn.com/zones/purge/${KEYCDN_ZONE_ID}.json" -u "${KEYCDN_API_KEY}:"
    artifacts:
    paths:
    - public
    only:
    - master
```
@y
pages:
    stage: deploy
    script:
    - apk add git
    - git submodule update --init
    - curl -sSL https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz -o /tmp/hugo.tar.gz
    - echo "${HUGO_CHECKSUM}  /tmp/hugo.tar.gz" | sha256sum -c
    - tar xf /tmp/hugo.tar.gz hugo -C /tmp/ && cp /tmp/hugo /usr/bin
    - hugo --baseURL ${BASEURL}
    - curl "https://api.keycdn.com/zones/purge/${KEYCDN_ZONE_ID}.json" -u "${KEYCDN_API_KEY}:"
    artifacts:
    paths:
    - public
    only:
    - master
```
@z

@x
Using this integration method,  you will have to specify the Zone ID and your [KeyCDN API](https://www.keycdn.com/api) key as secret variables. To do this, navigate to the top-left menu bar in GitLab and select Projects. Then, select your project and click on the Settings page. Finally, select Pipelines from the sub-menu and scroll down to the Secret Variable section.
@y
Using this integration method,  you will have to specify the Zone ID and your [KeyCDN API](https://www.keycdn.com/api) key as secret variables. To do this, navigate to the top-left menu bar in GitLab and select Projects. Then, select your project and click on the Settings page. Finally, select Pipelines from the sub-menu and scroll down to the Secret Variable section.
@z

@x
The Secret Variable for your Zone ID should look similar to:
@y
The Secret Variable for your Zone ID should look similar to:
@z

@x
![Screenshot of setting the Zone ID secret variable](/images/hosting-and-deployment/hosting-on-keycdn/secret-zone-id.png)
@y
![Screenshot of setting the Zone ID secret variable](/images/hosting-and-deployment/hosting-on-keycdn/secret-zone-id.png)
@z

@x
While the Secret Variable for your API Key will look similar to:
@y
While the Secret Variable for your API Key will look similar to:
@z

@x
![Screenshot of setting the API Key secret variable](/images/hosting-and-deployment/hosting-on-keycdn/secret-api-key.png)
@y
![Screenshot of setting the API Key secret variable](/images/hosting-and-deployment/hosting-on-keycdn/secret-api-key.png)
@z

@x
The Zone ID and API key are used to purge your zone – it’s not strictly needed but otherwise, the CDN might deliver older versions of your assets for quite a while.
@y
The Zone ID and API key are used to purge your zone – it’s not strictly needed but otherwise, the CDN might deliver older versions of your assets for quite a while.
@z

@x
## Push your changes to GitLab
@y
## Push your changes to GitLab
@z

@x
Now it’s time to push the newly created repository to GitLab:
@y
Now it’s time to push the newly created repository to GitLab:
@z

@x
```sh
git remote add origin git@gitlab.com:youruser/ci-example.git
git push -u origin master
```
@y
```sh
git remote add origin git@gitlab.com:youruser/ci-example.git
git push -u origin master
```
@z

@x
You can watch the progress and CI job output in your GitLab project under “Pipelines”.
@y
You can watch the progress and CI job output in your GitLab project under “Pipelines”.
@z

@x
After verifying your CI job ran without issues, first check that your GitLab page shows up under `https://youruser.gitlab.io/reponame/` (it might look broken depending on your browser settings as all links point to your KeyCDN zone – don’t worry about that) and then by heading to whatever Zone alias / Zone URL you defined.
@y
After verifying your CI job ran without issues, first check that your GitLab page shows up under `https://youruser.gitlab.io/reponame/` (it might look broken depending on your browser settings as all links point to your KeyCDN zone – don’t worry about that) and then by heading to whatever Zone alias / Zone URL you defined.
@z

@x
To learn more about Hugo hosting options with KeyCDN, check out the complete [Hugo hosting with KeyCDN integration guide](https://www.keycdn.com/support/hugo-hosting/).
@y
To learn more about Hugo hosting options with KeyCDN, check out the complete [Hugo hosting with KeyCDN integration guide](https://www.keycdn.com/support/hugo-hosting/).
@z
