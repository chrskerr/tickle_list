defmodule TickleList.Repo do
  use Ecto.Repo,
    otp_app: :tickle_list,
    adapter: Ecto.Adapters.Postgres
end
