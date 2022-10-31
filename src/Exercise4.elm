module Exercise4 exposing (FjernData(..), andMap)

{-
   Istedet for å implementere map3, map4, map5 og så videre i det uendelige kan
   vi lage `andMap` og pipe den så mange ganger vi måtte ønske.

   `andMap` er `apply`/`ap`, men med argumentene byttet om som går det mulig å
   pipe så mange`andMap` man trenger etterhverandre.

   Når du har implementert `andMap` kan du gå tilbake til oppgave 2 og 3 og
   prøve å implementere `map2` og `map3` med `andMap`.
-}


type FjernData e a
    = IkkeSpurt
    | Laster
    | Suksess a
    | Feila e


andMap : FjernData e a -> FjernData e (a -> b) -> FjernData e b
