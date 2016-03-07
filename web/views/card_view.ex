defmodule ExTrello.CardView do
  use ExTrello.Web, :view

  def render("show.json", %{card: card}) do
    card
  end
end
