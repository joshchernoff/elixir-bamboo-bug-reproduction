defmodule BambooExample.Repo do
  use Ecto.Repo,
    otp_app: :bamboo_example,
    adapter: Ecto.Adapters.Postgres
end
