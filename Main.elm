module Main exposing (..)

{-| THIS FILE IS NOT PART OF THE COURSE! It is only to verify that you
have everything set up properly.
-}

import Html exposing (Html, div, h1, header, text)
import Html.Attributes exposing (class)


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , update = update
        , init = ( initialModel, Cmd.none )
        , subscriptions = \_ -> Sub.none
        }


initialModel : Model
initialModel =
    {}


type alias Model =
    {}


view : Model -> Html Msg
view model =
    div [ class "content" ]
        [ header [] [ h1 [] [ text "Introduction to Elm" ] ]
        , div [ class "intro-message" ] [ text "You are good to go." ]
        ]


type Msg
    = None


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )
