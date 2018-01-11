-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.1
-- Target elm package version 5.0.1
-- https://github.com/dillonkearns/graphqelm


module Github.InputObject.RequestReviewsInput exposing (..)

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


{-| Encode a RequestReviewsInput into a value that can be used as an argument.
-}
encode : RequestReviewsInput -> Value
encode input =
    Encode.maybeObject
        [ ( "clientMutationId", Encode.string |> Encode.optional input.clientMutationId ), ( "pullRequestId", (\(Github.Scalar.Id raw) -> Encode.string raw) input.pullRequestId |> Just ), ( "userIds", ((\(Github.Scalar.Id raw) -> Encode.string raw) |> Encode.list) |> Encode.optional input.userIds ), ( "teamIds", ((\(Github.Scalar.Id raw) -> Encode.string raw) |> Encode.list) |> Encode.optional input.teamIds ), ( "union", Encode.bool |> Encode.optional input.union ) ]


{-| Type for the RequestReviewsInput input object.
-}
type alias RequestReviewsInput =
    { clientMutationId : OptionalArgument String, pullRequestId : Github.Scalar.Id, userIds : OptionalArgument (List Github.Scalar.Id), teamIds : OptionalArgument (List Github.Scalar.Id), union : OptionalArgument Bool }
