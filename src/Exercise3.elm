module Exercise3 exposing (FjernData(..), map3)

{-
   Implementer map3
-}


type FjernData e a
    = IkkeSpurt
    | Laster
    | Suksess a
    | Feila e


map3 :
    (a -> b -> c -> d)
    -> FjernData e a
    -> FjernData e b
    -> FjernData e c
    -> FjernData e d
map3 =
    identity
