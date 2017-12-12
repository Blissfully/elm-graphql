module Api.Object.ProtectedBranch exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Graphqelm.Value as Value exposing (Value)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.ProtectedBranch
build constructor =
    Object.object constructor


creator : Object creator Api.Object.Actor -> FieldDecoder creator Api.Object.ProtectedBranch
creator object =
    Object.single "creator" [] object


hasDismissableStaleReviews : FieldDecoder Bool Api.Object.ProtectedBranch
hasDismissableStaleReviews =
    Object.fieldDecoder "hasDismissableStaleReviews" [] Decode.bool


hasRequiredReviews : FieldDecoder Bool Api.Object.ProtectedBranch
hasRequiredReviews =
    Object.fieldDecoder "hasRequiredReviews" [] Decode.bool


hasRequiredStatusChecks : FieldDecoder Bool Api.Object.ProtectedBranch
hasRequiredStatusChecks =
    Object.fieldDecoder "hasRequiredStatusChecks" [] Decode.bool


hasRestrictedPushes : FieldDecoder Bool Api.Object.ProtectedBranch
hasRestrictedPushes =
    Object.fieldDecoder "hasRestrictedPushes" [] Decode.bool


hasRestrictedReviewDismissals : FieldDecoder Bool Api.Object.ProtectedBranch
hasRestrictedReviewDismissals =
    Object.fieldDecoder "hasRestrictedReviewDismissals" [] Decode.bool


hasStrictRequiredStatusChecks : FieldDecoder Bool Api.Object.ProtectedBranch
hasStrictRequiredStatusChecks =
    Object.fieldDecoder "hasStrictRequiredStatusChecks" [] Decode.bool


id : FieldDecoder String Api.Object.ProtectedBranch
id =
    Object.fieldDecoder "id" [] Decode.string


isAdminEnforced : FieldDecoder Bool Api.Object.ProtectedBranch
isAdminEnforced =
    Object.fieldDecoder "isAdminEnforced" [] Decode.bool


name : FieldDecoder String Api.Object.ProtectedBranch
name =
    Object.fieldDecoder "name" [] Decode.string


pushAllowances : ({ first : Maybe Int, after : Maybe String, last : Maybe Int, before : Maybe String } -> { first : Maybe Int, after : Maybe String, last : Maybe Int, before : Maybe String }) -> Object pushAllowances Api.Object.PushAllowanceConnection -> FieldDecoder pushAllowances Api.Object.ProtectedBranch
pushAllowances fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Nothing, after = Nothing, last = Nothing, before = Nothing }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Value.int, Argument.optional "after" filledInOptionals.after Value.string, Argument.optional "last" filledInOptionals.last Value.int, Argument.optional "before" filledInOptionals.before Value.string ]
                |> List.filterMap identity
    in
    Object.single "pushAllowances" optionalArgs object


repository : Object repository Api.Object.Repository -> FieldDecoder repository Api.Object.ProtectedBranch
repository object =
    Object.single "repository" [] object


requiredStatusCheckContexts : FieldDecoder (List String) Api.Object.ProtectedBranch
requiredStatusCheckContexts =
    Object.fieldDecoder "requiredStatusCheckContexts" [] (Decode.string |> Decode.list)


reviewDismissalAllowances : ({ first : Maybe Int, after : Maybe String, last : Maybe Int, before : Maybe String } -> { first : Maybe Int, after : Maybe String, last : Maybe Int, before : Maybe String }) -> Object reviewDismissalAllowances Api.Object.ReviewDismissalAllowanceConnection -> FieldDecoder reviewDismissalAllowances Api.Object.ProtectedBranch
reviewDismissalAllowances fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Nothing, after = Nothing, last = Nothing, before = Nothing }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Value.int, Argument.optional "after" filledInOptionals.after Value.string, Argument.optional "last" filledInOptionals.last Value.int, Argument.optional "before" filledInOptionals.before Value.string ]
                |> List.filterMap identity
    in
    Object.single "reviewDismissalAllowances" optionalArgs object
