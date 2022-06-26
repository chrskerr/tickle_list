defmodule TickleListWeb.PageController do
  use TickleListWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
