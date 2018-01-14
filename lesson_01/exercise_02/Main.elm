module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


model =
    { result =
        { id = 1
        , name = "TheSeamau5/elm-checkerboardgrid-tutorial"
        , stars = 66
        }
    }


elmHubHeader =
    header []
        [ h1 [] [ text "ElmHub" ]
        , span [ class "tagline" ] [ text "Like GitHub, but for Elm things." ]
        ]


main =
    div [ class "content" ]
        [ -- TODO see line 26 below
          text "TODO put the contents of elmHubHeader here instead of this text!"
        , ul [ class "results" ]
            [ li []
                [ span [ class "star-count" ]
                    [-- TODO Display the number of stars here.
                     -- HINT: You'll need some parentheses to do this!
                    ]

                -- TODO Put an anchor tag here that links to
                -- https://github.com/TheSeamau5/elm-checkerboardgrid-tutorial.
                -- Do this by prepending "https://github.com/" to the part
                -- of the URL stored in the model.
                -- See this link: http://package.elm-lang.org/packages/elm-lang/html/latest/Html#a
                ]
            ]
        ]
