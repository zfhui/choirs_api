defmodule ChoirsApi.PageController do
  use ChoirsApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
