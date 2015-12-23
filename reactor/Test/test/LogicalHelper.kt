import jetbrains.mps.logic.reactor.constraint.*
import jetbrains.mps.logic.reactor.logical.Logical
import jetbrains.mps.logic.reactor.logical.LogicalContext
import jetbrains.mps.logic.reactor.logical.LogicalPattern
import jetbrains.mps.logic.reactor.logical.NamingContext
import java.util.*

/**
 * @author Fedor Isakov
 */


fun <T: Any> logical(name: String) = TestLogical<T>(name)

fun <T: Any> logical(name1: String, name2: String) = Pair(TestLogical<T>(name1), TestLogical<T>(name2))

fun <T: Any> logical(name1: String, name2: String, name3: String) =
    Triple(TestLogical<T>(name1), TestLogical<T>(name2), TestLogical<T>(name3))

inline fun <reified T: Any> logicalPattern(name: String) = TestLogicalPattern<T>(name, T::class.java)

inline fun <reified T: Any> logicalPattern(name1: String, name2: String) =
    Pair(TestLogicalPattern<T>(name1, T::class.java), TestLogicalPattern<T>(name2, T::class.java))

inline fun <reified T: Any> logicalPattern(name1: String, name2: String, name3: String) =
    Triple(
        TestLogicalPattern<T>(name1, T::class.java),
        TestLogicalPattern<T>(name2, T::class.java),
        TestLogicalPattern<T>(name3, T::class.java))

fun <T: Any> Logical<T>.get(): T = findRoot().value()

fun <T: Any> TestLogical<T>.set(t: T) {
    find().value = t
}

data class TestLogical<T>(val name: String, var value: T?, var parent: TestLogical<T>?) : Logical<T> {

    constructor(name: String) : this(name, null, null) {}

    override fun name(): String = name

    override fun name(namingContext: NamingContext?): String? {
        throw UnsupportedOperationException()
    }

    override fun pattern(): LogicalPattern<Logical<T>> = TODO()

    override fun findRoot(): Logical<T> = find()

    override fun value(): T? = value

    override fun isBound(): Boolean = find().value != null

    override fun isWildcard(): Boolean {
        throw UnsupportedOperationException()
    }

    fun find(): TestLogical<T> {
        val tmp = parent
        if (tmp == null) return this
        else {
            val root = tmp.find()
            this.parent = root
            return root
        }
    }

    fun union(other: TestLogical<T>) {
        if (find() != other.find()) find().parent = other
    }
}

data class TestLogicalPattern<T>(val name: String, val type: Class<T>) : LogicalPattern<T> {

    companion object {
        val random = Random()
    }

    var wildcard = false

    constructor(type: Class<T>) : this("_${random.nextInt()}", type) {
        wildcard = true
    }

    override fun name(): String = name

    override fun name(namingContext: NamingContext?): String? = TODO()

    override fun isWildcard(): Boolean = wildcard

    override fun type(): Class<T> = type

    override fun instance(): Logical<T> = TestLogical<T>(name)

}


data class TestEqPredicate(val left: Any, val right: Any) : Predicate {

    override fun arguments(): List<Any> = listOf(left, right)

    override fun symbol(): PredicateSymbol = PredicateSymbol("equals", 2)

    override fun invocation(logicalContext: LogicalContext): PredicateInvocation {
        return object: PredicateInvocation {

            override fun predicate(): Predicate = this@TestEqPredicate

            override fun arguments(): Collection<Any> = argumentValues(logicalContext)
        }
    }
}