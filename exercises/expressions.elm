import Html exposing (text)

type Maybe a
    = Just a
    | Nothing


type Expr
    = Val Int
    | Add Int Int
    | Sub Int Int
    | Mul Int Int
    | Div Int Int


print x =
    text (toString x)


main =
    print program


program =
    0
--    maybeEval (Div 6 3)

-- eval : Expr -> Int

-- maybeEval : Expr -> Maybe Int
