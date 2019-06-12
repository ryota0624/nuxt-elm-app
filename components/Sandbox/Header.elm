module Sandbox.Header exposing (main)
import Header exposing (elementArg)
import Browser

main =
  Browser.element {
      init = \() -> ("", Cmd.none)
      , update = elementArg.update
      , view = elementArg.view
      , subscriptions = elementArg.subscriptions
  }