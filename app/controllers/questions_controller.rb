class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    case @question
    when "I am going to work" then @answer = "Great!"
    when @question.include?('?') then @answer = "Silly question, get dressed and go to work!"
    else @answer = "I don't care, get dressed and go to work!"
    end
  end
end
