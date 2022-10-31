module Exercise1 exposing (FjernData(..), map)

{-
   Vi starter functor morroa med å implementere map! :D

   Implementer `map` for FjernData som er definert nedenfor. FjernData tar
   veldig stor inspirasjon fra RemoteData og testene implementerer RemoteDatas
   oppførsel. Mappingen skal da gjøres mot verdien i `Suksess`.

   Du kan lese mer om RemoteData her:
   https://package.elm-lang.org/packages/krisajenkins/remotedata/5.0.0/RemoteData
   Men prøv å hold deg unna kildekoden! ;)

   Kjør til slutt testene for denne øvelsen. Se kommentaren nederst i fila eller
   readme for detaljer.
-}


type FjernData e a
    = IkkeSpurt
    | Laster
    | Suksess a
    | Feila e


map :
    (a -> b)
    -> FjernData e a
    -> FjernData e b



{- Når du tror du er klar kan du kjøre testene fra roten av prosjektet:

   - `npx elm-test tests/Exercise1`

   - Eventuelt, hvis du har installert globalt:
        `elm-test tests/Exercise1`

-}
