/*
 * Copyright 2014-2017 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package jetbrains.mps.logic.reactor.util

import com.github.andrewoma.dexx.collection.ConsList

/**
 * @author Fedor Isakov
 */


fun <E> emptyConsList(): ConsList<E> = ConsList.empty()

fun <E> cons(e: E): ConsList<E> = emptyConsList<E>().append(e)

fun <E> consListOf(vararg args: E): ConsList<E> {
    val builder = ConsList.factory<E>().newBuilder()
    for (e in args) {
        builder.add(e)
    }
    return builder.build()
}

fun <E> Sequence<E>.prependTo(toList: ConsList<E>): ConsList<E> =
    fold(toList) { list, e -> list.prepend(e) }

fun <E> Sequence<E>.toConsList(): ConsList<E> {
    val builder = ConsList.factory<E>().newBuilder()
    val var2 = iterator()

    while (var2.hasNext()) {
        val e = var2.next()
        builder.add(e)
    }

    return builder.build()
}

fun <E> ConsList<E>.removeAt(idx: Int): ConsList<E> {
    if (idx < 0) throw IllegalArgumentException("index < 0")
    val left = this.take(idx)
    var right = this.drop(idx + 1)
    for (e in left.reversed()) {
        right = right.prepend(e)
    }
    return right
}

fun <E> ConsList<E>?.remove(e: E): ConsList<E>? {
    return this?.run {
        val idx = indexOf(e)
        if (idx >= 0) removeAt(idx) else this
    }
}