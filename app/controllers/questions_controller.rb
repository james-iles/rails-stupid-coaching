class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question].downcase
    @coach_response = ""
    if @question.end_with?("?")
      @coach_response = "Silly question, get dressed and go to work!"
    elsif @question == "i am going to work right now!"
      @coach_response = "Great!"
    else
      @coach_response = "I don't care, get dressed and go to work!"
    end
  end
end
