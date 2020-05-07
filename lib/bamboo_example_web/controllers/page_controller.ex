defmodule BambooExampleWeb.PageController do
  use BambooExampleWeb, :controller

  alias BambooExample.{Email, Mailer}

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def send_email(conn, _params) do
    # Create your email
    Email.welcome_email()
    # Send your email
    |> Mailer.deliver_now()

    render(conn, "send_email.html")
  end
end
