module Exercise2.Tests exposing (all)

import Exercise2 exposing (FjernData(..), map2)
import Expect
import Fuzz exposing (int)
import Test exposing (..)


all : Test
all =
    describe "Exercise 2"
        [ map2Tests
        ]


map2Tests : Test
map2Tests =
    let
        check ( label, output, expected ) =
            test label <|
                \_ ->
                    Expect.equal expected output
    in
    describe "map2" <|
        List.map check
            [ ( "Suksess case"
              , map2 (*) (Suksess 5) (Suksess 2)
              , Suksess 10
              )
            , ( "Feila case 1"
              , map2 (*) (Feila "nope") (Suksess 2)
              , Feila "nope"
              )
            , ( "Feila case 2"
              , map2 (*) Laster (Feila "nope")
              , Feila "nope"
              )
            , ( "Laster case"
              , map2 (*) Laster (Suksess 2)
              , Laster
              )
            , ( "IkkeSpurt case"
              , map2 (*) (Suksess 2) IkkeSpurt
              , IkkeSpurt
              )
            ]
