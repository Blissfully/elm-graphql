module CustomScalarCodecs exposing (Id(..), PosixTime, codecs)

import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Json.Decode as Decode exposing (Decoder)
import Swapi.Scalar exposing (defaultCodecs)
import Time


type Id
    = Id Int


type alias PosixTime =
    Time.Posix


codecs : Swapi.Scalar.Codecs Id PosixTime
codecs =
    Swapi.Scalar.defineCodecs
        { codecId =
            { encoder = \(Id raw) -> raw |> String.fromInt |> Encode.string
            , decoder =
                Decode.string
                    |> Decode.map String.toInt
                    |> Decode.map (Maybe.withDefault 0)
                    |> Decode.map Id
            }
        , codecPosixTime =
            { encoder = Time.posixToMillis >> Encode.int
            , decoder = Decode.int |> Decode.map Time.millisToPosix
            }
        }
