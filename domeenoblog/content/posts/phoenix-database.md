---
title: "Phoenix and Databases - all you need to start REST-ing"
date: 2021-10-26T14:51:37+03:00
draft: true
tags: 
    - Phoenix
    - Elixir
    - Backend
    - REST
    - DevTalk
---

One of the weirdest thing that I didn't expect to have problems with is with the database connection. Thus I have been subjected to a real expedition to search for answers to my use cases in the depths of stackoverflows and blogposts, I even went through the documentation of the Phoenix Framework. 
To be brief, if you know about `Ecto`, it can do a lot of things for you, but I took a more old school approach and write the database scripts on my own.
I initialized a postgresql database, for the sake of simplicity I will name it - mypostgresdb. I wanted to use schemas to better manage it and I generally think it's a good practice and if there is the option to modularize parts of the project for better management - it's a good idea to use it. 

