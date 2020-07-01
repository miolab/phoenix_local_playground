defmodule PhxTestMockWeb.PageController do
  use PhxTestMockWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
