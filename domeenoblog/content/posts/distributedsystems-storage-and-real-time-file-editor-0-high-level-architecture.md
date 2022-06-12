---
title: "Distributed Systems: Storage and Real Time File Editor #0 - High Level Architecture"
date: 2022-06-12T17:00:39+02:00
draft: true
tags:
    - Distributed Systems
    - Real Time
    - Kotlin
---

<br/>

<i>This devlog will cover the process of <span  style="text-decoration:underline">Designing and Building a Distributed Systems application that can be used to store, share and edit text files supporting multiple users in real-time</span>.</i>

### Goal:

The goal is to make good use of the <span  style="text-decoration:underline">granularity</span> of the distributed system to take into consideration practices and principles of the distributed system. Also make use of different <span  style="text-decoration:underline">techniques</span> and <span  style="text-decoration:underline">solutions</span> to really understand how the distributed system works and the challenges it comes with and what it takes to <span  style="text-decoration:underline">build</span> one.

><small style="line-height:10%">This however will not be an in depth analysis of Distributed Systems as a topic in its entirety, there are fantastic books going above and beyond: best practices, when to use them with different examples and other resources. </small>

><small style="line-height:10%">One particular book I would recommend is <i>Distributed Systems: Concepts and Design</i> by <i>George Coulouris, Jean Dollimore, Tim Kindberg and Gordon Blair</i>.</small>

<br/>

### High Level Architecture:

<img align="center" alt="High Level Architecture" width="100%" src="\images\project-high-level-architecture.png" />

<br/>
<br/>

<i> These layers and components will be the building blocks and they will work as one app. I split them in two layers in the diagram, the front end layer and the back end layer both being also composed of more than one components.</i>

### <span  style="text-decoration:underline">Front-End</span>:

1. <b>Front-end</b> - ReactJs application for client interaction.
2. <b>Middle Layer</b> - (or the Gateway) a service that will route and distribute the requests to the backend.
3. <b>Cache Server</b> - this server will probably be build inside the <i>Middle Layer</i> and will store some of the querried data. 

### <span  style="text-decoration:underline">Back-End</span>:
4. <b>Identity Management</b> - app for registration and identification of users. (Postgresql)
5. <b>Subscription Management</b> - service for different subscriptions with perks that users can get. (Postgresql)
6. <b>File Sharing Management</b> - file sharing and shared permissions management between users. (MongoDB)
7. <b>Storage Service </b> - the service which will be responsible for storing the files. (firebase)
8. <b>Real Time File Editing Service </b> - app for editing the files.
9. <b>Live Document Comments</b> - live group chats when editing the documents.

<br/>

I will go more in depth about each layer in their separate posts. But to briefly talk about this project - I specifically chose this project because it assumes a lot of decision making. 

For example for my services do I use <b>SQL</b> or a <b>NoSQL</B> database?

Why not make good use of both? 

Each one is useful for their assigned microservice - for the <i>File Sharing Management</i> I will be using a NoSQL database because it is flexible and I need it to graph the sharing with multiple users with multiple permissions of choice. And it can get messy and quite complex.
As for the Identity Management it will be a simple and standard schema therefore I can have an SQL database, which I simply chose to be Postgresql.

As for the language and framework used - I chose <b>Kotlin</b> with Spring boot as the framework for building the services.

If you are following this project step by step, you can implement it with your own stack as pricinples stay the same and it is pattern/principle oriented log.



<br/>

* * * 
> <small> This article is subject to change as I continue to work on this project. You can leave your feedback via <a href="https://twitter.com/dominic_whtver">twitter</a>. I would highly appreciate any type of message regarding this project or any off-topic. </small>