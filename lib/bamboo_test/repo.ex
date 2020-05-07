defmodule BambooTest.Repo do
  use Ecto.Repo,
    otp_app: :bamboo_test,
    adapter: Ecto.Adapters.Postgres
end
