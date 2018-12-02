-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.GitHubMetadata exposing (gitHubServicesSha, gitIpAddresses, hookIpAddresses, importerIpAddresses, isPasswordAuthenticationVerifiable, pagesIpAddresses)

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


{-| Returns a String that's a SHA of `github-services`
-}
gitHubServicesSha : SelectionSet String Github.Object.GitHubMetadata
gitHubServicesSha =
    Object.selectionForField "gitHubServicesSha" [] Decode.string


{-| IP addresses that users connect to for git operations
-}
gitIpAddresses : SelectionSet (Maybe (List String)) Github.Object.GitHubMetadata
gitIpAddresses =
    Object.selectionForField "gitIpAddresses" [] (Decode.string |> Decode.list |> Decode.nullable)


{-| IP addresses that service hooks are sent from
-}
hookIpAddresses : SelectionSet (Maybe (List String)) Github.Object.GitHubMetadata
hookIpAddresses =
    Object.selectionForField "hookIpAddresses" [] (Decode.string |> Decode.list |> Decode.nullable)


{-| IP addresses that the importer connects from
-}
importerIpAddresses : SelectionSet (Maybe (List String)) Github.Object.GitHubMetadata
importerIpAddresses =
    Object.selectionForField "importerIpAddresses" [] (Decode.string |> Decode.list |> Decode.nullable)


{-| Whether or not users are verified
-}
isPasswordAuthenticationVerifiable : SelectionSet Bool Github.Object.GitHubMetadata
isPasswordAuthenticationVerifiable =
    Object.selectionForField "isPasswordAuthenticationVerifiable" [] Decode.bool


{-| IP addresses for GitHub Pages' A records
-}
pagesIpAddresses : SelectionSet (Maybe (List String)) Github.Object.GitHubMetadata
pagesIpAddresses =
    Object.selectionForField "pagesIpAddresses" [] (Decode.string |> Decode.list |> Decode.nullable)
