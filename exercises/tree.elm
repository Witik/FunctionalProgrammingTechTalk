import Html exposing (text)

type Tree a = Leaf a | Branch (Tree a) (Tree a)

main =
  text (toString program)

program = 0
-- program = sum (Branch (Branch (Leaf 1) (Branch (Leaf 1) (Leaf 4))) (Leaf 45))

-- Calculate the length of the longest branch of a tree. (use the max function)
-- length : Tree a -> Int

-- Take the maximum of two integers
-- max : Int -> Int -> Int

-- Sum all the numbers in an integer tree
-- sum : Tree Int -> Int

-- map : (a -> b) -> Tree a -> Tree b

-- reduce : (a -> a -> a) -> a -> Tree a -> a
