module Exercise2 exposing (FjernData(..), andMap)


type FjernData e a
    = IkkeSpurt
    | Laster
    | Suksess a
    | Feila e


andMap : FjernData e a -> FjernData e (a -> b) -> FjernData e b
