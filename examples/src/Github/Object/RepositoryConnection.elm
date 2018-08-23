-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.RepositoryConnection exposing (edges, nodes, pageInfo, selection, totalCount, totalDiskUsage)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.RepositoryConnection
selection constructor =
    Object.selection constructor


{-| A list of edges.
-}
edges : SelectionSet decodesTo Github.Object.RepositoryEdge -> Field (Maybe (List (Maybe decodesTo))) Github.Object.RepositoryConnection
edges object =
    Object.selectionField "edges" [] object (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| A list of nodes.
-}
nodes : SelectionSet decodesTo Github.Object.Repository -> Field (Maybe (List (Maybe decodesTo))) Github.Object.RepositoryConnection
nodes object =
    Object.selectionField "nodes" [] object (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| Information to aid in pagination.
-}
pageInfo : SelectionSet decodesTo Github.Object.PageInfo -> Field decodesTo Github.Object.RepositoryConnection
pageInfo object =
    Object.selectionField "pageInfo" [] object identity


{-| Identifies the total count of items in the connection.
-}
totalCount : Field Int Github.Object.RepositoryConnection
totalCount =
    Object.fieldDecoder "totalCount" [] Decode.int


{-| The total size in kilobytes of all repositories in the connection.
-}
totalDiskUsage : Field Int Github.Object.RepositoryConnection
totalDiskUsage =
    Object.fieldDecoder "totalDiskUsage" [] Decode.int
