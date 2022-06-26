defmodule TickleListWeb.PageController do
  use TickleListWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def workspace(conn, %{"workspaceId" => workspaceId}) do
    render(conn, "workspace.html", workspaceId: workspaceId)
  end

  def list(conn, %{"workspaceId" => workspaceId, "listId" => listId}) do
    render(conn, "list.html", workspaceId: workspaceId, listId: listId)
  end
end
