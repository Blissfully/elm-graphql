-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.OrganizationIdentityProvider exposing (ExternalIdentitiesOptionalArguments, digestMethod, externalIdentities, id, idpCertificate, issuer, organization, selection, signatureMethod, ssoUrl)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.OrganizationIdentityProvider
selection constructor =
    Object.selection constructor


{-| The digest algorithm used to sign SAML requests for the Identity Provider.
-}
digestMethod : Field (Maybe Github.Scalar.Uri) Github.Object.OrganizationIdentityProvider
digestMethod =
    Object.fieldDecoder "digestMethod" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map Debug.toString, Decode.int |> Decode.map Debug.toString, Decode.bool |> Decode.map Debug.toString ] |> Decode.map Github.Scalar.Uri |> Decode.nullable)


type alias ExternalIdentitiesOptionalArguments =
    { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }


{-| External Identities provisioned by this Identity Provider

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
externalIdentities : (ExternalIdentitiesOptionalArguments -> ExternalIdentitiesOptionalArguments) -> SelectionSet decodesTo Github.Object.ExternalIdentityConnection -> Field decodesTo Github.Object.OrganizationIdentityProvider
externalIdentities fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionField "externalIdentities" optionalArgs object identity


id : Field Github.Scalar.Id Github.Object.OrganizationIdentityProvider
id =
    Object.fieldDecoder "id" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map Debug.toString, Decode.int |> Decode.map Debug.toString, Decode.bool |> Decode.map Debug.toString ] |> Decode.map Github.Scalar.Id)


{-| The x509 certificate used by the Identity Provder to sign assertions and responses.
-}
idpCertificate : Field (Maybe Github.Scalar.X509Certificate) Github.Object.OrganizationIdentityProvider
idpCertificate =
    Object.fieldDecoder "idpCertificate" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map Debug.toString, Decode.int |> Decode.map Debug.toString, Decode.bool |> Decode.map Debug.toString ] |> Decode.map Github.Scalar.X509Certificate |> Decode.nullable)


{-| The Issuer Entity ID for the SAML Identity Provider
-}
issuer : Field (Maybe String) Github.Object.OrganizationIdentityProvider
issuer =
    Object.fieldDecoder "issuer" [] (Decode.string |> Decode.nullable)


{-| Organization this Identity Provider belongs to
-}
organization : SelectionSet decodesTo Github.Object.Organization -> Field (Maybe decodesTo) Github.Object.OrganizationIdentityProvider
organization object =
    Object.selectionField "organization" [] object (identity >> Decode.nullable)


{-| The signature algorithm used to sign SAML requests for the Identity Provider.
-}
signatureMethod : Field (Maybe Github.Scalar.Uri) Github.Object.OrganizationIdentityProvider
signatureMethod =
    Object.fieldDecoder "signatureMethod" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map Debug.toString, Decode.int |> Decode.map Debug.toString, Decode.bool |> Decode.map Debug.toString ] |> Decode.map Github.Scalar.Uri |> Decode.nullable)


{-| The URL endpoint for the Identity Provider's SAML SSO.
-}
ssoUrl : Field (Maybe Github.Scalar.Uri) Github.Object.OrganizationIdentityProvider
ssoUrl =
    Object.fieldDecoder "ssoUrl" [] (Decode.oneOf [ Decode.string, Decode.float |> Decode.map Debug.toString, Decode.int |> Decode.map Debug.toString, Decode.bool |> Decode.map Debug.toString ] |> Decode.map Github.Scalar.Uri |> Decode.nullable)
