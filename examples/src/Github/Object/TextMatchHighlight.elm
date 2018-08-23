-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.TextMatchHighlight exposing (beginIndice, endIndice, selection, text)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.TextMatchHighlight
selection constructor =
    Object.selection constructor


{-| The indice in the fragment where the matched text begins.
-}
beginIndice : Field Int Github.Object.TextMatchHighlight
beginIndice =
    Object.fieldDecoder "beginIndice" [] Decode.int


{-| The indice in the fragment where the matched text ends.
-}
endIndice : Field Int Github.Object.TextMatchHighlight
endIndice =
    Object.fieldDecoder "endIndice" [] Decode.int


{-| The text matched.
-}
text : Field String Github.Object.TextMatchHighlight
text =
    Object.fieldDecoder "text" [] Decode.string
