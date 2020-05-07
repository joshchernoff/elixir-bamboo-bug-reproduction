defmodule BambooExampleWeb.PageController do
  use BambooExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
