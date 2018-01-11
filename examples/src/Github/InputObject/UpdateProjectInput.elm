-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.1
-- Target elm package version 5.0.1
-- https://github.com/dillonkearns/graphqelm


module Github.InputObject.UpdateProjectInput exposing (..)

import Github.Enum.ProjectState
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Encode a UpdateProjectInput into a value that can be used as an argument.
-}
encode : UpdateProjectInput -> Value
encode input =
    Encode.maybeObject
        [ ( "clientMutationId", Encode.string |> Encode.optional input.clientMutationId ), ( "projectId", (\(Github.Scalar.Id raw) -> Encode.string raw) input.projectId |> Just ), ( "name", Encode.string |> Encode.optional input.name ), ( "body", Encode.string |> Encode.optional input.body ), ( "state", Encode.enum Github.Enum.ProjectState.toString |> Encode.optional input.state ), ( "public", Encode.bool |> Encode.optional input.public ) ]


{-| Type for the UpdateProjectInput input object.
-}
type alias UpdateProjectInput =
    { clientMutationId : OptionalArgument String, projectId : Github.Scalar.Id, name : OptionalArgument String, body : OptionalArgument String, state : OptionalArgument Github.Enum.ProjectState.ProjectState, public : OptionalArgument Bool }
