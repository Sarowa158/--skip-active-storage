class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @input = params[:question]
    if @input == "I am going to work"
      @input = "Great"
    elsif @input[-1,1] == "?"
      @input = "Silly question, get dressed and go to work!"
    else
      @input = "I don't care, get dressed and go to work!"
    end
  end
end
