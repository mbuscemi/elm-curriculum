module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


{- TODO Add a type annotation to each function. -}


main =
    Html.beginnerProgram
        { model = initialModel
        , update = update
        , view = view
        }


initialModel =
    { query = "tutorial"
    , results =
        [ { id = 1
          , name = "TheSeamau5/elm-checkerboardgrid-tutorial"
          , stars = 66
          }
        , { id = 2
          , name = "grzegorzbalcerek/elm-by-example"
          , stars = 41
          }
        , { id = 3
          , name = "sporto/elm-tutorial-app"
          , stars = 35
          }
        , { id = 4
          , name = "jvoigtlaender/Elm-Tutorium"
          , stars = 10
          }
        , { id = 5
          , name = "sporto/elm-tutorial-assets"
          , stars = 7
          }
        ]
    }


update msg model =
    if msg.operation == "DELETE_BY_ID" then
        { model | results = List.filter (\result -> result.id /= msg.id) model.results }
    else
        model


view model =
    div [ class "content" ]
        [ elmHubHeader
        , ul [ class "results" ] (resultsHtml model.results)
        ]


elmHubHeader =
    header []
        [ h1 [] [ text "ElmHub" ]
        , span [ class "tagline" ] [ text "Like GitHub, but for Elm things." ]
        ]


resultsHtml results =
    List.map viewSearchResult results


viewSearchResult result =
    li []
        [ span [ class "star-count" ] [ text (toString result.stars) ]
        , a [ href ("https://github.com/" ++ result.name), target "_blank" ]
            [ text result.name ]
        , deleteButton result
        ]


deleteButton result =
    button
        [ class "hide-result", onClick { operation = "DELETE_BY_ID", id = result.id } ]
        [ text "X" ]
