-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.MarketplaceCategory exposing (description, howItWorks, name, primaryListingCount, resourcePath, secondaryListingCount, slug, url)

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


{-| The category's description.
-}
description : SelectionSet (Maybe String) Github.Object.MarketplaceCategory
description =
    Object.selectionForField "description" [] (Decode.string |> Decode.nullable)


{-| The technical description of how apps listed in this category work with GitHub.
-}
howItWorks : SelectionSet (Maybe String) Github.Object.MarketplaceCategory
howItWorks =
    Object.selectionForField "howItWorks" [] (Decode.string |> Decode.nullable)


{-| The category's name.
-}
name : SelectionSet String Github.Object.MarketplaceCategory
name =
    Object.selectionForField "name" [] Decode.string


{-| How many Marketplace listings have this as their primary category.
-}
primaryListingCount : SelectionSet Int Github.Object.MarketplaceCategory
primaryListingCount =
    Object.selectionForField "primaryListingCount" [] Decode.int


{-| The HTTP path for this Marketplace category.
-}
resourcePath : SelectionSet Github.Scalar.Uri Github.Object.MarketplaceCategory
resourcePath =
    Object.selectionForField "resourcePath" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)


{-| How many Marketplace listings have this as their secondary category.
-}
secondaryListingCount : SelectionSet Int Github.Object.MarketplaceCategory
secondaryListingCount =
    Object.selectionForField "secondaryListingCount" [] Decode.int


{-| The short name of the category used in its URL.
-}
slug : SelectionSet String Github.Object.MarketplaceCategory
slug =
    Object.selectionForField "slug" [] Decode.string


{-| The HTTP URL for this Marketplace category.
-}
url : SelectionSet Github.Scalar.Uri Github.Object.MarketplaceCategory
url =
    Object.selectionForField "url" [] (Object.scalarDecoder |> Decode.map Github.Scalar.Uri)
