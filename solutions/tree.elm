import Html exposing (text)


type Tree a
    = Leaf a
    | Branch (Tree a) (Tree a)


main =
    text (toString program)


program =
    sum (Branch (Branch (Leaf 1) (Branch (Leaf 1) (Leaf 4))) (Leaf 45))


length : Tree a -> Int
length tree =
    case tree of
        Leaf _ ->
            1

        Branch left right ->
            1 + (max (length left) (length right))


max : Int -> Int -> Int
max a b =
    if a > b then
        a
    else
        b


sum : Tree Int -> Int
sum tree =
    case tree of
        Leaf n ->
            n

        Branch left right ->
            (sum left) + (sum right)


map : (a -> b) -> Tree a -> Tree b
map f tree =
    case tree of
        Leaf n ->
            Leaf (f n)

        Branch left right ->
            Branch (f left) (f right)


reduce : (a -> a -> a) -> a -> Tree a -> a
reduce f seed tree =
    case tree of
        Leaf n ->
            f n seed

        Branch left right ->
            f (reduce left) (reduce right)
