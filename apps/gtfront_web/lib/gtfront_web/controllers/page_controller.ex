defmodule GtfrontWeb.PageController do
  use GtfrontWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
