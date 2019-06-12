import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Routing as Routing 

main =
  Browser.element { 
      init = init, update = update, view = view, subscriptions = always Sub.none }


-- MODEL

type alias Model = Int

init : () -> (Model, Cmd Msg)
init =
  always (0, Cmd.none )


-- UPDATE

type Msg = Increment | Decrement | ToIndex

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Increment ->
      (model + 1, Cmd.none)

    Decrement ->
      (model - 1, Cmd.none)

    ToIndex ->
      (model, Routing.pushRoute Routing.Index)

-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ Html.text "About Page"
      , div [ onClick ToIndex ] [ text "to index" ]
    ]