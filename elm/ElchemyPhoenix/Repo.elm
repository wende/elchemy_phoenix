module ElchemyPhoenix.Repo exposing (..)


meta : List String
meta =
    [ "use Ecto.Repo, otp_app: :roadmap" ]


init : a -> b -> Result String b
init _ opts =
    Ok opts
