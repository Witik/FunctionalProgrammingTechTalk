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
    maybeEval (Div 6 3)


eval : Expr -> Int
eval expression =
    case expression of
        Val x ->
            x

        Add x y ->
            (eval x) + (eval y)

        Sub x y ->
            (eval x) - (eval y)

        Mul x y ->
            (eval x) * (eval y)

        Div x y ->
            (eval x) // (eval y)


maybeEval : Expr -> Maybe Int
maybeEval expression =
    case expression of
        Val x ->
            x

        Add x y ->
            map2 (+) (maybeEval x) (maybeEval y)

        Sub x y ->
            map2 (-) (maybeEval x) (maybeEval y)

        Mul x y ->
            map2 (*) (maybeEval x) (maybeEval y)

        Div x 0 ->
            Nothing

        Div x y ->
            map2 (//) (maybeEval x) (maybeEval y)


map2 : (a -> b -> c) -> Maybe a -> Maybe b -> Maybe c
map2 func ma mb =
    case ma of
        Nothing ->
            Nothing

        Just a ->
            case mb of
                Nothing ->
                    Nothing

                Just b ->
                    Just (func a b)
