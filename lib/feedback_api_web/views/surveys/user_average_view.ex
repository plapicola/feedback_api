defmodule FeedbackApiWeb.Surveys.UserAverageView do
  use FeedbackApiWeb, :view
  alias FeedbackApiWeb.{QuestionView, Surveys.UserAverageView, SurveyView}

  def render("show.json", %{average: average}) do
    render_one(average, UserAverageView, "user_average.json")
  end

  def render("user_average.json", %{user_average: user_average}) do
    import IEx; IEx.pry()
    %{
      survey: render_one(user_average.survey, SurveyView, "survey.json"),
      averages: Enum.map(user_average.average, fn user -> %{
        user_id: user.user_id,
        question_id: user.question_id,
        average_rating: user.average_rating
        } end)
    }
  end
end
