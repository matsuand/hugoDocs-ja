%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Ampio Knowledge Base
date: 2022-10-30
@y
---
title: Ampio Knowledge Base
date: 2022-10-30
@z

@x
description: "Knowledge base for the Ampio building automation system."
siteURL: https://help.ampio.com/
---
@y
description: "Knowledge base for the Ampio building automation system."
siteURL: https://help.ampio.com/
---
@z

@x
As a company that specializes in highly customizable smart solutions for various industries, Ampio has accumulated a vast amount of knowledge throughout the years. We were on the lookout for a user-friendly platform to impart this knowledge to our clients and installers. Delivering a service that caters to both audiences, scattered around the globe with vastly divergent needs and expectations, was a challenge.
@y
As a company that specializes in highly customizable smart solutions for various industries, Ampio has accumulated a vast amount of knowledge throughout the years. We were on the lookout for a user-friendly platform to impart this knowledge to our clients and installers. Delivering a service that caters to both audiences, scattered around the globe with vastly divergent needs and expectations, was a challenge.
@z

@x
On the one hand, we needed something that would let us educate a client with no technical knowledge about our system in a visually appealing way.
@y
On the one hand, we needed something that would let us educate a client with no technical knowledge about our system in a visually appealing way.
@z

@x
On the other hand, our installers required technical drawings, offline manuals, and a deep dive into highly specialized subjects.
@y
On the other hand, our installers required technical drawings, offline manuals, and a deep dive into highly specialized subjects.
@z

@x
Over and above that, we could not overlook the fact that our internal team of editors and maintainers of the Knowledge Base included non-programmers who had to be able to create content and navigate the architecture of the site just as well as those adept at coding.
@y
Over and above that, we could not overlook the fact that our internal team of editors and maintainers of the Knowledge Base included non-programmers who had to be able to create content and navigate the architecture of the site just as well as those adept at coding.
@z

@x
We started our journey with the following requirements:
@y
We started our journey with the following requirements:
@z

@x
 - Ease of contribution
 - Efficient search capabilities
 - The possibility of deployment to simple shared hosting
 - Proper support for multilingualism
@y
 - Ease of contribution
 - Efficient search capabilities
 - The possibility of deployment to simple shared hosting
 - Proper support for multilingualism
@z

@x
## Dark ages of WordPress
@y
## Dark ages of WordPress
@z

@x
With the above-mentioned in mind, we built our first revision of the service in WordPress with a commercial knowledge base plugin. The initial requirements seemed not to be exorbitant, and yet we were surprised to see that only a few of the available solutions covered them. Especially, the case of multilingualism appeared to be particularly neglected across the available products.
@y
With the above-mentioned in mind, we built our first revision of the service in WordPress with a commercial knowledge base plugin. The initial requirements seemed not to be exorbitant, and yet we were surprised to see that only a few of the available solutions covered them. Especially, the case of multilingualism appeared to be particularly neglected across the available products.
@z

@x
The WordPress-based products made big promises: pay some bucks, bootstrap the service in minutes, and forget about all the development troubles. And although those promises could possibly be deliverable on WordPress' end, it was definitely not true for anything more than the most generic deployments. In our case, we were dealing with more and more trade-offs. Plus, the solution was just slow on the simple shared hosting environment that we dedicated to the job.
@y
The WordPress-based products made big promises: pay some bucks, bootstrap the service in minutes, and forget about all the development troubles. And although those promises could possibly be deliverable on WordPress' end, it was definitely not true for anything more than the most generic deployments. In our case, we were dealing with more and more trade-offs. Plus, the solution was just slow on the simple shared hosting environment that we dedicated to the job.
@z

@x
## Turning point
@y
## Turning point
@z

@x
The turning point was the introduction of a new key requirement---each document was to be downloadable in the PDF format. Such functionality was not available in the plugins we owned, nor did it look like any of the other existing WordPress plugins could fulfill our needs to a satisfactory degree. Nobody in our team was brave enough to add such a functionality to the current stack, so we decided to start from scratch.
@y
The turning point was the introduction of a new key requirement---each document was to be downloadable in the PDF format. Such functionality was not available in the plugins we owned, nor did it look like any of the other existing WordPress plugins could fulfill our needs to a satisfactory degree. Nobody in our team was brave enough to add such a functionality to the current stack, so we decided to start from scratch.
@z

@x
On top of that new development, we had to remember another one of our key requirements, namely, that mostly non-programmers were to be responsible for the service maintenance and content creation. Initially, we were leaning towards headless CMS-based solutions, but finally we made a bold move and decided to create a Git-managed Jamstack service and see what happens.
@y
On top of that new development, we had to remember another one of our key requirements, namely, that mostly non-programmers were to be responsible for the service maintenance and content creation. Initially, we were leaning towards headless CMS-based solutions, but finally we made a bold move and decided to create a Git-managed Jamstack service and see what happens.
@z

@x
## Hugo to the rescue
@y
## Hugo to the rescue
@z

@x
Hugo was our first choice of SSG. The multilingualism support was the primary feature that convinced us. Later on, going through the documentation, we continued to discover new exciting features that we didn't even know we needed when we started.
@y
Hugo was our first choice of SSG. The multilingualism support was the primary feature that convinced us. Later on, going through the documentation, we continued to discover new exciting features that we didn't even know we needed when we started.
@z

