defmodule ExTrello.PageController do
  use ExTrello.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
