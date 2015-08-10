defmodule PhoenixExample.PageController do
  use PhoenixExample.Web, :controller

  alias PhoenixExample.User

  def index(conn, _params) do
    users = Repo.all(User)
    render(conn, "index.html", users: users)
  end
end
