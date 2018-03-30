import Html exposing (text)


type alias State a =
    ( a, List String )


main =
    text (toString program)


program =
    (return 1)
        >>= (write "Hello")
        >>= (map ((+) 5))
        >>= (write "World")


map : (a -> b) -> a -> State b
map f a =
    ( (f a), [] )


write : String -> a -> State a
write msg value =
    ( value, [ msg ] )


return : a -> State a
return a =
    ( a, [] )


bind : State a -> (a -> State b) -> State b
bind ( value, state ) f =
    apply ( value, state ) (f value)


apply : State a -> State b -> State b
apply ( value1, state1 ) ( value2, state2 ) =
    ( value2, state1 ++ state2 )


(>>=) =
    bind
infixl 1 >>=
