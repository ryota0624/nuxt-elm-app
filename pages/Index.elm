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

type Msg = Increment | Decrement | ToAbout

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Increment ->
        (model + 1, Cmd.none)

    Decrement ->
        (model - 1, Cmd.none)

    ToAbout ->
        (model, Routing.About |> Routing.pushRoute)

-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ Html.text "Index"
    , div [ onClick ToAbout ] [ text "to about" ]
    ]