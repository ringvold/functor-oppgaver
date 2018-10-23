module Exercise3 exposing (..)


type FjernData e a
    = IkkeSpurt
    | Laster
    | Suksess a
    | Feila e


andThen :
    (a -> FjernData e b)
    -> FjernData e a
    -> FjernData e b
