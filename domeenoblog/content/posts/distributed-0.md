---
title: "Distributed Systems #0 - General System Architecture"
date: 2022-09-18T16:19:32+03:00
draft: false
---


<i>This project is based on building an app in a distributed manner, using distributed systems principles, building blocks and practices at the best of my understanding and skill. </i>

<br/>

<img src="https://www.mindmapper.com/wp-content/uploads/2019/01/mind-map-graphic-1024x640.jpg"/>

## 1. Project Description & Goals (Non Technical)

The app will be a ***medium + udemy with Mind Maps***. Mind maps are a way to store information on different **subjects** to improve the learning experience through a visually structured hierarchical tree. Subjects are presented from top level views to more advanced topics that are related to each other and grouped between. 

The system will be back-end focused, but a small front-end interface may be tackled to ease the interaction with the server-side flows.

- ***subject*** refers to an entire tree composed of topics related to the subject.
- ***topics*** refer to a subject's modules and can be referenced or refere to other topics that all relate to one subject. They will be stored as markdown files.

<br/>


**The app will:**
- Store user subjects and topics;
- Organize the topics in a hierarchical manner;
- Log on/Log in users;
- Save user's saved/liked subjects;
- Save subject number of saves and likes.


**Nice to have *(depending on the time & complexity)*:**
- Front-end interface
- Real-time topic editing

<br/>
<br/>

## 2. System Architecture

<div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers tags lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;app.diagrams.net\&quot; modified=\&quot;2022-09-19T16:25:02.027Z\&quot; agent=\&quot;5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\&quot; etag=\&quot;L0eQ7UA3Sl5gjPfChSrV\&quot; version=\&quot;20.3.2\&quot; type=\&quot;google\&quot;&gt;&lt;diagram id=\&quot;cb_ynF3PT7aozFD-mhS3\&quot; name=\&quot;Page-1\&quot;&gt;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&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
<script type="text/javascript" src="https://viewer.diagrams.net/js/viewer-static.min.js"></script>

1. Front-end or the interface will be written with - <span style="color: #61DBFB;">**React**</span>
2. Api-Gateway written in - <span style="color: #7B6686;">**Elixir**</span>
3. Back-end written in - <span style="color: #F28800;">**Kotlin**</span>
    - User Service:
        - POST/PUT users
        - POST/PUT/DELETE saves/likes/subjects
        - Authorize users
    - File bucket:
        - POST/PUT markdown files
    - Course Service:
        - POST/PUT subjects/topics
        - Track hierarchy
        - Store topic's attached document's location
        - Keep track of the number of saves, clicks and likes
<br/>
<br/>

## 3. Backend communication example:

