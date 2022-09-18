---
title: "Build a JWT Phoenix Elixir API from scratch Made Easy"
date: 2021-10-26T14:36:36+03:00
draft: true
tags: 
    - Phoenix
    - Elixir
    - Backend
    - API
    - DevTalk
---

I love functional programming and I love Elixir! I have a `love`/`never try again` type relationship with this language.

I don't think it gets the traction that it deserves. It is a powerful language and it offers a lot of tools to make your life easy, and the guys developing it are putting a lot of effort to make it a multi-purpose language that you can use in different scenarios and at the same time to be a pleasant experience.

This article covers a simple API that will create, read, update and delete entries from a Postgresql schema

Prerequisites:
installed ```elixir``` compiler and ```mix``` package manager.

## Install Phoenix Framework

Mix is your companion in the world of building, managing, testing elixir applications. It's a great complementary tool and we will use it to install the phoenix framework:

```
 mix archive.install hex phx_new   
```

This will install ```phx``` utility that will let us create an API foundation for our app.

## Initialize working directory

You have ```phx``` installed, now it's time to build our project. 
Here's where I had a lot of issues with versioning of the Phoenix framework. Cursing every decision in my life, I finally found what I needed. 
By default ```phx.new``` creates an application which contains server rendered code. We don't want that, we want a simple backend API so we will pass it some flags.

```
Phoenix 1.2 
mix phx.new --no-webpack --no-html potion_api

Phoenix 1.3
mix phx.new --no-brunch --no-html potion_api

Phoenix 1.4 and higher
mix phx.new --no-assets --no-html
```

Giving it the flags `--no-assets` and `--no-html` we're telling the tool to ignore front-end code and what remains is a pure clean backend skeleton for our future REST API
