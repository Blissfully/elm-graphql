module Api.Object.Closable exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Graphqelm.Value as Value exposing (Value)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.Closable
build constructor =
    Object.object constructor


closed : FieldDecoder Bool Api.Object.Closable
closed =
    Object.fieldDecoder "closed" [] Decode.bool


closedAt : FieldDecoder String Api.Object.Closable
closedAt =
    Object.fieldDecoder "closedAt" [] Decode.string
