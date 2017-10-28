module ElchemyPhoenix.Application exposing (..)

import Elchemy exposing (ffi)


type Option
    = Strategy
    | Name


type Return
    = Ok


meta : List String
meta =
    [ "use Application"
    , "import Supervisor.Spec"
    ]


start : atom -> atom -> Result String String
start _ _ =
    let
        children =
            []

        opts =
            [ ( Strategy, "one_for_one" )
            , ( Name, "Roadmap.Supervisor" )
            ]
    in
        start_link
            children
            opts


start_link : a -> b -> Result String String
start_link =
    ffi "Supervisor" "start_link"
