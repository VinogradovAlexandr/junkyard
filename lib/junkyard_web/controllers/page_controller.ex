defmodule JunkyardWeb.PageController do
  use JunkyardWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
