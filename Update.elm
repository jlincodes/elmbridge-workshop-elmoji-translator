module Update exposing (..)

import Model


type Msg
    = SetCurrentText String
    -- this message will contain a data that is type String


update : Msg -> Model.Model -> Model.Model
update msg model =
    case msg of
        SetCurrentText newText ->
            { model | currentText = newText }
