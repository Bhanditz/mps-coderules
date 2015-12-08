import jetbrains.mps.logic.reactor.core.ReactorEvaluationSession
import jetbrains.mps.logic.reactor.core.ReactorPlanningSession
import jetbrains.mps.logic.reactor.predicate.ReactorSessionSolver
import jetbrains.mps.logic.reactor.program.EvaluationSession
import jetbrains.mps.logic.reactor.program.PlanningSession
import org.junit.AfterClass
import org.junit.Before
import org.junit.BeforeClass
import org.junit.Test
import kotlin.test.assertEquals

/**
 * @author Fedor Isakov
 */

class TestBasicProgram {

    companion object {
        @BeforeClass @JvmStatic fun setup() {
            ReactorPlanningSession.init();
            ReactorEvaluationSession.init();
        }
        @AfterClass @JvmStatic fun teardown() {
            ReactorEvaluationSession.deinit();
            ReactorPlanningSession.deinit();
        }
    }

    @Before fun beforeTest() {
        program = PlanningSession.newSession("test", ReactorSessionSolver())
        evalConfig = EvaluationSession.newSession(program)
    }

    lateinit var program: PlanningSession
    lateinit var evalConfig: EvaluationSession.Config

    @Test
    fun replace() {
        program.addRules(arrayListOf(
            rule("main",
                headReplaced(
                    constraint("main")
                ),
                body(
                    constraint("foo")
                )),
            rule("main.foo",
                headReplaced(
                    constraint("foo")
                ),
                body(
                    constraint("bar")
                ))
        ))
        assertEquals(program.rules().count(), 2)
        val session = evalConfig.start()



    }
}
