/**
 * @name comp3100 workshop 6 query
 * @kind problem
 * @problem.severity warning
 * @id java/example/nextLine-in-loop
 */

 import java
 from LoopStmt loop , MethodAccess call , Method method
 where
     loop.getAChild*() = call.getEnclosingStmt() and
     call.getMethod() = method and
     method.getName() = "nextLine"
 select loop, call, method, "Call to nextLine thats in a loop"
 