<div class="mxgraph" style="max-width:100%;border:1px solid transparent;" data-mxgraph="{&quot;highlight&quot;:&quot;#0000ff&quot;,&quot;nav&quot;:true,&quot;resize&quot;:true,&quot;toolbar&quot;:&quot;zoom layers tags lightbox&quot;,&quot;edit&quot;:&quot;_blank&quot;,&quot;xml&quot;:&quot;&lt;mxfile host=\&quot;app.diagrams.net\&quot; modified=\&quot;2022-09-19T16:37:20.325Z\&quot; agent=\&quot;5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\&quot; etag=\&quot;H_z5jgmcIf-8iOPRzjLf\&quot; version=\&quot;20.3.2\&quot; type=\&quot;google\&quot;&gt;&lt;diagram id=\&quot;dKCyTXUS-7JZHuPryBX6\&quot; name=\&quot;Page-1\&quot;&gt;7Zxfc6M2EMA/jacznUkGEBj8GNvJ5aGduWl60/RRBsXQYMQJYTv99JVA/JPAcRxM6Nh3cxdYwQqkn3ZXu9xNwGKz/0Zg7P+OPRRODM3bT8ByYhi6NgPsB5e85RJraueCNQk8cVEleAr+RcWdQpoGHkoaF1KMQxrETaGLowi5tCGDhOBd87IXHDZ7jeEaKYInF4aq9K/Ao34udSytkj+iYO0XPeuaaNnA4mIhSHzo4V1NBO4nYEEwpvnRZr9AIR+8Ylzy+x46WssHIyiix9zwuJw/7r2E7F+dyNv+fE7j5fONkWvZwjAVLywelr4VI4Ai744PJDtzQ5gkgTsBc59uQibQ2SHBaeQh3onGzhJK8Cta4BCT7HZ2jWmbTtlSDCLIJJDQQneEI9bhHO0D+iw08+O/ud5bS5wt96Kb7ORNnKgjIQYnwSlx0YHX18XrIq9BgRjAbwhvECVv7IJdNffF1Pu1aS9kBIWQBtsmO1AguC7VlT18xwF7ZEMTywUUrIjFUrJTqMhfSNxVn+t3FFmyIjbya0QVReyg9tqVKEPpA1jpbVxNQzZa8xU7WNNs1nLBC86evCJu+jPFRcNNklmEO3aBrsf7/DbRXij6kSDC2p8Q2QZstoVa9ty55mZvTFx7Agn1CmWO384PKHqKYUbQjpm3JvdN0gW+L0EY1uC/f5jrpiHepS7PfmeLhzJgcMTEs4MobxGhaH+QUdFqTJtz74jTGsK60cKwqXXj2uDjwzCYF25krFEZGVPrycjIigY3MtaARmbBBiVBVzNTuRhzbGZmeuFmxh6XmXH6MjPOF5sZe0Az8xCE3MjMU/cV0Yu3MaYxMhtTdNYrC6DL5RAEaeZy0tU/fG/7CRzYgNMPzrkQwTBY8zl12TSyOBvM+fQFbIN8Jxo2gefxblohaxpU/thii6/rKkqMe3Nx1w86uuSedLuFHa2FHXA2dnSFHV2Zp086qHIEmw5Kl8YeHBh7DyZ+aTeG9WDF6hqJBzNkhJwTPZiyrdeH9WCG6sF6D41GTd5IgFI4kG3NqTsvw7KGBcpRgAJXoEawlbd7irGN2cBAzRSg8qyeiK1IZ2CT+DDmh+kmvHMprgcov8EVCr/jJBBR6QpTijctEQzFUjx8LGBdIXIf8YttNWakJfQFLWBNzxW9AHV3jV+va/7r99VADiZOdSJA9kZnXvNAjUquRI3BiwCrpzgXyO7o3ESpYcmVqDEEumB2IlH6rKnIHDj3B9S4ZCCeBskpjwQX3ZndWnZjog2tJ2KGzhabxtmJGXUVwgSjQku2RHZfvk3XZE3nBgu0gHUtQ3zFFxXTIuT+sjqEeeG1TnPctc6TrYysaHgrM2Sxs+ubinq658JNj1wBHYHpUTdZ5yuBPsEt52OJ3XSDomsF9DMVUFtrQWfQCqip7qbMvt3WqLfn7/s1Z1R+Ta6A2qfmGpUwXDZPZ3Zrllp7ty6KvJEApXAg1ytODZScgUvqlrrNvxas3o1UBq1YWernwePPBo99ASvr7tTMrmwJZgPn6azz76Cvmd08szudVb/Mpvk/9QMYOcs7+D7Z+j8WL8dOi2IT5CjxVDxmspM5Nx3de2RfP+Lz3uqiQhgXAv2W35Fvi90if0Ix+ytl8ccvSSlOavriTnVGp7pSi+ZBClcwa9n5iPCfMBsD6vNjP0AEEtfPOckaVlyeMK3eUQ8B+EOUw5HwJErC4h3eNyM1AzCI+CXFAy4Z1SsMiXfcS/7Kl6Z2w/78gZIYRwlqv623jEESQzeI1kxgVWd/8qBtyT9ybU8UYBZrvYSZsfADz0PRweTBoUXfQzRnyd++TtVorlxldVOgfILWXzzXVouVF1V3wujAmjI5fz/iEEOP417emy+ElVwE6QbNqq2mmpoQu3lekP/7c1IuHBbFM4dwBXgQgFuzX60Ay5XnIwBmp9W/48+dSPW/IYD7/wA=&lt;/diagram&gt;&lt;/mxfile&gt;&quot;}"></div>
<script type="text/javascript" src="https://viewer.diagrams.net/js/viewer-static.min.js"></script>

<br/>
<br/>

## 4. Other Technicalities

### - Elixir Gateway

The functional programming language Elixir incorporates qualities that a well designed Distributed System should have: Scalable, Fault-Tolerant, Reliable, Concurrent are the most important ones. And a gateway is a very important piece of the system - if any of the backend system falls, the other should work just fine and we could still use the app in some way, the story with the gateway is very different. Elixir is built to last and endure high loads. It's strategy for let it fail and supervision builds trust with the developer that the service will do fine. The gateway will use:
- Load Balancing - distribute requests evenly to the services, based on load.
- Circuit breaker - it will trip and return a failure response and log it internally
- Outbound REST API calls
- Remove a service if a maximum of failed calls is reached

### - SQL and NoSQL (Back-end)

**Postgres (SQL)** will be used to store users table which shouldn't be subject to future change. Once well defined it shouldn't be a problem to be left as is, and future modification will be improbable and we can rely on SQL's performance to retrieve and store data. 
**MongoDB (NoSQL)** is a flexible document based NoSQL database, if there are any changes in the future or the system will scale, we can leverage its qualities to make those kind of transitions less problematic or even seamlessly compared to the SQL databases.

### - Kotlin (Back-end)
Kotlin has a powerful Reactive programming API which empowers Responsivness, Resiliency, Elasticity and is Message Driven - qualities which the system will only benefit from. Therefore we can implement the following:
- Task distribution between services
- Task timeout
- Status Endpoints
- Unit testing
- RPC (remote procedure call)
- Concurrent Task limit

### - Cache
The cache service will prevent the services from unnecessary overloading. If we store public information that was accessed before we can store it and not make unnecessary calls to the services through the network - it can save us time and enhance system's performance.
- Query Language - it will be implemented in <span style="color: #7B6686;">elixir</span> and it will use a DSL to retrieve and store data.


