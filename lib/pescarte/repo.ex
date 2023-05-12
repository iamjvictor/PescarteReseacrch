defmodule Pescarte.Repo do
  use Ecto.Repo,
    otp_app: :pescarte,
    adapter: Ecto.Adapters.Postgres
end
