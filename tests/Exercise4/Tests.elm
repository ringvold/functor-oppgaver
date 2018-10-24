module Exercise4.Tests exposing (all)

import Exercise4 exposing (FjernData(..), andThen)
import Expect
import Fuzz exposing (int)
import Test exposing (..)


all : Test
all =
    describe "Exercise 4"
        [ andMapTests
        ]


andMapTests : Test
andMapTests =
    let
        check ( label, output, expected ) =
            test label <|
                \_ ->
                    Expect.equal expected output
    in
    describe "andMap" <|
        List.map check
            [ ( "Suksess case"
              , andMap (Suksess 5) (Suksess ((*) 2))
              , Suksess 10
              )
            , ( "Feila case 1"
              , andMap (Feila "nope") Laster
              , Feila "nope"
              )
            , ( "Feila case 2"
              , andMap Laster (Feila "nope")
              , Feila "nope"
              )
            , ( "Identity"
              , andMap (Suksess 5) (Suksess identity)
              , Suksess 5
              )
            ]
