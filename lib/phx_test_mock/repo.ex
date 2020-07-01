defmodule PhxTestMock.Repo do
  use Ecto.Repo,
    otp_app: :phx_test_mock,
    adapter: Ecto.Adapters.Postgres
end
