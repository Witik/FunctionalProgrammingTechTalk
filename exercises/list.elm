import Html exposing (text)


type List a
    = Nil
    | Cons a (List a)


main =
    text (toString program)


program =
    0



-- Return the length of the given list
-- length : List a -> Int

-- Generate a list of the following length containing an decrementing sequence of numbers; e.g. [3, 2, 1]
-- generateIntegerList : Int -> List Int

-- Reverse the given list
-- reverseList : List a -> List a

-- Concatenate two lists
-- concat : List a -> List a -> List a

-- Return the sum of the numbers in an integer list
-- sum : List Int -> Int

-- Apply the given function over the contents of the list
-- map : (a -> b) -> List a -> List b

-- Reduce the list to a single value, for example:
-- "reduce add 0 [5, 10, 5]" would result in 20
-- reduce : (a -> b -> b) -> b -> List a -> b

{-

   Think of a way to write the sum function in one line using reduce

   Think of a way to generate an incrementing integer list with the following function signature
   incList : Int -> List Int
-}
