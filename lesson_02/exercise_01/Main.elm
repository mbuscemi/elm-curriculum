module Main exposing (..)

import Char


{- TODO add the type annotations to every function. -}


concatenate a b =
    a ++ b


divideIntegers a b =
    a // b


divideFloats a b =
    a / b


infinityIsAFloat =
    1 / 0


isTooShort a =
    String.length a < 15


isTooLong a =
    String.length a > 45


cssColorStyleFor a =
    if isTooShort a || isTooLong a then
        "red"
    else
        "green"


toCoords x y =
    ( x, y )


lengthAndColorStyle a =
    ( String.length a, cssColorStyleFor a )


huh a b c =
    {- TODO In addition to adding the annotation for this function,
       rename it to something more descriptive of what it returns.
    -}
    ( if a then
        'T'
      else
        'F'
    , concatenate (String.fromChar (Char.toUpper b)) (String.fromChar (Char.toLower c))
    )


user =
    { name = "TheSeamau5"
    , stars = 66
    , showOptions = True
    , showExtensions = False
    }


header =
    { fontSize = 12.5
    , text = "Elm Hub"
    , sideText = "Like Github, but for Elm things."
    }


initialModel =
    { query = "tutorial"
    , user = user
    , header = header
    }
