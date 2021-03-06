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

package jetbrains.mps.logic.reactor.logical;


/**
 * A logical variable that can be joined with another variable to produce a union.
 *
 * @param <T> the value type
 *
 * @author Fedor Isakov
 */
public interface JoinableLogical<T> extends Logical<T> {

    /**
     * Covariant override.
     */
    JoinableLogical<T> findRoot();

    /**
     * Unions two equivalence classes of logicals.
     * Both the receiver and the {@code other} parameter are expected to be representatives.
     * The one with the highest rank becomes the representative for the new class.
     */
    void union(JoinableLogical<T> other, JoinableLogical.ValueReconciler<T> reconciler);

    /**
     * Calls {@link JoinableLogical#union(JoinableLogical <T>, JoinableLogical.ValueReconciler<T>) } with the default value reconciler.
     * The default reconciler throws {@link java.lang.IllegalArgumentException } if the two values are not equal.
     */
    void union(JoinableLogical<T> other);

    /**
     * Should only be called on a representative.
     */
    void setValue(T newValue);

    interface ValueReconciler<T> {

        void reconcile(T valueA, T valueB);

    }

}
