-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Swapi.Query exposing (DroidRequiredArguments, GreetRequiredArguments, HeroOptionalArguments, HeroUnionOptionalArguments, HumanRequiredArguments, droid, forcedError, greet, hero, heroUnion, human, selection)

import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)
import Swapi.Enum.Episode
import Swapi.InputObject
import Swapi.Interface
import Swapi.Object
import Swapi.Scalar
import Swapi.Union


{-| Select fields to build up a top-level query. The request can be sent with
functions from `Graphql.Http`.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) RootQuery
selection constructor =
    Object.selection constructor


type alias DroidRequiredArguments =
    { id : Swapi.Scalar.Id }


{-|

  - id - ID of the droid.

-}
droid : DroidRequiredArguments -> SelectionSet decodesTo Swapi.Object.Droid -> Field (Maybe decodesTo) RootQuery
droid requiredArgs object_ =
    Object.selectionField "droid" [ Argument.required "id" requiredArgs.id (\(Swapi.Scalar.Id raw) -> Encode.string raw) ] object_ (identity >> Decode.nullable)


{-| Getting this field will result in an error.
-}
forcedError : Field (Maybe String) RootQuery
forcedError =
    Object.fieldDecoder "forcedError" [] (Decode.string |> Decode.nullable)


type alias GreetRequiredArguments =
    { input : Swapi.InputObject.Greeting }


greet : GreetRequiredArguments -> Field String RootQuery
greet requiredArgs =
    Object.fieldDecoder "greet" [ Argument.required "input" requiredArgs.input Swapi.InputObject.encodeGreeting ] Decode.string


type alias HeroOptionalArguments =
    { episode : OptionalArgument Swapi.Enum.Episode.Episode }


{-|

  - episode - If omitted, returns the hero of the whole saga. If provided, returns the hero of that particular episode.

-}
hero : (HeroOptionalArguments -> HeroOptionalArguments) -> SelectionSet decodesTo Swapi.Interface.Character -> Field decodesTo RootQuery
hero fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { episode = Absent }

        optionalArgs =
            [ Argument.optional "episode" filledInOptionals.episode (Encode.enum Swapi.Enum.Episode.toString) ]
                |> List.filterMap identity
    in
    Object.selectionField "hero" optionalArgs object_ identity


type alias HeroUnionOptionalArguments =
    { episode : OptionalArgument Swapi.Enum.Episode.Episode }


{-|

  - episode - If omitted, returns the hero of the whole saga. If provided, returns the hero of that particular episode.

-}
heroUnion : (HeroUnionOptionalArguments -> HeroUnionOptionalArguments) -> SelectionSet decodesTo Swapi.Union.CharacterUnion -> Field decodesTo RootQuery
heroUnion fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { episode = Absent }

        optionalArgs =
            [ Argument.optional "episode" filledInOptionals.episode (Encode.enum Swapi.Enum.Episode.toString) ]
                |> List.filterMap identity
    in
    Object.selectionField "heroUnion" optionalArgs object_ identity


type alias HumanRequiredArguments =
    { id : Swapi.Scalar.Id }


{-|

  - id - ID of the human.

-}
human : HumanRequiredArguments -> SelectionSet decodesTo Swapi.Object.Human -> Field (Maybe decodesTo) RootQuery
human requiredArgs object_ =
    Object.selectionField "human" [ Argument.required "id" requiredArgs.id (\(Swapi.Scalar.Id raw) -> Encode.string raw) ] object_ (identity >> Decode.nullable)
