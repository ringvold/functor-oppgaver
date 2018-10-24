module Exercise4 exposing (FjernData(..))

{-
   Når vi har kommet så langt som dette er kanskje `andThen` ganske enkel.

   Implementer `andThen` for FjernData og som du også er enig i det utsagnet. :)
-}


type FjernData e a
    = IkkeSpurt
    | Laster
    | Suksess a
    | Feila e


andThen :
    (a -> FjernData e b)
    -> FjernData e a
    -> FjernData e b
