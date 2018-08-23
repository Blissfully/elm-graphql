-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.ReviewRequestedEvent exposing (actor, createdAt, id, pullRequest, requestedReviewer, selection, subject)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ReviewRequestedEvent
selection constructor =
    Object.selection constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> Field (Maybe decodesTo) Github.Object.ReviewRequestedEvent
actor object =
    Object.selectionField "actor" [] object (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : Field Github.Scalar.DateTime Github.Object.ReviewRequestedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map Debug.toString, Decode.int |> Decode.map Debug.toString, Decode.bool |> Decode.map Debug.toString ] |> Decode.map Github.Scalar.DateTime)


id : Field Github.Scalar.Id Github.Object.ReviewRequestedEvent
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map Debug.toString, Decode.int |> Decode.map Debug.toString, Decode.bool |> Decode.map Debug.toString ] |> Decode.map Github.Scalar.Id)


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet decodesTo Github.Object.PullRequest -> Field decodesTo Github.Object.ReviewRequestedEvent
pullRequest object =
    Object.selectionField "pullRequest" [] object identity


{-| Identifies the reviewer whose review was requested.
-}
requestedReviewer : SelectionSet decodesTo Github.Union.RequestedReviewer -> Field (Maybe decodesTo) Github.Object.ReviewRequestedEvent
requestedReviewer object =
    Object.selectionField "requestedReviewer" [] object (identity >> Decode.nullable)


{-| Identifies the user whose review was requested.
-}
subject : SelectionSet decodesTo Github.Object.User -> Field (Maybe decodesTo) Github.Object.ReviewRequestedEvent
subject object =
    Object.selectionField "subject" [] object (identity >> Decode.nullable)
