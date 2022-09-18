---
title: "Distributed Systems #0 - General System Architecture"
date: 2022-09-18T16:19:32+03:00
draft: false
---


<i>This project is based on building an app in a distributed manner, using distributed systems principles, building blocks and practices at the best of my understanding and skill. </i>

<br/>

<img src="https://www.mindmapper.com/wp-content/uploads/2019/01/mind-map-graphic-1024x640.jpg"/>

## Project Description & Goals (Non Technical)

The app will be a ***medium + udemy with Mind Maps***. Mind maps are a way to store information on different **subjects** to improve the learning experience through a visually structured hierarchical tree. Subjects are presented from top level views to more advanced topics that are related to each other and grouped between. The learning sources will be text-based.

**The app will:**
- Structure and Display subjects in a hierarchical manner
- Keep track of each user's progress on a subject
- Track course reads and likeability
- Save user's saved, clicked and liked courses
- User registration and auth
- Provide users with the possibility to upload their own mind-maps representations of the topics they want to share

**Nice to have *(depending on the time & complexity)*:**

- Real time editing
- See current users reading a subject
- Comment sections
- User bookmark system
- Tag system and recommendations
- Role system
- Automatic hierarchy and node relations

<br/>

## System Architecture

<br/>

<div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers tags lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;app.diagrams.net\&quot; modified=\&quot;2022-09-18T15:13:33.309Z\&quot; agent=\&quot;5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\&quot; etag=\&quot;wn_Jv5aNdkXHnDt_0LdM\&quot; version=\&quot;20.3.2\&quot; type=\&quot;google\&quot;&gt;&lt;diagram id=\&quot;cb_ynF3PT7aozFD-mhS3\&quot; name=\&quot;Page-1\&quot;&gt;7Vtbc5s4FP41frQHEBfzaOy47Uy3zWx2p9192ZFBAbWAKMixvb9+JZBsQNjGG1/SNPFMIh1dDOf7js4FMgDTZP0uh1n0GwlQPDC0YD0As4FhOLbLfnPBphIAVwjCHAeVSN8JHvC/SAg1IV3iABWNiZSQmOKsKfRJmiKfNmQwz8mqOe2RxM1vzWCIFMGDD2NV+gUHNKqkY0vbyd8jHEbym3VNjCRQThaCIoIBWdVE4G4ApjkhtGol6ymKue6kXqp18z2j2wvLUUr7LHjvpav7eeA+YQc8uMu/o6/xeih2eYLxUtywuFi6kRrIyTINEN9EGwBvFWGKHjLo89EVg5zJIprErKez5iOO4ymJSc76KUnZJC+ARVQu5+MFzcl3JGcMDCY1HXPMRsSFoJyi9d471Ld6Y3xDJEE037ApcoEjVC24pruiv9ohp9tCFtVQ27INCraE2713CmUNodMT9Gu4pyhYP65gRYGG5pnTCVc9SWlNfjf3dNPohuQcuh43dW2ADl2bHbrWwcV0/Zq4DOweXO7S7+W4rF+cy9bEcB3t6lwGTg8uG1fl8ljRLAqYXxJdktOIhCSF8d1O6jXJvZvzkZBMaPwbonQjnCxcUtLEA60x/Vpr/8W3GlmiN1uLncvORnZSdrtf653aKt7dLSt7ct1+42nYWKUGfu+HsWWqIsvcR8ddHYV5iOixY0TlSo5iSPFT8zrOb2PgJsBLEIfaSNP0JpKmoR/BsuepWC66RzlmqkK5WHtGgI2eAINnAlwuneQ53NQmZASntFDw3+7fRYk/C5R/XnzjYauhxXCB4vqpepAn9XsQvPop3ZwFeri5cZebs04/elm3pvJTrLJHaIHSYMLzDdbzY1gU2G+quYnJKSZTnq4j17Xbdjk+YpedBicP+Z2pb096YB8+6lnnguYLnnc+1whjdfBFyk6z8mR9z+16x1fTbPIVGC0aVrcpVtWzsfZGbivmcFobVXpQNjp+qvSktHkrSgv+qfQThL4I/27FF2C5zHJrP2YT9TFXQ+3H/n9sAq1j1BhfmU2Wwqb5758//TG8+zRTaMW8BT2UCAgn1OGXYIzDlLORgcsp4HHfg30YT8RAgoOgDIm6fN4Buu7NN5hcxl6yVPIcd7dNziROluruurzdxfIM3VaAm9x/YIJ3kKIV3LyBVzOy9pF9c/AcBTwP+t/Zsf0GWy3EHB8PMa8Km/S0DddrxxyfRQM1+8eSF4dLjQyLMnmbsAm6lq1L1yfHWSvkf6fQj5Dcil3aQg4odCgimPFmlhMfFcXxJGHBeBWWYH5e0hinSAkBOr2+afFPz4IOk4MZ/5ypqjO2mqGaruLudmUWzqVw7wq5KrC4enpBr++B/gNDIaWYbmrwV5vuYcD1i85Nuxb9qiKh6+eB3DKPF/KcA8He+SFX4yIJUJHB9FmQn3Zm7NtljtlCBueS+Q3afXZsZdUlvyxCnZdAdjuOvjmBVBf/wgg0ZSlKwSn0gPIn7O/xP78Qh9qHUJffuSqHJIe7440KCl4XY1NmLEBbEJgHvaKIVwFX2+RvDpfZ45m8jN9wUr6+sI3JP/Ii8j0pMMWEx+YLQilJ2ISyuuxtgzip1gA9wmUJdDuqp/zRgQeLrHqp4hGvOdBe+YUTKdWkhLUjSvkrGRN+88Z8mcUEBqMV/o4TFGA4InnIxLyf8T5r+yRJSFqwFo2WCWPZnCuOPzCfszugYY6KH/E/KEZZBFM6Kp74BrbJgt/hnvFRloZnsuF2ncYej4Ch8EI+EW08E3RH9qWY0aMM/eKZgRKYLhlqPs4xy1fwKOVxx3yVDX1m3BwfyR5ODeZ4OCE0Btc8JiEZMsqEJFgMGdTbdjnABaamnY8DtuP04YABOlIIcCkGgDcGXI8BVqvgAzoKPteFv0fR/g3+Sx0At4dfLdbqCv5sH5wV++pxtYBMAfBQLUeNv1w1cps5M2/mqVWdbaR3BlCA1srQtA5Quqo6FwvX1AxNNcpXDorZfoHq5qCor6p1vFjzukGxnfHIelmwWD0y0W094RfMRa12ydoBCmBXzUWt15CL/jwBh0wvBPymrsJ/poCDdXf/eVC9BbD79w1w9x8=&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
<script type="text/javascript" src="https://viewer.diagrams.net/js/viewer-static.min.js"></script>

