module Main exposing (..)


import Html exposing (..)
import Html.Attributes exposing (..)


type alias Dog =
    { name : String
    , age : Int
    }


spock : Dog
spock =
    { name = "Spock"
    , age = 3
    }


renderDog : Dog -> String
renderDog dog =
    dog.name ++ ", " ++ (toString dog.age)


main : Html msg
main =
    Html.div [
        Html.Attributes.style
            [ ("background-color", "#c0c")
            , ("text-align", "center")
            , ("padding", "20px")
            ]
    ] [
        Html.text <| renderDog spock
    ]
