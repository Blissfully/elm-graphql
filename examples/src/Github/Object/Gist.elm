-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Gist exposing (CommentsOptionalArguments, StargazersOptionalArguments, comments, createdAt, description, id, isPublic, name, owner, pushedAt, stargazers, updatedAt, viewerHasStarred)

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


type alias CommentsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| A list of comments associated with the gist

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
comments : (CommentsOptionalArguments -> CommentsOptionalArguments) -> SelectionSet decodesTo Github.Object.GistCommentConnection -> SelectionSet decodesTo Github.Object.Gist
comments fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "comments" optionalArgs object_ identity


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.Scalar.DateTime Github.Object.Gist
createdAt =
    Object.selectionForField "createdAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| The gist description.
-}
description : SelectionSet (Maybe String) Github.Object.Gist
description =
    Object.selectionForField "description" [] (Decode.string |> Decode.nullable)


id : SelectionSet Github.Scalar.Id Github.Object.Gist
id =
    Object.selectionForField "id" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Id)


{-| Whether the gist is public or not.
-}
isPublic : SelectionSet Bool Github.Object.Gist
isPublic =
    Object.selectionForField "isPublic" [] Decode.bool


{-| The gist name.
-}
name : SelectionSet String Github.Object.Gist
name =
    Object.selectionForField "name" [] Decode.string


{-| The gist owner.
-}
owner : SelectionSet decodesTo Github.Interface.RepositoryOwner -> SelectionSet (Maybe decodesTo) Github.Object.Gist
owner object_ =
    Object.selectionForCompositeField "owner" [] object_ (identity >> Decode.nullable)


{-| Identifies when the gist was last pushed to.
-}
pushedAt : SelectionSet (Maybe Github.Scalar.DateTime) Github.Object.Gist
pushedAt =
    Object.selectionForField "pushedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime |> Decode.nullable)


type alias StargazersOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    , orderBy : OptionalArgument Github.InputObject.StarOrder
    }


{-| A list of users who have starred this starrable.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - orderBy - Order for connection

-}
stargazers : (StargazersOptionalArguments -> StargazersOptionalArguments) -> SelectionSet decodesTo Github.Object.StargazerConnection -> SelectionSet decodesTo Github.Object.Gist
stargazers fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.encodeStarOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "stargazers" optionalArgs object_ identity


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Github.Scalar.DateTime Github.Object.Gist
updatedAt =
    Object.selectionForField "updatedAt" [] (Object.scalarDecoder |> Decode.map Github.Scalar.DateTime)


{-| Returns a boolean indicating whether the viewing user has starred this starrable.
-}
viewerHasStarred : SelectionSet Bool Github.Object.Gist
viewerHasStarred =
    Object.selectionForField "viewerHasStarred" [] Decode.bool
