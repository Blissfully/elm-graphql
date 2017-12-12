module Api.Object.OrganizationEdge exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Graphqelm.Value as Value exposing (Value)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.OrganizationEdge
build constructor =
    Object.object constructor


cursor : FieldDecoder String Api.Object.OrganizationEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


node : Object node Api.Object.Organization -> FieldDecoder node Api.Object.OrganizationEdge
node object =
    Object.single "node" [] object
