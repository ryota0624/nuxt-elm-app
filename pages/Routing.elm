port module Routing exposing (Route(..), routeToString, pushRoute, listenUrl)

aboutPath = "/about"
indexPath = "/"

type Route = About | Index

routeToString route = case route of
    About -> aboutPath
    Index -> indexPath

port pushUrl: String -> Cmd msg

pushRoute = routeToString >> pushUrl

port listenUrl: (String -> msg) -> Sub msg