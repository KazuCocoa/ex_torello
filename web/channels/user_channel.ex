defmodule ExTrello.UserChannel do
  use ExTrello.Web, :channel

  def join("users:" <> user_id, _params, socket), do: {:ok, socket}
end
