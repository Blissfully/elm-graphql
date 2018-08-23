-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Normalize.Interface.Character exposing (appearsIn, commonSelection, friends, id, name, onDroid, onHuman_, selection)

import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode
import Normalize.Enum.Episode_
import Normalize.InputObject
import Normalize.Interface
import Normalize.Object
import Normalize.Scalar
import Normalize.Union


{-| Select only common fields from the interface.
-}
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) Normalize.Interface.Character
commonSelection constructor =
    Object.selection constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Normalize.Interface.Character) -> SelectionSet (a -> constructor) Normalize.Interface.Character
selection constructor typeSpecificDecoders =
    Object.interfaceSelection typeSpecificDecoders constructor


onHuman_ : SelectionSet decodesTo Normalize.Object.Human_ -> FragmentSelectionSet decodesTo Normalize.Interface.Character
onHuman_ (SelectionSet fields decoder) =
    FragmentSelectionSet "_human" fields decoder


onDroid : SelectionSet decodesTo Normalize.Object.Droid -> FragmentSelectionSet decodesTo Normalize.Interface.Character
onDroid (SelectionSet fields decoder) =
    FragmentSelectionSet "Droid" fields decoder


{-| Which movies they appear in.
-}
appearsIn : Field (List Normalize.Enum.Episode_.Episode_) Normalize.Interface.Character
appearsIn =
    Object.fieldDecoder "appearsIn" [] (Normalize.Enum.Episode_.decoder |> Decode.list)


{-| The friends of the character, or an empty list if they have none.
-}
friends : SelectionSet decodesTo Normalize.Interface.Character -> Field (List decodesTo) Normalize.Interface.Character
friends object =
    Object.selectionField "friends" [] object (identity >> Decode.list)


{-| The ID of the character.
-}
id : Field Normalize.Scalar.Id Normalize.Interface.Character
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map Debug.toString, Decode.int |> Decode.map Debug.toString, Decode.bool |> Decode.map Debug.toString ] |> Decode.map Normalize.Scalar.Id)


{-| The name of the character.
-}
name : Field String Normalize.Interface.Character
name =
    Object.fieldDecoder "name" [] Decode.string
