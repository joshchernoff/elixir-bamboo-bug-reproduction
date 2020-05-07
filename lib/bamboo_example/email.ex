defmodule BambooExample.Email do
  use Bamboo.Phoenix, view: BambooExampleWeb.LayoutView
  import Bamboo.Email

  # as per https://hexdocs.pm/bamboo/Bamboo.Phoenix.html
  def welcome_email do
    new_email()
    |> put_text_layout({BambooExampleWeb.LayoutView, "email.text"})
    |> put_html_layout({BambooExampleWeb.LayoutView, "email.html"})
    # Pass atom to render html AND plain text templates
    |> render(:welcome)
  end
end
