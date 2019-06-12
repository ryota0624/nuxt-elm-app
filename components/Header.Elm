module Header exposing (elementArg, main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Routing as Routing 

main =
  Browser.element elementArg
elementArg = { 
      init = init, update = update, view = view, subscriptions = always  <| Sub.batch [Routing.listenUrl ReceivedURl ] 
      }


-- MODEL

type alias Model = String

init : String -> (Model, Cmd Msg)
init url =
   (url, Cmd.none )


-- UPDATE

type Msg = TransitionTo Routing.Route | ReceivedURl String

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    TransitionTo route ->
      (model, Routing.pushRoute route)
    
    ReceivedURl url ->
      (url, Cmd.none)

-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ Html.text "Header"
      , div [] [text ("current url: " ++ model)]
      , div [ onClick <| TransitionTo Routing.Index ] [ text "to index" ]
      , div [ onClick <| TransitionTo Routing.About ] [ text "to about" ]
    ]