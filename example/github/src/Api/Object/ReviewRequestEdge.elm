module Api.Object.ReviewRequestEdge exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Graphqelm.Value as Value exposing (Value)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.ReviewRequestEdge
build constructor =
    Object.object constructor


cursor : FieldDecoder String Api.Object.ReviewRequestEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


node : Object node Api.Object.ReviewRequest -> FieldDecoder node Api.Object.ReviewRequestEdge
node object =
    Object.single "node" [] object
