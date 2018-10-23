module Exercise1 exposing (..)


type FjernData e a
    = IkkeSpurt
    | Laster
    | Suksess a
    | Feila e


map :
    (a -> b)
    -> FjernData e a
    -> FjernData e b
