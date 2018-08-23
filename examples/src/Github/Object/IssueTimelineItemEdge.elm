-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.IssueTimelineItemEdge exposing (cursor, node, selection)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.IssueTimelineItemEdge
selection constructor =
    Object.selection constructor


{-| A cursor for use in pagination.
-}
cursor : Field String Github.Object.IssueTimelineItemEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


{-| The item at the end of the edge.
-}
node : SelectionSet decodesTo Github.Union.IssueTimelineItem -> Field (Maybe decodesTo) Github.Object.IssueTimelineItemEdge
node object =
    Object.selectionField "node" [] object (identity >> Decode.nullable)
