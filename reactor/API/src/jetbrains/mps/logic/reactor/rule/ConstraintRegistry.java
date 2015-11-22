package jetbrains.mps.logic.reactor.rule;

/*Generated by MPS */

import jetbrains.mps.logic.reactor.constraint.BuiltinConstraint;
import jetbrains.mps.logic.reactor.constraint.ConstraintSymbol;
import jetbrains.mps.logic.reactor.constraint.occurrence.AbstractConstraintOccurrence;
import jetbrains.mps.logic.reactor.constraint.occurrence.InvalidConstraintException;
import java.util.Arrays;
import java.util.Set;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.HashMap;

public abstract class ConstraintRegistry {

  public abstract BuiltinConstraint findBuiltinConstraint(ConstraintSymbol symbol);

  public void checkValidConstraint(AbstractConstraintOccurrence cst) throws InvalidConstraintException {
    switch (cst.kind()) {
      case USER:
        boolean matches = cst.symbol().arity() == cst.arguments().size();
        if (!(matches)) {
          throw new InvalidConstraintException("arity mismatch for " + String.valueOf(cst.symbol()));
        }

        if (userConstraintArgTypes.containsKey(cst.symbol())) {
          if (!(Arrays.equals(argType(cst), userConstraintArgTypes.get(cst.symbol())))) {
            throw new InvalidConstraintException("argument type mismatch for " + String.valueOf(cst.symbol()));
          }
        }
        break;

      case BUILTIN:
        if (cst.arguments().size() != cst.symbol().arity()) {
          throw new InvalidConstraintException("arity mismatch for " + String.valueOf(cst.symbol()));
        }
        break;

      case JAVA:
        // FIXME: implement me 
        break;

      default:
    }

    for (Object arg : cst.arguments()) {
      if (arg == null) {
        throw new InvalidConstraintException("argument is null in " + String.valueOf(cst.symbol()));
      }
    }
  }

  public Set<ConstraintSymbol> constraintSymbols() {
    return Collections.unmodifiableSet(userConstraintArgTypes.keySet());
  }

  public Set<ConstraintSymbol> builtinConstraintSymbols() {
    return Collections.unmodifiableSet(builtinSymbols);
  }

  public Class<?>[] getUserConstraintArgTypes(Object id) {
    if (!(userConstraintArgTypes.containsKey(id))) {
      throw new IllegalArgumentException("no such ID: " + id);
    }
    return userConstraintArgTypes.get(id);
  }

  public void introduceConstraint(AbstractConstraintOccurrence cst) throws InvalidConstraintException {
    checkValidConstraint(cst);
    switch (cst.kind()) {
      case USER:
        userConstraintArgTypes.put(cst.symbol(), argType(cst));
        break;

      case LOGICAL:
        // fall through 
      case BUILTIN:
        builtinSymbols.add(cst.symbol());
        break;

      case JAVA:
        // FIXME implement me 
        break;

      default:
        throw new IllegalArgumentException("unknown constraint kind '" + cst.kind() + "'");
    }
  }

  private Class<?>[] argType(AbstractConstraintOccurrence cst) {
    Class<?>[] argType = new Class<?>[cst.arguments().size()];
    int i = 0;
    for (Object arg : cst.arguments()) {
      if (arg != null) {
        argType[i++] = arg.getClass();
      }
    }
    return argType;
  }

  private Set<ConstraintSymbol> builtinSymbols = new HashSet<ConstraintSymbol>();

  private Map<ConstraintSymbol, Class<?>[]> userConstraintArgTypes = new HashMap<ConstraintSymbol, Class<?>[]>();
}
