---
layout: page
title: Introduction
weight: 10
---

# Introduction

This project is an attempt to bring logic programming to JetBrains MPS[^mps] in order to facilitate tasks related to source model analysis, and which require logical inference of some kind to operate. Examples include type checking and control flow.

Type system in MPS is traditionally defined with help of type checking rules, in particular inference rules, which allow for making logical statements about types, such as “*is a*” or “*is a subtype of*”, enabling the internal engine to infer the specific type, deriving it from a collection of such statements, which are referred to as type equations and inequalities.

![](img/intro-assignment-550.png)  
_(statement in `j.m.lang.typesystem` language)_

Albeit brief and concise, this notation leaves many questions unanswered when it comes to how exactly the system of equations and inequalities is processed. In other words, type inference is — for the most part — left up to the internal engine to decide. This limits the options for the author of type system to control how exactly subtyping is defined, and what happens with type parameters when computing sub- or supertype. Java, for instance, has several kinds of “conversions” with clearly defined rules controlling how types are transformed and what types are compatible in certain situations. All of this has to be emulated with “strong” and “weak” subtyping in MPS.  

Another example is the all too well known *when_concrete*, which is basically a suspended block that gets executed when the type, that serves as its parameter, is computed. Sometimes this never happens during type inference, which results in numerous “*when concrete is never concrete*” warnings, leaving the user wondering what went wrong. This, however, is very much a necessary evil, since there are no other possibilities to hook into the engine in order to spy on types, and knowing the exact form of a type is sometimes required for further inference.

Consider how type of a method call is calculated: details aside, in essence *when_concrete* has to be applied to types of each argument. Then we should either turn to inequalities and rely on the inference engine, or analyse the type structure and run closing computation when the *last* unknown type is finalised.

![](img/intro-methodcall-550.png)  
_(example of processing method arguments)_

Code rules may have a solution to these and other issues. The core idea is to employ a **production system** to process facts and relations, collectively known as constraints, with the user being in full control of what productions to generate for given source code (model). With **logical variables** representing unknowns, and with support for **pattern matching** making use of term algebra and unification, it is pretty straightforward to define the core of type inference or a similar framework without having to rely on opaque implementation and pre-defined relations.

To illustrate the idea, let’s look at a couple of examples. These are taken from the type system implementation for BaseLanguage.

Type checking assignment expression could look like the following. What the code says is basically: once left and right sides of the assignment have types (not necessarily ground types), test if left side’s type converts to right side’s. Constraint `convertsTo/2` is defined in the same aspect, and the typesystem author has full control how it deals with type parameters, for example.

![](img/intro-assignprod-700.png)  
_(type checking assignment with constraint production)_

Instead of waiting until a type has been finalised in order to access its structure, *pattern matching* is used to trigger productions only on types of certain form. The example below shows how `convertsTo/2` is resolved for an instance of `LowerBoundType`.

![](img/intro-converts-550.png)  
_(resolution of `convertsTo/2` constraint using pattern matching)_

The following is the list of features made available to users of MPS with *code rules* plugin.  

 - A language for building rules that serve as production templates. The rules may be concept-specific or standalone, if there is a need to provide constraints that are invariant for every invocation.

 - *Constraint Processing System* — an extension of CHR[^chr] semantics allowing the use of unification in production’s head with automatic binding of logical variables on successful match. This extension also supports alternative body branches, as well as calling arbitrary Java code. Representing type inference in the form of logical productions helps achieve extensibility, as productions defined by extension languages can be easily blended in.

 - A framework for executing a constraints program, with support for error reporting from production’s body, as well as a façade interface for accessing the results of a constraints program execution. The UI also includes a tracing tool for providing insights into how constraints are processed.

 - Finally, an embedded engine capable of processing constraints, which accepts a list of productions sorted by handler, an initial active constraint, and, optionally, a store of inactive constraints, and yields an updated store after all matched productions have been fired.

Examples are provided that demonstrate the use of this technology for type checking and other analyses.


[^mps]: Meta Programming System [https://jetbrains.com/mps](https://jetbrains.com/mps)
[^chr]: Constraint Handling Rules [http://www.informatik.uni-ulm.de/pm/fileadmin/pm/home/fruehwirth/constraint-handling-rules-book.html](http://www.informatik.uni-ulm.de/pm/fileadmin/pm/home/fruehwirth/constraint-handling-rules-book.html)
