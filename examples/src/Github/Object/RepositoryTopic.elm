-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.RepositoryTopic exposing (id, resourcePath, topic, url)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


id : SelectionSet Github.Scalar.Id Github.Object.RepositoryTopic
id =
    Object.selectionForField "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| The HTTP path for this repository-topic.
-}
resourcePath : SelectionSet Github.Scalar.Uri Github.Object.RepositoryTopic
resourcePath =
    Object.selectionForField "resourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| The topic.
-}
topic : SelectionSet decodesTo Github.Object.Topic -> SelectionSet decodesTo Github.Object.RepositoryTopic
topic object_ =
    Object.selectionForCompositeField "topic" [] object_ identity


{-| The HTTP URL for this repository-topic.
-}
url : SelectionSet Github.Scalar.Uri Github.Object.RepositoryTopic
url =
    Object.selectionForField "url" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)
