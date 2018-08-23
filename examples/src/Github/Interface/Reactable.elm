-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Interface.Reactable exposing (ReactionsOptionalArguments, commonSelection, databaseId, id, onCommitComment, onIssue, onIssueComment, onPullRequest, onPullRequestReviewComment, reactionGroups, reactions, selection, viewerCanReact)

import Github.Enum.ReactionContent
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
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


{-| Select only common fields from the interface.
-}
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Interface.Reactable
commonSelection constructor =
    Object.selection constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Interface.Reactable) -> SelectionSet (a -> constructor) Github.Interface.Reactable
selection constructor typeSpecificDecoders =
    Object.interfaceSelection typeSpecificDecoders constructor


onCommitComment : SelectionSet decodesTo Github.Object.CommitComment -> FragmentSelectionSet decodesTo Github.Interface.Reactable
onCommitComment (SelectionSet fields decoder) =
    FragmentSelectionSet "CommitComment" fields decoder


onIssue : SelectionSet decodesTo Github.Object.Issue -> FragmentSelectionSet decodesTo Github.Interface.Reactable
onIssue (SelectionSet fields decoder) =
    FragmentSelectionSet "Issue" fields decoder


onIssueComment : SelectionSet decodesTo Github.Object.IssueComment -> FragmentSelectionSet decodesTo Github.Interface.Reactable
onIssueComment (SelectionSet fields decoder) =
    FragmentSelectionSet "IssueComment" fields decoder


onPullRequest : SelectionSet decodesTo Github.Object.PullRequest -> FragmentSelectionSet decodesTo Github.Interface.Reactable
onPullRequest (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequest" fields decoder


onPullRequestReviewComment : SelectionSet decodesTo Github.Object.PullRequestReviewComment -> FragmentSelectionSet decodesTo Github.Interface.Reactable
onPullRequestReviewComment (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestReviewComment" fields decoder


{-| Identifies the primary key from the database.
-}
databaseId : Field (Maybe Int) Github.Interface.Reactable
databaseId =
    Object.fieldDecoder "databaseId" [] (Decode.int |> Decode.nullable)


id : Field Github.Scalar.Id Github.Interface.Reactable
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map Debug.toString, Decode.int |> Decode.map Debug.toString, Decode.bool |> Decode.map Debug.toString ] |> Decode.map Github.Scalar.Id)


{-| A list of reactions grouped by content left on the subject.
-}
reactionGroups : SelectionSet decodesTo Github.Object.ReactionGroup -> Field (Maybe (List decodesTo)) Github.Interface.Reactable
reactionGroups object =
    Object.selectionField "reactionGroups" [] object (identity >> Decode.list >> Decode.nullable)


type alias ReactionsOptionalArguments =
    { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, content : OptionalArgument Github.Enum.ReactionContent.ReactionContent, orderBy : OptionalArgument Github.InputObject.ReactionOrder }


{-| A list of Reactions left on the Issue.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - content - Allows filtering Reactions by emoji.
  - orderBy - Allows specifying the order in which reactions are returned.

-}
reactions : (ReactionsOptionalArguments -> ReactionsOptionalArguments) -> SelectionSet decodesTo Github.Object.ReactionConnection -> Field decodesTo Github.Interface.Reactable
reactions fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, content = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "content" filledInOptionals.content (Encode.enum Github.Enum.ReactionContent.toString), Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeReactionOrder ]
                |> List.filterMap identity
    in
    Object.selectionField "reactions" optionalArgs object identity


{-| Can user react to this subject
-}
viewerCanReact : Field Bool Github.Interface.Reactable
viewerCanReact =
    Object.fieldDecoder "viewerCanReact" [] Decode.bool
