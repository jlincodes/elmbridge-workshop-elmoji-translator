module Model exposing (..)


type alias Model =
    { currentText : String
    , direction : Direction
    , selectedKey : String
    }


type Direction
    = TextToEmoji
    | EmojiToText


init : Model
init =
    { currentText = ""
    , direction = TextToEmoji
    , selectedKey = defaultKey
    }


defaultKey : String
defaultKey =
    "😅"