1. Front-end written with - <span style="color: #61DBFB;">**React**</span>
2. Api-Gateway written in - <span style="color: #7B6686;">**Elixir**</span>
3. Back-end written in - <span style="color: #F28800;">**Kotlin**</span>
    - **Identity** will manage user registration and authorizations, ex:
      - POST/PUT user info. Provide security token
    - **File Bucket** will store the Subjects' documents, ex:
      - POST/PUT/DELETE file
    - **Course Service** - course hierarchy, relations, ex:
      - POST/PUT subject
    - **User Dashboard** will manage user saving/liking/progress/created subjects, ex:
      - PUT 
        - saves
        - likes
        - progress
      - POST/PUT/DELETE Subjects
    - **Course Dashboard** - course statistics, ex:
      - POST/PUT/DELETE statistics

<br/>

## Backend communication example:

<br/>
<div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers tags lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;app.diagrams.net\&quot; modified=\&quot;2022-09-18T15:56:46.681Z\&quot; agent=\&quot;5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\&quot; etag=\&quot;MkN3zlDEdvY30ly_RG6f\&quot; version=\&quot;20.3.2\&quot; type=\&quot;google\&quot;&gt;&lt;diagram id=\&quot;dKCyTXUS-7JZHuPryBX6\&quot; name=\&quot;Page-1\&quot;&gt;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&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
<script type="text/javascript" src="https://viewer.diagrams.net/js/viewer-static.min.js"></script>


*Some back-end services of course could be merged together, but to showcase distribution they were purposefully split

<br/>

## Other Technicalities

### Elixir Gateway

The functional programming language Elixir incorporates qualities that a well designed Distributed System should have: Scalable, Fault-Tolerant, Reliable, Concurrent are the most important ones. And a gateway is a very important piece of the system - if any of the backend system falls, the other should work just fine and we could still use the app in some way, the story with the gateway is very different. Elixir is built to last and endure high loads. It's strategy for let it fail and supervision builds trust with the developer that the service will do fine. 

### SQL and NoSQL

**Postgres (SQL)** will be used to store users table which shouldn't be subject to future change. Once well defined it shouldn't be a problem to be left as is, and future modification will be improbable and we can rely on SQL's performance to retrieve and store data. 
**MongoDB (NoSQL)** is a flexible document based NoSQL database, if there are any changes in the future or the system will scale, we can leverage its qualities to make those kind of transitions less problematic or even seamlessly compared to the SQL databases.

### Kotlin
Kotlin has a powerful Reactive programming API which empowers Responsivness, Resiliency, Elasticity and is Message Driven - qualities which the system will only benefit from.

