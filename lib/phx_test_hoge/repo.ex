defmodule PhxTestHoge.Repo do
  use Ecto.Repo,
    otp_app: :phx_test_hoge,
    adapter: Ecto.Adapters.Postgres
end
