%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Host on Firebase
description: You can use Firebase's free tier to host your static website; this also gives you access to Firebase's NoSQL API.
categories: [hosting and deployment]
keywords: [hosting,firebase]
menu:
  docs:
    parent: hosting-and-deployment
toc: true
---
@y
---
title: Host on Firebase
description: You can use Firebase's free tier to host your static website; this also gives you access to Firebase's NoSQL API.
categories: [hosting and deployment]
keywords: [hosting,firebase]
menu:
  docs:
    parent: hosting-and-deployment
toc: true
---
@z

@x
## Assumptions
@y
## Assumptions
@z

@x
1. You have an account with [Firebase][signup]. (If you don't, you can sign up for free using your Google account.)
2. You have completed the [Quick Start] or have a completed Hugo website ready for deployment.
@y
1. You have an account with [Firebase][signup]. (If you don't, you can sign up for free using your Google account.)
2. You have completed the [Quick Start] or have a completed Hugo website ready for deployment.
@z

@x
## Initial setup
@y
## Initial setup
@z

@x
Go to the [Firebase console][console] and create a new project (unless you already have a project). You will need to globally install `firebase-tools` (node.js):
@y
Go to the [Firebase console][console] and create a new project (unless you already have a project). You will need to globally install `firebase-tools` (node.js):
@z

@x
```sh
npm install -g firebase-tools
```
@y
```sh
npm install -g firebase-tools
```
@z

@x
Log in to Firebase (setup on your local machine) using `firebase login`, which opens a browser where you can select your account. Use `firebase logout` in case you are already logged in but to the wrong account.
@y
Log in to Firebase (setup on your local machine) using `firebase login`, which opens a browser where you can select your account. Use `firebase logout` in case you are already logged in but to the wrong account.
@z

@x
```sh
firebase login
```
@y
```sh
firebase login
```
@z

@x
In the root of your Hugo project, initialize the Firebase project with the `firebase init` command:
@y
In the root of your Hugo project, initialize the Firebase project with the `firebase init` command:
@z

@x
```sh
firebase init
```
@y
```sh
firebase init
```
@z

@x
From here:
@y
From here:
@z

@x
1. Choose Hosting in the feature question
2. Choose the project you just set up
3. Accept the default for your database rules file
4. Accept the default for the publish directory, which is `public`
5. Choose "No" in the question if you are deploying a single-page app
@y
1. Choose Hosting in the feature question
2. Choose the project you just set up
3. Accept the default for your database rules file
4. Accept the default for the publish directory, which is `public`
5. Choose "No" in the question if you are deploying a single-page app
@z

@x
## Using Firebase & GitHub CI/CD
@y
## Using Firebase & GitHub CI/CD
@z

@x
In new versions of Firebase, some other questions apply:
@y
In new versions of Firebase, some other questions apply:
@z

@x
6. Set up automatic builds and deploys with GitHub?
@y
6. Set up automatic builds and deploys with GitHub?
@z

@x
Here you will be redirected to login in your GitHub account to get permissions. Confirm.
@y
Here you will be redirected to login in your GitHub account to get permissions. Confirm.
@z

@x
7. For which GitHub repository would you like to set up a GitHub workflow? (format: user/repository)
@y
7. For which GitHub repository would you like to set up a GitHub workflow? (format: user/repository)
@z

@x
Include the repository you will use in the format above (Account/Repo)
Firebase script with retrieve credentials, create a service account you can later manage in your GitHub settings.
@y
Include the repository you will use in the format above (Account/Repo)
Firebase script with retrieve credentials, create a service account you can later manage in your GitHub settings.
@z

@x
8. Set up the workflow to run a build script before every deploy?
@y
8. Set up the workflow to run a build script before every deploy?
@z

@x
Here is your opportunity to include some commands before you run the deploy.
@y
Here is your opportunity to include some commands before you run the deploy.
@z

@x
9. Set up automatic deployment to your site's live channel when a PR is merged?
@y
9. Set up automatic deployment to your site's live channel when a PR is merged?
@z

@x
You can let in the default option (main)
@y
You can let in the default option (main)
@z

@x
After that Firebase has been set in your project with CI/CD. After that run:
@y
After that Firebase has been set in your project with CI/CD. After that run:
@z

@x
```sh
hugo && firebase deploy
```
@y
```sh
hugo && firebase deploy
```
@z

@x
With this you will have the app initialized manually. After that you can manage and fix your GitHub workflow from: https://github.com/your-account/your-repo/actions
@y
With this you will have the app initialized manually. After that you can manage and fix your GitHub workflow from: https://github.com/your-account/your-repo/actions
@z

@x
Don't forget to update your static pages before push!
@y
Don't forget to update your static pages before push!
@z

@x
## Manual deploy
@y
## Manual deploy
@z

@x
To deploy your Hugo site, execute the `firebase deploy` command, and your site will be up in no time:
@y
To deploy your Hugo site, execute the `firebase deploy` command, and your site will be up in no time:
@z

@x
```sh
hugo && firebase deploy
```
@y
```sh
hugo && firebase deploy
```
@z

@x
## CI setup (other tools)
@y
## CI setup (other tools)
@z

@x
You can generate a deploy token using
@y
You can generate a deploy token using
@z

@x
```sh
firebase login:ci
```
@y
```sh
firebase login:ci
```
@z

@x
You can also set up your CI and add the token to a private variable like `$FIREBASE_DEPLOY_TOKEN`.
@y
You can also set up your CI and add the token to a private variable like `$FIREBASE_DEPLOY_TOKEN`.
@z

@x
{{% note %}}
This is a private secret and it should not appear in a public repository. Make sure you understand your chosen CI and that it's not visible to others.
{{% /note %}}
@y
{{% note %}}
This is a private secret and it should not appear in a public repository. Make sure you understand your chosen CI and that it's not visible to others.
{{% /note %}}
@z

@x
You can then add a step in your build to do the deployment using the token:
@y
You can then add a step in your build to do the deployment using the token:
@z

@x
```sh
firebase deploy --token $FIREBASE_DEPLOY_TOKEN
```
@y
```sh
firebase deploy --token $FIREBASE_DEPLOY_TOKEN
```
@z

@x
## Reference links
@y
## Reference links
@z

@x
* [Firebase CLI Reference](https://firebase.google.com/docs/cli/#administrative_commands)
@y
* [Firebase CLI Reference](https://firebase.google.com/docs/cli/#administrative_commands)
@z

@x
[console]: https://console.firebase.google.com/
[Quick Start]: /getting-started/quick-start/
[signup]: https://console.firebase.google.com/
@y
[console]: https://console.firebase.google.com/
[Quick Start]: /getting-started/quick-start/
[signup]: https://console.firebase.google.com/
@z
