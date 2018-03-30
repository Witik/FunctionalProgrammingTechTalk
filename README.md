# FunctionalProgrammingTechTalk

Exercises in the `exercises` folder

Solutions to these exercises in the `solutions` folder

## Elm Search
http://klaftertief.github.io/elm-search/

## Running locally
[Webstorm Elm Plugin](https://plugins.jetbrains.com/plugin/8192-elm-language-plugin)  
`npm install elm -g`  
`elm-reactor`

## Example Elm & F#
### F#
```FSharp
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
### Elm
```Elm
import Html exposing (text)

type Expr
    = T
    | F
    | Not Expr
    | And Expr Expr
    | Or Expr Expr

eval : Expr -> Bool
eval expression =
  case expression of
    T ->
        True
    F ->
        False
    Not expr ->
        not (eval expr)
    And left right ->
        eval left && eval right
    Or left right ->
        eval left || eval right

program = eval (Or (And T (Not F)) (F))

print x = text (toString x)

main = print program
```
