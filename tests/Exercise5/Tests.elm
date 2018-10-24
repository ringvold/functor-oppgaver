module Exercise5.Tests exposing (all)

import Exercise5 exposing (FjernData(..), andThen)
import Expect
import Fuzz exposing (int)
import Test exposing (..)


all : Test
all =
    describe "Exercise 5"
        [ andThenTests
        ]


andThenTests : Test
andThenTests =
    let
        check ( label, output, expected ) =
            test label <|
                \_ ->
                    Expect.equal expected output
    in
    describe "andThen" <|
        List.map check
            [ ( "Suksess case"
              , andThen (Suksess << String.fromInt) (Suksess 5)
              , Suksess "5"
              )
            , ( "Feila case 1"
              , andThen (Suksess << String.fromInt) (Feila "nope")
              , Feila "nope"
              )
            , ( "Feila case 2"
              , andThen Feila (Suksess "5")
              , Feila "5"
              )
            , ( "Laster case 1"
              , andThen (Suksess << String.fromInt) Laster
              , Laster
              )
            , ( "Laster case 2"
              , andThen Feila Laster
              , Laster
              )
            , ( "IkkeSpurt case"
              , andThen Suksess IkkeSpurt
              , IkkeSpurt
              )
            ]
