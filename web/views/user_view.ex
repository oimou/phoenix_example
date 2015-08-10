defmodule PhoenixExample.UserView do
  use PhoenixExample.Web, :view

  def render("index.json", %{users: users}) do
    IO.inspect users
    users
  end
end
