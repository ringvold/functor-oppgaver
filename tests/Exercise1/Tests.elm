module Exercise1.Tests exposing (all)

import Exercise1 exposing (FjernData(..), map)
import Expect
import Fuzz exposing (int)
import Test exposing (..)


all : Test
all =
    describe "Exercise 1"
        [ mapTests
        ]


mapTests : Test
mapTests =
    let
        check ( label, input, output ) =
            test label <|
                \_ ->
                    map ((*) 3) input
                        |> Expect.equal output
    in
    describe "map" <|
        List.map check
            [ ( "Suksess", Suksess 2, Suksess 6 )
            , ( "IkkeSpurt", IkkeSpurt, IkkeSpurt )
            , ( "Laster", Laster, Laster )
            , ( "Feila", Feila "error", Feila "error" )
            ]
