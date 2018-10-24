module Exercise3.Tests exposing (all)

import Exercise3 exposing (FjernData(..), map3)
import Expect
import Fuzz exposing (int)
import Test exposing (..)


all : Test
all =
    describe "Exercise 3"
        [ map3Tests
        ]


type alias TestRecord =
    { felt1 : String
    , felt2 : String
    , felt3 : String
    }


map3Tests : Test
map3Tests =
    let
        check ( label, output, expected ) =
            test label <|
                \_ ->
                    Expect.equal expected output
    in
    describe "map3" <|
        List.map check
            [ ( "Suksess case"
              , map3 TestRecord (Suksess "one") (Suksess "two") (Suksess "three")
              , Suksess { felt1 = "one", felt2 = "two", felt3 = "three" }
              )
            , ( "Feila case 1"
              , map3 TestRecord (Feila "nope") (Suksess "2") (Suksess "2")
              , Feila "nope"
              )
            , ( "Feila case 2"
              , map3 TestRecord Laster (Feila "first") (Feila "nope")
              , Feila "first"
              )
            , ( "Laster case"
              , map3 TestRecord (Suksess "2") Laster IkkeSpurt
              , Laster
              )
            ]
