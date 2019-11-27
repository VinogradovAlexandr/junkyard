defmodule Junkyard.Repo do
  use Ecto.Repo,
    otp_app: :junkyard,
    adapter: Ecto.Adapters.Postgres
end
