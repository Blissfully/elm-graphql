module Api.Object.PullRequestReviewThread exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Graphqelm.Value as Value exposing (Value)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.PullRequestReviewThread
build constructor =
    Object.object constructor


comments : ({ first : Maybe Int, after : Maybe String, last : Maybe Int, before : Maybe String } -> { first : Maybe Int, after : Maybe String, last : Maybe Int, before : Maybe String }) -> Object comments Api.Object.PullRequestReviewCommentConnection -> FieldDecoder comments Api.Object.PullRequestReviewThread
comments fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Nothing, after = Nothing, last = Nothing, before = Nothing }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Value.int, Argument.optional "after" filledInOptionals.after Value.string, Argument.optional "last" filledInOptionals.last Value.int, Argument.optional "before" filledInOptionals.before Value.string ]
                |> List.filterMap identity
    in
    Object.single "comments" optionalArgs object


id : FieldDecoder String Api.Object.PullRequestReviewThread
id =
    Object.fieldDecoder "id" [] Decode.string


pullRequest : Object pullRequest Api.Object.PullRequest -> FieldDecoder pullRequest Api.Object.PullRequestReviewThread
pullRequest object =
    Object.single "pullRequest" [] object


repository : Object repository Api.Object.Repository -> FieldDecoder repository Api.Object.PullRequestReviewThread
repository object =
    Object.single "repository" [] object
