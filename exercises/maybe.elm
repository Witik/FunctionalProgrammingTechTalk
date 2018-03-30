import Html exposing (text)


type Maybe a
    = Nothing
    | Just a


main =
    text (toString program)


program =
    0



{-
   program = (maybeAdd 1 5)
       >>= maybeAdd 4
       >>= \x -> return (x + 2)

   return : a -> Maybe a

   bind : Maybe a -> (a -> Maybe b) -> Maybe b

   apply : Maybe a -> Maybe b -> Maybe b

   (>>=) = bind

   infixl 1 >>=

-}
