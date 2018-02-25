module Update exposing (..)

import Model


type Msg
    = SetCurrentText String
      -- this message will contain a data that is type String
    | ToggleDirection
    | SetSelectedKey String


update : Msg -> Model.Model -> Model.Model
update msg model =
    case msg of
        SetCurrentText newText ->
            { model | currentText = newText }

        ToggleDirection ->
            case model.direction of
                Model.TextToEmoji ->
                    -- return a model with direction value of 'Model.EmojiToText'
                    { model | direction = Model.EmojiToText }

                Model.EmojiToText ->
                    -- return a model with a direction value of 'Model.TextToEmoji'
                    { model | direction = Model.TextToEmoji }

        SetSelectedKey newKey ->
            { model | selectedKey = newKey }
