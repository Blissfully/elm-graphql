-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.StargazerEdge exposing (cursor, node, selection, starredAt)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.StargazerEdge
selection constructor =
    Object.selection constructor


cursor : Field String Github.Object.StargazerEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


node : SelectionSet decodesTo Github.Object.User -> Field decodesTo Github.Object.StargazerEdge
node object =
    Object.selectionField "node" [] object identity


{-| Identifies when the item was starred.
-}
starredAt : Field Github.Scalar.DateTime Github.Object.StargazerEdge
starredAt =
    Object.fieldDecoder "starredAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map Debug.toString, Decode.int |> Decode.map Debug.toString, Decode.bool |> Decode.map Debug.toString ] |> Decode.map Github.Scalar.DateTime)