@x
The rich functionalities of WordPress WYSIWYG editors soon turned out to be a curse. It became burdensome to maintain formatting consistency across documents prepared by multiple contributors. When we considered Markdown, we knew that it would give us a lot less flexibility. In our case, it proved to be a blessing in disguise---the constraints imposed by the notation ensured that each document was prepared in the same way. And in the cases where Markdown was not enough, Hugo shortcodes gave us all that we needed to get the results we anticipated.
@y
The rich functionalities of WordPress WYSIWYG editors soon turned out to be a curse. It became burdensome to maintain formatting consistency across documents prepared by multiple contributors. When we considered Markdown, we knew that it would give us a lot less flexibility. In our case, it proved to be a blessing in disguise---the constraints imposed by the notation ensured that each document was prepared in the same way. And in the cases where Markdown was not enough, Hugo shortcodes gave us all that we needed to get the results we anticipated.
@z

@x
In terms of PDF generation, we utilized [custom output formats](/templates/output-formats/) to produce intermediary document representations, which are consumed by our custom tool transforming them to TeX documents, which are finally used to produce PDF files.
@y
In terms of PDF generation, we utilized [custom output formats](/templates/output-formats/) to produce intermediary document representations, which are consumed by our custom tool transforming them to TeX documents, which are finally used to produce PDF files.
@z

@x
Custom output formats were also used to create search indexes. The search functionality is built on the brilliant [TNTSearch](https://github.com/teamtnt/tntsearch) library. The search queries and results are handled by PHP snippets embedded into static documents handled by Hugo.
@y
Custom output formats were also used to create search indexes. The search functionality is built on the brilliant [TNTSearch](https://github.com/teamtnt/tntsearch) library. The search queries and results are handled by PHP snippets embedded into static documents handled by Hugo.
@z

@x
We even implemented a simple REST API generated by Hugo! We have yet to find something that cannot be achieved with this stack, while in WordPress-based solutions we were struggling with things as simple as defining custom document ordering in one of the categories list views.
@y
We even implemented a simple REST API generated by Hugo! We have yet to find something that cannot be achieved with this stack, while in WordPress-based solutions we were struggling with things as simple as defining custom document ordering in one of the categories list views.
@z

@x
When talking about Hugo, we cannot forget about the speed. At the beginning we were not considering it a killer feature, but as our document base grew bigger, we appreciated it more and more. Dry-runs are not so common---most of the time we are working on one of the documents with cache already built during one of the previous Hugo runs. In such a scenario, Hugo rebuilds the site in about a second and we consider it a very good result.
@y
When talking about Hugo, we cannot forget about the speed. At the beginning we were not considering it a killer feature, but as our document base grew bigger, we appreciated it more and more. Dry-runs are not so common---most of the time we are working on one of the documents with cache already built during one of the previous Hugo runs. In such a scenario, Hugo rebuilds the site in about a second and we consider it a very good result.
@z

@x
```text
                   | EN  | PL
-------------------+-----+------
  Pages            | 483 | 486
  Paginator pages  |  56 |  55
  Non-page files   | 745 | 749
  Static files     | 917 | 917
  Processed images | 487 | 490
  Aliases          |  80 |  79
  Sitemaps         |   2 |   1
  Cleaned          |   0 |   0
@y
```text
                   | EN  | PL
-------------------+-----+------
  Pages            | 483 | 486
  Paginator pages  |  56 |  55
  Non-page files   | 745 | 749
  Static files     | 917 | 917
  Processed images | 487 | 490
  Aliases          |  80 |  79
  Sitemaps         |   2 |   1
  Cleaned          |   0 |   0
@z

@x
Total in 1096 ms
```
@y
Total in 1096 ms
```
@z

@x
## Adaptation among the contributors
@y
## Adaptation among the contributors
@z

@x
Very quickly it became apparent that our initial concerns about the adaptation of the workflow among contributors were grossly exaggerated. Markdown is fairly straightforward and did not cause any trouble for the contributors.
@y
Very quickly it became apparent that our initial concerns about the adaptation of the workflow among contributors were grossly exaggerated. Markdown is fairly straightforward and did not cause any trouble for the contributors.
@z

@x
We recommended that our colleagues use Visual Studio Code as a tool for content creation. The project’s repository tracks project-scoped configuration of the editor, which includes a set of _tasks_ allowing to run a live server from the GUI level. This is very useful for those who are easily frightened when faced with the mighty terminal.
@y
We recommended that our colleagues use Visual Studio Code as a tool for content creation. The project’s repository tracks project-scoped configuration of the editor, which includes a set of _tasks_ allowing to run a live server from the GUI level. This is very useful for those who are easily frightened when faced with the mighty terminal.
@z

@x
The basic skills of the Git workflow were also easily acquired. At the end of the day, builds and deployments are fully managed by CI/CD processes, so the administration of the service drills down to reviewing and accepting merge requests in the Git frontend. As a side effect, we receive a full and clear history of contributions, which is well appreciated by our quality assurance auditors.
@y
The basic skills of the Git workflow were also easily acquired. At the end of the day, builds and deployments are fully managed by CI/CD processes, so the administration of the service drills down to reviewing and accepting merge requests in the Git frontend. As a side effect, we receive a full and clear history of contributions, which is well appreciated by our quality assurance auditors.
@z

@x
We could even say that our experiment spread the love for Git among non-programmers in our organization!
@y
We could even say that our experiment spread the love for Git among non-programmers in our organization!
@z

@x
## Summary
@y
## Summary
@z

@x
Hugo is the best! Definitely give it a try if you are ever faced with a challenge similar to ours. And do not give it a second thought if your service contributors are not too technically inclined---it might still turn out great!
@y
Hugo is the best! Definitely give it a try if you are ever faced with a challenge similar to ours. And do not give it a second thought if your service contributors are not too technically inclined---it might still turn out great!
@z
