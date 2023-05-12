defmodule PescarteWeb.PageLive do
    use PescarteWeb, :live_view

  def mount(_params , _session, socket) do
    {:ok, socket
        |> assign(:count, 0)}
  end

  def handle_event("inc", params, socket) do
    {int, _rest} = Integer.parse(params["amount"])
    {:noreply,
        socket
        |> assign(:count, socket.assigns.count + int)}
  end
end
