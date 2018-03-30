import Html exposing (text)


type List a
    = Nil
    | Cons a (List a)


main =
    text (toString program)


length : List a -> Int
length list =
    case list of
        Nil ->
            0

        Cons first rest ->
            1 + length rest


generateIntegerList : Int -> List Int
generateIntegerList length =
    case length of
        0 ->
            Nil

        _ ->
            Cons length (generateIntegerList (length - 1))


reverseList : List a -> List a
reverseList list =
    case list of
        Nil ->
            Nil

        Cons a rest ->
            concat (reverseList rest) (Cons a Nil)


concat : List a -> List a -> List a
concat list1 list2 =
    case list1 of
        Nil ->
            list2

        Cons a rest ->
            Cons a (concat rest list2)


sum : List Int -> Int
sum list =
    case list of
        Nil ->
            0

        Cons a rest ->
            a + (sum rest)


map : (a -> b) -> List a -> List b
map f list =
    case list of
        Nil ->
            Nil

        Cons a rest ->
            Cons (f a) (map f rest)


reduce : (a -> b -> b) -> b -> List a -> b
reduce f seed list =
    case list of
        Nil ->
            seed

        Cons a rest ->
            f a (reduce f seed rest)

program =
    (reduce (+) 0 (map ((+) 1) (generateIntegerList 5))) - (sum (reverseList (generateIntegerList 5)))
