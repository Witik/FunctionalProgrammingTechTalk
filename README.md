# FunctionalProgrammingTechTalk

## Exersises
http://elm-lang.org/examples/binary-tree

```

module Program

open System

type Expr = 
    | T
    | F
    | Not of Expr
    | And of Expr * Expr
    | Or of Expr * Expr

let rec eval (expr : Expr) : bool = 
    match expr with
    | T -> true
    | F -> false
    | Not(expr) -> not (eval expr)
    | And(left, right) -> (eval left) && (eval right)
    | Or(left, right) -> (eval left) || (eval right)

let program = eval (Or(And(T, Not(T)), F))

let print x = printf "%b" x

[<EntryPoint>]
let main argv = 
    print program
    0


```
