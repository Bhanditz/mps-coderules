import jetbrains.mps.logic.reactor.core.LogicalObserver
import jetbrains.mps.logic.reactor.core.LogicalImpl
import jetbrains.mps.logic.reactor.evaluation.PredicateInvocation
import jetbrains.mps.logic.reactor.logical.*
import jetbrains.mps.logic.reactor.program.Predicate
import jetbrains.mps.logic.reactor.program.PredicateSymbol
import java.util.*

/**
 * @author Fedor Isakov
 */


fun <T: Any> anon(value: T) = LogicalImpl(value)

fun <T: Any> logical(name: String) = LogicalImpl<T>(name)

fun <T: Any> logical(name1: String, name2: String) = Pair(LogicalImpl<T>(name1), LogicalImpl<T>(name2))

fun <T: Any> logical(name1: String, name2: String, name3: String) =
    Triple(LogicalImpl<T>(name1), LogicalImpl<T>(name2), LogicalImpl<T>(name3))

inline fun <reified T: Any> metaLogical(name: String) = MetaLogical<T>(name, T::class.java)

inline fun <reified T: Any> metaLogical(name1: String, name2: String) =
    Pair(MetaLogical<T>(name1, T::class.java), MetaLogical<T>(name2, T::class.java))

inline fun <reified T: Any> metaLogical(name1: String, name2: String, name3: String) =
    Triple(
        MetaLogical<T>(name1, T::class.java),
        MetaLogical<T>(name2, T::class.java),
        MetaLogical<T>(name3, T::class.java))

fun <T: Any> Logical<T>.get(): T = findRoot().value()

fun <T: Any> Logical<T>.getNullable(): T? = findRoot().value()

fun <T: Any> Logical<T>.set(t: T) {
    if (this is JoinableLogical<T>)
        findRoot().setValue(t)
    else
        throw IllegalStateException("unexpected receiver $this")
}

data class MockObserverEvent(val logical: Logical<*>, val event: String) {}

fun value(logical: Logical<*>) = MockObserverEvent(logical, "value")

fun parent(logical: Logical<*>) = MockObserverEvent(logical, "parent")

class MockObserver : LogicalObserver {

    val events = ArrayList<MockObserverEvent>()

    override fun valueUpdated(logical: Logical<*>) { events.add(value(logical))}

    override fun parentUpdated(logical: Logical<*>) { events.add(parent(logical))}

    fun getAndClearEvents(): Set<MockObserverEvent> {
        val tmp = ArrayList(events)
        events.clear()
        return tmp.toSet()
    }
}

