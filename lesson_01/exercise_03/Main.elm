module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


main =
    allRecordsView model


model =
    {-
       TODO define model as follows:
       * model is a record
       * the record has two top-level fields, "query" and "results"
       * "query" is a string with the value of "tutorial"
       * "results" is a list of records, each of which has the
         "id", "stars", and "name"  fields
       * create records entries in the results list as follows:
           1. the first record has 66 stars and a name of "TheSeamau5/elm-checkerboardgrid-tutorial"
           2. the second record has 41 stars and a name of "grzegorzbalcerek/elm-by-example"
           3. the third record has 35 stars and a name of "sporto/elm-tutorial-app"
           4. the fourth record has 10 stars and a name of "jvoigtlaender/Elm-Tutorium"
           5. the fifth record has 7 stars and a name of "sporto/elm-tutorial-assets"
       * give each record an id, which is an integer, numbered 1 to 5
       * be sure that the "stars" field is also an integer, not a string
    -}
    {}


elmHubHeader =
    header []
        [ h1 [] [ text "ElmHub" ]
        , span [ class "tagline" ] [ text "Like GitHub, but for Elm things." ]
        ]


allRecordsView model =
    div [ class "content" ]
        [ elmHubHeader

        {- TODO Add an <li> to the <ul class="results"> for each record in model.results.
           HINT: Think about how you can use List.map. You goal is to replace
           the empty list with a list of virtual HTML li objects.
        -}
        , ul [ class "results" ] []
        ]


viewSearchResult result =
    li []
        [ span [ class "star-count", id ("result-" ++ toString result.id) ] [ text (toString result.stars) ]
        , a [ href ("https://github.com/" ++ result.name), target "_blank" ]
            [ text result.name ]
        ]


onlyOddsView model =
    div [ class "content" ]
        [ elmHubHeader

        {- TODO
           1. Begin this section only after you have completed the TODO in the allRecordsView
              function to your satisfaction.
           2. Go up to the definition of 'main', and change it to be 'main = onlyOddsView model'.
              You should now see that the list has disappeared in your browser. This is because
              we have changed the view function we are using, and this new one has an empty list
              for the results.
           3. Populate the <ul> of this view only with records that have odd-numbered id fields.
              HINT: Think of how you can use List.filter, and see also
              http://package.elm-lang.org/packages/elm-lang/core/latest/Basics#mathematics
              if you get stuck.
        -}
        , ul [ class "results" ] []
        ]


noSportoView model =
    div [ class "content" ]
        [ elmHubHeader

        {- TODO
           1. Go up to the definition of 'main', and change it to be 'main = noSportoView model'.
           2. Populate the list only with records that represent packages NOT made by the user
              named "sporto".
              HINT: Think of how you can use List.filter, and see also
              http://package.elm-lang.org/packages/elm-lang/core/5.1.1/String
              if you get stuck.
        -}
        , ul [ class "results" ] []
        ]
