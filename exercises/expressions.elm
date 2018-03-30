import Html exposing (text)

type Maybe a
    = Just a
    | Nothing


type Expr
    = Val Int
    | Add Expr Expr
    | Sub Expr Expr
    | Mul Expr Expr
    | Div Expr Expr


print x =
    text (toString x)


main =
    print program


program =
    0
--    maybeEval (Div (Val 6) (Val 3))

-- eval : Expr -> Int

-- maybeEval : Expr -> Maybe Int
