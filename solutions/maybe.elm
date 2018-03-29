import Html exposing (text)

type Maybe a = Nothing | Just a

main =
  text (toString program)

program = (maybeAdd 1 5)
    >>= \x -> return (x + 2)

return : a -> Maybe a
return a = Just a

maybeAdd : Int -> Int -> Maybe Int
maybeAdd x y =
    Just (x + y)

bind : Maybe a -> (a -> Maybe b) -> Maybe b
bind maybe f =
    case maybe of
        Nothing -> Nothing
        Just a -> f a

apply : Maybe a -> Maybe b -> Maybe b
apply x y =
    case x of
        Nothing -> Nothing
        Just _ -> y

(>>=) = bind

infixr 9 >>=
