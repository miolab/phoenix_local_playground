defmodule PhxTestHogeWeb.PageController do
  use PhxTestHogeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
