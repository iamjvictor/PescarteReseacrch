defmodule PescarteWeb.PageLive do
    use PescarteWeb, :live_view

  def mount(_params , _session, socket) do
    {:ok, socket
        |> assign(:count, 0)}
  end

  def handle_event("inc", _params, socket) do
    {:noreply,
        socket
        |> assign(:count, socket.assigns.count + 1)}
  end
end
