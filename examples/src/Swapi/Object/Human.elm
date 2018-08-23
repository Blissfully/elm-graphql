-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Swapi.Object.Human exposing (appearsIn, avatarUrl, friends, homePlanet, id, name, selection)

import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode
import Swapi.Enum.Episode
import Swapi.InputObject
import Swapi.Interface
import Swapi.Object
import Swapi.Scalar
import Swapi.Union


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Swapi.Object.Human
selection constructor =
    Object.selection constructor


{-| Which movies they appear in.
-}
appearsIn : Field (List Swapi.Enum.Episode.Episode) Swapi.Object.Human
appearsIn =
    Object.fieldDecoder "appearsIn" [] (Swapi.Enum.Episode.decoder |> Decode.list)


{-| Url to a profile picture for the character.
-}
avatarUrl : Field String Swapi.Object.Human
avatarUrl =
    Object.fieldDecoder "avatarUrl" [] Decode.string


{-| The friends of the human, or an empty list if they have none.
-}
friends : SelectionSet decodesTo Swapi.Interface.Character -> Field (List decodesTo) Swapi.Object.Human
friends object =
    Object.selectionField "friends" [] object (identity >> Decode.list)


{-| The home planet of the human, or null if unknown.
-}
homePlanet : Field (Maybe String) Swapi.Object.Human
homePlanet =
    Object.fieldDecoder "homePlanet" [] (Decode.string |> Decode.nullable)


{-| The ID of the human.
-}
id : Field Swapi.Scalar.Id Swapi.Object.Human
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map Debug.toString, Decode.int |> Decode.map Debug.toString, Decode.bool |> Decode.map Debug.toString ] |> Decode.map Swapi.Scalar.Id)


{-| The name of the human.
-}
name : Field String Swapi.Object.Human
name =
    Object.fieldDecoder "name" [] Decode.string
