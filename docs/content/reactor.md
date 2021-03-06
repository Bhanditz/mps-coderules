---
layout: page
title: Constraints Reactor
parent: content/processing.md
weight: 55
---

# Constraints Reactor

Constraints reactor is a small library written in Kotlin and Java, which implements the extended semantics of constraints processing. Its main features are:

- native support for terms and unification
- observable logical variables
- fast lookup of matching production from constraint’s arguments
- Rete-like algorithm for finding potential matches

### Implementation notes

Unification is implemented according to a “near-constant time” algorithm[^uni]. Occurs check is done on terms being unified to avoid infinite terms. 

A trie (a prefix tree) on flattened terms[^trie] is used for indexing productions by constraints and their arguments. 

Search for matching productions is implemented with a trie, with each node corresponding to a partially matched production. Each constraint activation or disposal event updates this trie. The leaves correspond to fully matched productions.

Persistent structures used for implementing internal state, which are useful for tracking and restoring the state of constraints program.

### Open questions

#### Nested logical variables

Logical variables serving as constraint arguments trigger reactivation of such constraints on any change, such as value bound or parent changed. Might be a good idea to also trigger reactivation on changed variable contained in a term, which serves as a constraint argument.

#### Restoring the state of logical variables

One of the extensions supported by this implementation is the alternative body branches. The state of constraints store that is valid for the stack frame corresponding to triggering a production, before activating body constraints, can be restored, but the state of logical variables is unpredictable. This may lead to unexpected results.

[^uni]: Baader, Franz, and Wayne Snyder. "Unification Theory." Handbook of automated reasoning 1 (2001): 445-532.
[^trie]: Alan Robinson and Andrei Voronkov (Eds.). 2001. Handbook of Automated Reasoning. Elsevier Sci. Pub. B. V., Amsterdam, The Netherlands, The Netherlands. Chapter 26.
