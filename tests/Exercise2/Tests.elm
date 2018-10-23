module Exercise2.Tests exposing (all)

import Exercise2 exposing (FjernData(..), andMap)
import Expect
import Fuzz exposing (int)
import Test exposing (..)


all : Test
all =
    describe "Exercise 2 - Applicative"
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
                ]
