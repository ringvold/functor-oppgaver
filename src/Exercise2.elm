module Exercise2 exposing (FjernData(..), map2)


type FjernData e a
    = IkkeSpurt
    | Laster
    | Suksess a
    | Feila e


map2 : (a -> b -> c) -> FjernData e a -> FjernData e b -> FjernData e c
