package jetbrains.mps.lang.typesystem2.samplechecker.template;

/*Generated by MPS */

import jetbrains.mps.logic.reactor.evaluation.Queryable;
import jetbrains.mps.logic.reactor.evaluation.PredicateInvocation;
import java.util.Arrays;
import jetbrains.mps.logic.reactor.logical.Logical;
import jetbrains.mps.lang.typesystem2.samplechecker.handle.util.SubtypePathSolver;
import jetbrains.mps.lang.typesystem2.samplechecker.handle.util.LubSolver;

public class ExpressionSolver implements Queryable {

  @Override
  public boolean ask(PredicateInvocation invocation) {
    switch (Arrays.binarySearch(stringSwitchCases_rbjxpx_a0a0b, String.valueOf(invocation.arguments().get(0)))) {
      case 24:
        return eval_8490564095239449965();
      case 12:
        return eval_3818381737785918511();
      case 13:
        return eval_3818381737785918529();
      case 4:
        return eval_2413945841516136365();
      case 22:
        return eval_6433032998740858010();
      case 10:
        return eval_3818381737785437901();
      case 21:
        return eval_6433032998740857672();
      case 11:
        return eval_3818381737785438123();
      case 6:
        return eval_2815152073368565737();
      case 19:
        return eval_6433032998739462746();
      case 20:
        return eval_6433032998739928692();
      case 16:
        return eval_4954708137221254423();
      case 9:
        return eval_3818381737785392769();
      case 17:
        return eval_5474059076247347166();
      case 7:
        return eval_3476135434775506825();
      case 14:
        return eval_3818381737787721578((Logical) invocation.arguments().get(1), (Logical) invocation.arguments().get(2));
      case 15:
        return eval_3818381737787721597();
      case 23:
        return eval_8309386291062717374();
      case 2:
        return eval_2119840812316470003();
      case 1:
        return eval_1495793802505858891();
      case 18:
        return eval_6090918609100367715();
      case 3:
        return eval_2413945841515878180();
      case 8:
        return eval_3476135434775508031();
      case 0:
        return eval_1083812994908902003((Logical) invocation.arguments().get(1), (Logical) invocation.arguments().get(2), (Logical) invocation.arguments().get(3));
      case 5:
        return eval_2774290188069062745((Logical) invocation.arguments().get(1), (Logical) invocation.arguments().get(2), (Logical) invocation.arguments().get(3));
      default:
        throw new UnsupportedOperationException("unknown expression: " + String.valueOf(invocation.arguments().get(0)));
    }
  }

  @Override
  public void tell(PredicateInvocation invocation) {
    if (!(ask(invocation))) {
      throw new IllegalStateException("unsatisfied predicate: " + invocation.predicate().symbol());
    }
  }

  public boolean eval_8490564095239449965() {
    return true;
  }
  public boolean eval_3818381737785918511() {
    return false;
  }
  public boolean eval_3818381737785918529() {
    return false;
  }
  public boolean eval_2413945841516136365() {
    return false;
  }
  public boolean eval_6433032998740858010() {
    return true;
  }
  public boolean eval_3818381737785437901() {
    return false;
  }
  public boolean eval_6433032998740857672() {
    return true;
  }
  public boolean eval_3818381737785438123() {
    return false;
  }
  public boolean eval_2815152073368565737() {
    return false;
  }
  public boolean eval_6433032998739462746() {
    return false;
  }
  public boolean eval_6433032998739928692() {
    return true;
  }
  public boolean eval_4954708137221254423() {
    return false;
  }
  public boolean eval_3818381737785392769() {
    return true;
  }
  public boolean eval_5474059076247347166() {
    return true;
  }
  public boolean eval_3476135434775506825() {
    return true;
  }
  public boolean eval_3818381737787721578(Logical arg0, Logical arg1) {
    return ((Logical) arg1).findRoot() == ((Logical) arg0).findRoot();
  }
  public boolean eval_3818381737787721597() {
    return true;
  }
  public boolean eval_8309386291062717374() {
    return true;
  }
  public boolean eval_2119840812316470003() {
    return true;
  }
  public boolean eval_1495793802505858891() {
    return true;
  }
  public boolean eval_6090918609100367715() {
    return true;
  }
  public boolean eval_2413945841515878180() {
    return true;
  }
  public boolean eval_3476135434775508031() {
    return true;
  }
  public boolean eval_1083812994908902003(Logical arg0, Logical arg1, Logical arg2) {
    return SubtypePathSolver.findSubtypingPath(arg0, arg1, arg2);
  }
  public boolean eval_2774290188069062745(Logical arg0, Logical arg1, Logical arg2) {
    return LubSolver.findLub(arg0, arg1, arg2);
  }

  private static String[] stringSwitchCases_rbjxpx_a0a0b = new String[]{"1083812994908902003", "1495793802505858891", "2119840812316470003", "2413945841515878180", "2413945841516136365", "2774290188069062745", "2815152073368565737", "3476135434775506825", "3476135434775508031", "3818381737785392769", "3818381737785437901", "3818381737785438123", "3818381737785918511", "3818381737785918529", "3818381737787721578", "3818381737787721597", "4954708137221254423", "5474059076247347166", "6090918609100367715", "6433032998739462746", "6433032998739928692", "6433032998740857672", "6433032998740858010", "8309386291062717374", "8490564095239449965"};
}
