defmodule PhoenixMoment.PageController do
  use PhoenixMoment.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
