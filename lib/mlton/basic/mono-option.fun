(* Copyright (C) 1999-2002 Henry Cejtin, Matthew Fluet, Suresh
 *    Jagannathan, and Stephen Weeks.
 *
 * MLton is released under the GNU General Public License (GPL).
 * Please see the file MLton-LICENSE for license information.
 *)

functor MonoOption (X: T): T =
struct

type t = X.t option

fun equals (o1, o2) = Option.equals (o1, o2, X.equals)

val layout = Option.layout X.layout
   
end
