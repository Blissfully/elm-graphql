module Api.Object.MarketplaceListingConnection exposing (..)

import Api.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Graphqelm.Value as Value exposing (Value)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.MarketplaceListingConnection
build constructor =
    Object.object constructor


edges : Object edges Api.Object.MarketplaceListingEdge -> FieldDecoder (List edges) Api.Object.MarketplaceListingConnection
edges object =
    Object.listOf "edges" [] object


nodes : Object nodes Api.Object.MarketplaceListing -> FieldDecoder (List nodes) Api.Object.MarketplaceListingConnection
nodes object =
    Object.listOf "nodes" [] object


pageInfo : Object pageInfo Api.Object.PageInfo -> FieldDecoder pageInfo Api.Object.MarketplaceListingConnection
pageInfo object =
    Object.single "pageInfo" [] object


totalCount : FieldDecoder Int Api.Object.MarketplaceListingConnection
totalCount =
    Object.fieldDecoder "totalCount" [] Decode.int
