import Html exposing (text)

type State a = State (a, List String)

main =
  text (toString program)

program = (return 1)
    >>= (write "Hello")
    >>= (map ((+) 5))
    >>= (write "World")

map : (a -> b) -> a -> State b

write : String -> a -> State a

return : a -> State a

bind : State a -> (a -> State b) -> State b

apply : State a -> State b -> State b

(>>=) = bind

infixl 1 >>=

