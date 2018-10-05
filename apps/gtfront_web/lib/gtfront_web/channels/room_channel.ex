defmodule GtfrontWeb.RoomChannel do
	use Phoenix.Channel

	def join("room:lobby", _auth_message, socket) do
	  	{:ok, socket}
	end
	
  def handle_in("add", %{"accountID" => accountID, "widgets" => widgets}, socket) do
    IO.inspect accountID
    IO.inspect widgets

    {:noreply, socket}
  end
end