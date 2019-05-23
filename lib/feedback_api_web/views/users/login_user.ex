defmodule FeedbackApiWeb.Users.LoginView do
  use FeedbackApiWeb, :view

  def render("login_user.json", %{user: user}) do
    %{
      "id": user.id,
      "api_key": user.api_key,
      "role": user.role,
      "full_name": "April Dagonese"
     }
  end
end
