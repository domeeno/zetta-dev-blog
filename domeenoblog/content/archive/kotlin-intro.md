---
title: "Practical Kotlin Intro: Pragmatism lvl. 80"
date: 2023-05-13T13:15:42+03:00
draft: false
tags: ["kotlin", "programming-languages"]
---

- [Best Features:](#best-features)
  - [- Concise: Write less, do more.](#--concise-write-less-do-more)
  - [- Versatile: Swiss-Army Knife of Languages](#--versatile-swiss-army-knife-of-languages)
  - [- Performance: Coroutines and Reactive Programming](#--performance-coroutines-and-reactive-programming)
  - [- Conclusion, final thoughts and thanks](#--conclusion-final-thoughts-and-thanks)
  - [Buy me a coffee](#buy-me-a-coffee)


Kotlin has experienced an immense growth in popularity, and it's easy to see why. You will personally love the language and its features; by the end, you will want to advocate for it too.

I am not planning to stop using it in my future projects because I love writing Kotlin, and I want to share what I love most about it and try to convince those who haven't tried it to do so after reading this article.

It is an incredibly versatile language that could really take the title of a Full-Stack Language. Engineers at JetBrains have worked hard to create Integrated Development Environments (IDEs) for many different languages, and Kotlin is the result of years of experience.

It takes the best features of different languages, and I would like to highlight these features that I love and that hopefully will make you go "hmm, that's pretty cool."

Here it goes, an introduction to one of my favorite languages so far - Kotlin.

## Best Features:

### - Concise: Write less, do more.

Kotlin is the perfect example of "less is more". If you write Kotlin, you write much less boilerplate code.

- **Extension functions** - Similar to **C#**, it allows you to extend classes with new functionality without having to inherit from the class or use design patterns such as Decorator, resulting in much less code to maintain later on. Kotlin's extension functions are even more powerful and concise than C#'s because they can be used to extend classes with new functionality even if you don't have access to the source code of the class, making your code that much more flexible and adaptive.

```csharp
// example of extension functions in C#
namespace ExtensionMethods
{
    public static class StringExtensions
    {
        public static bool IsPalindrome(this string str)
        {
            var charArray = str.ToCharArray();
            Array.Reverse(charArray);
            var reversedStr = new string(charArray);
            return str.Equals(reversedStr, StringComparison.OrdinalIgnoreCase);
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            string word = "radar";
            bool isPalindrome = word.IsPalindrome();
            Console.WriteLine($"Is \"{word}\" a palindrome? {isPalindrome}");
        }
    }
}
```

```kotlin
// Kotlin extension function
fun String.isPalindrome(): Boolean {
    val reversedStr = this.reversed()
    return this.equals(reversedStr, ignoreCase = true)
}

fun main() {
    val word = "radar"
    val isPalindrome = word.isPalindrome()
    println("Is \"$word\" a palindrome? $isPalindrome")
}
```

For the curious ones, it can be used as an Adapter pattern. Here, we receive an external API user and can easily convert it to our internal API user with absolute grace:
```kotlin

// external Api data class
data class User(val firstName: String, val lastName: String, val age: Int)

// internal Api data class
data class Person(val personName: String, val personAge: Int)

// Adapter example
fun User.toPerson(): Person {
    return Person("$firstName $lastName", age)
}

// usage
fun getPersonFromApi(): Person {
    return externalApi.getUser().toPerson() // no need to create a new Person object explicitly and assign the values
}

```

<br/>

- **Argument-Matching Syntax** - One of my favorite features in **Elixir**, also found in **Erlang** and **Scala**, is the argument-matching syntax. It allows you, the pragmatic developer you are, to write much more readable code. Let's take a look at how it's done in Java, then in Kotlin:

```java
class Developer {
    private String name;
    private int level;

    public Developer(String name, int level) {
        this.name = name;
        this.level = level;
    }

    public String getName() {
        return name;
    }

    public int getLevel() {
        return level;
    }
}

public class Main {
    public static void main(String[] args) {
        Developer developer = new Developer("John", 80);
        // No Destructuring Declaration in Java
        String name = developer.getName();
        int level = developer.getLevel();
        System.out.println("Name: " + name + ", Level: " + level);
    }
}
```

```kotlin
data class Developer(val name: String, val level: Int)

fun main() {
    val (name, level) = Developer("John", 80) // Destructuring declaration
    println("Name: $name, Level: $level")
}
```

<br/>

- **Data Classes** - Like **C#**'s **Record Types** and **F#**'s **Record Types**, as seen in the example above, allows you to create classes that are used to hold data/state and not behavior. It is a very useful feature that allows you to write less code and extremely useful with APIs when using Data Transfer Objects. 

<br/>

- **Named arguments** - Similar to Groovy, Python, Ruby, Scala, it helps you, the developer to improve your readability and your standing amongst the colleagues. 

```kotlin
fun greet(name: String, message: String) {
    println("$message, $name!")
}

fun main() {
    greet(name = "John", message = "Hello") // Named arguments
    greet(message = "Hi", name = "Jane") // Or even with different order
}
```

It even supports default values for function arguments:

```kotlin
fun greet(name: String, message: String = "Hello") {
    println("$message, $name!")
}
```

- **DSL** - The cherry on top and evidence of the elegant, graceful, and concise nature of Kotlin is the ability to create internal DSLs (Domain Specific Language). While it's an advanced topic, Kotlin makes it easy to work with. It's an extremely powerful tool, and I'll provide a simple example of how it can be used to create a concise syntax for creating objects:
  
```kotlin
data class Developer(val name: String, val level: Int)

class DeveloperBuilder {
    var name: String = ""
    var level: Int = 0

    fun build(): Developer {
        return Developer(name, level)
    }
}

fun developer(block: DeveloperBuilder.() -> Unit): Developer {
    val builder = DeveloperBuilder()
    builder.block()
    return builder.build()
}

fun main() {
    // declare a person using the DSL syntax
    val developer = developer {
        name = "John"
        level = 81
    }

    println(developer)
}

```

**Takeaways:**
Kotlin stands by the principle of "less is more" and absolutely delivers on it. As a developer, you will love the experience of writing less code while achieving more. With Kotlin, you have fewer lines of code to maintain, refactor, fix, debug, or read. Surprisingly, this reduction in code doesn't compromise readability; in fact, it enhances it. Now, let's explore how Kotlin empowers you to be versatile in your development process.

### - Versatile: Swiss-Army Knife of Languages

- **Multiplatform** - Kotlin is multiplatform language, meaning you can use it for many different platforms wihtout having to learn a new language. Android fully embraced Kotlin as one of their official languages. It gains popularity as a language for backend server development. It can be transpiled to JavaScript code or native binaries to run on iOS, Windows, Linux, Mac, even to WebAssembly to run in browsers. 

- **Self-Expression** - Kotlin is a **multi-paradigm programming language**. Choosing it does not marry you to one specific way to do things. Which can be both good and bad. But Kotlin knows you are a pragmatic developer and it gives you the freedom of choice on how to do things your way. This is great for Functional Programming (FP), Kotlin has a lot of features that make it a great choice for FP. 

- **Interoperability** - Kotlin is a language which runs on the Java Virtual Machine (JVM) just like Java (of course), Scala and Groovy. It can be used alognside Java. This is great for a number of reasons. It means you can still use your Java libraries, frameworks, tools, etc. And if you plan on fully migrating to Kotlin, it can be done gradually, in sprints, without having to rewrite everything at once.

- **Tooling** - Kotlin has great tooling support. It has a great IDE support being from the guys that build IDEs for a living. If you work with Java and have **Intellij** already installed, well great news, you can start writing Kotlin right now.

- **Community** - Kotlin has a great community, it is a language that is growing in popularity. Spring Framework, one of the most popular Java frameworks, and used by many-many enterprise projects has officially embraced Kotlin as one of their official languages.

**Takeaways:**

Kotlin is here to stay, it is used across many different platforms, offers a lot of freedom for self-expression, it is highly interoperable with Java (one of the most used languages in enterprise), has a great tooling and a big welcoming community.

### - Performance: Coroutines and Reactive Programming

- **Async and Coroutines** - 
We're reaching a point where hardware performance is slowly starting to reach its limits. The hardware isn't the bottleneck anymore, and software is where we can improve by harnessing the power of multi-threaded and asynchronous programming.
Kotlin has innovated in the area of asynchronous programming with the introduction of **Coroutines**. It has made writing asynchronous code efficient and, most importantly, easier to write and read. This is great for the uninitiated in the black magic world of multi-threaded programming, providing a gentle introduction and more room to avoid errors.

- **Reactive Programming** - Kotlin has support for reactive programming which helps you write asynchronous, event-driven code in a declarative way. Spring WebFlux is a great example of a reactive framework that can be used with Kotlin to write reactive back-end code. I am working currently on my own project which I want to make fully reactive from front-end down to the database connection, and luckily I can use Kotlin for that together with Spring WebFlux, which helps me show the user results much faster, takes care of heavy system loads with integrated backpressure mechanisms and overall beautiful syntax in my opinion.

**Takeaways:**

Kotlin has innovated asynchronous programming with the introduction of Coroutines, allowing even the uninitiated to write asynchronous code. It also has support for reactive programming which is great for writing event-driven code which I think will be required more and more.

### - Conclusion, final thoughts and thanks

I hope you enjoyed the article, would love to hear your feedback, if you liked it please share it with someone who you think might find this interesting. I love how programming languages tackle different challenges and from my experience by far Kotlin is one of the most versatile ones while also being a pleasure to write in. Thank you so much for reading, I hope you have a great day, would love to hear your feedback, you can find me on socials at the top of this page.

<br/>
<br/>

Cheers,\
Yours forever, good guy Developer,\
Flocea Dominic.

### Buy me a coffee
[P. S. If you liked the post consider buying me a coffee.](https://www.buymeacoffee.com/domeenodev)
