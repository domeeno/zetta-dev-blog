---
title: "🌿 Kotlin: No IF-ELSE statement?!"
date: 2023-05-19T16:53:30+03:00
draft: false
tags: ["kotlin", "programming-languages"]
---

</br>

- [📜 Statements](#-statements)
- [🧮 Expressions](#-expressions)
- [🧘 The importance of the Expression vs Statement distinction](#-the-importance-of-the-expression-vs-statement-distinction)
- [📝 Conclusion](#-conclusion)
  - [☕ Buy me a coffee](#-buy-me-a-coffee)

</br>

This post highlights the great practice of programming languages that are **expressive** and how they avoid the design flaw of **statements** used in languages like **Java**, **C#** and **GO**. It gives a deeper meaning to the everyday `if` code you are so used to writing by now.

</br>

In Kotlin there are no `if` statements. And there's a good reason why. **Kotlin** is a functional expressive language, and that's why `if` is treated as an ***expression*** instead of a statement. Inspired by languages like **Haskell**, **Ruby** and the beloved **Rust** they all have in common that they treat their `if`s as expressions.

So what is the difference and how is this design choice better than the traditional broadly used `if` statement?

</br>


## 📜 Statements

Let's see **Java**'s `if` statement:

```java
final double originalPrice = 75.0;
final double discount = 0.15;

double discountedPrice = 0.0;

if (originalPrice > 100.0) {
    discountedPrice = originalPrice - (originalPrice * discount);
} else {
    discountedPrice = originalPrice;
}

System.out.println(discountedPrice);
```

</br>

The `if` code above does a simple check for discount eligibility. If the original price is greater than 100, then a discount is applied. This is an example of how if statements are used for flow control. 

</br>

In other words, the if statement has side effects (change of discountedPrice based on the condition). They change state which can lead to unexpected behavior and bugs.

How is this different from an expression? Well to give you the answer we'll move on to Kotlin's expressions.

## 🧮 Expressions

Here's a peak at Kotlin's `if` expression:

```kotlin
val originalPrice = 75.0
val discount = 0.15

val discountedPrice = if (originalPrice > 100.0) {
    originalPrice - (originalPrice * discount)
} else {
    originalPrice
}

println(discountedPrice)
```

Again you're dealing with the familiar `if` condition but this time it is a bit different - this particular `if` is an **expression**. Expressions, unlike statements, always return a value. They allow the developer to completely avoid side effects, giving results that are more predictable and less error prone. 

Take a look at the `discountedPrice` - it is declared as a `val`, and it is how Kotlin declares immutable (a constant if you may) variables. In Kotlin, when declaring something, you're always put before the choice of using `val` or `var`. It is the first keyword used in variable declarations. It forces the developer to be mindful about the mutability of the variable.

## 🧘 The importance of the Expression vs Statement distinction

The Java, C# and languages alike using statements unfortunately expose the developer at the risk of missing and introducing unexpected side effects in his code.

How does this improve your code? 

- **Expressions Improve Redability** - It makes it easier to read and understand the code.
- **Expressions Give Predictable Outcomes** - The last thing you want to do when writing code is to guess the results. By returning a result, you can completely avoid modifying states or values.
- **Immutability and Multi-threading** - `if` expressions promote immutability by default, and immutability is a great match when writing multi-threaded code. Using `if` statements in mutli-threading environment, may result in unexpected behavior and unwanted race conditions which is hard to detect and debug - the perfect formula for disaster. Immutable variables are thread safe as their value is unlikely to ever change.

<br/>

## 📝 Conclusion

Some other operators that are expressions in Kotlin are `when`, `try/catch`, `for` and `while` loops - meaning they all return a value by the end of their execution. [Read more](https://kotlinlang.org/docs/control-flow.html).

This was a short mini-post which highlights the difference between **expressions** and **statements**. It is a great insight to have and a nice distinction to know when writing code in different languages. Look out for state changes and always use constants as the first choice when declaring variables.

<br/>

Read my other article on [Kotlin's pragmatic approach](http://localhost:1313/posts/kotlin-intro/) to learn more about the beautiful language that is Kotlin.


<br/>
<br/>

Cheers,\
Yours forever, good guy Developer,\
Flocea Dominic.

### ☕ Buy me a coffee
[P. S. If you liked the post consider buying me a coffee.](https://www.buymeacoffee.com/domeenodev)
