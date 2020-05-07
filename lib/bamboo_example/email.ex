defmodule BambooExample.Email do
  import Bamboo.Email

  def welcome_email do
    new_email(
      to: "humans@coletiv.com",
      from: "tiago@myapp.com",
      subject: "Bamboo Test",
      html_body: "<strong>Thanks for joining!</strong>",
      text_body: "Thanks for joining!"
    )
  end
end
