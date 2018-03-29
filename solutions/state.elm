import Html exposing (text)

type State a = State (a, List String)

main =
  text (toString program)

program = (return 1)
    >>= (write "Hello")
    >>= (map ((+) 5))
    >>= (write "World")

map : (a -> b) -> a -> State b
map f a = State ((f a), [])

write : String -> a -> State a
write msg value = State (value, [msg])

return : a -> State a
return a = State (a, [])

bind : State a -> (a -> State b) -> State b
bind (State (value, state)) f = apply (State (value, state)) (f value)

apply : State a -> State b -> State b
apply (State (value1, state1)) (State (value2, state2)) =
    State (value2, state1 ++ state2)

(>>=) = bind

infixl 1 >>=

