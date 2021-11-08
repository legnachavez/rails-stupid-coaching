class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
    #  @answer = coach_answer(@question)
  end

  def answer
    @answer = ""
    if params[:question]
      if params[:question] == 'i am going to work right now!'
        @answer ='Great!'
      elsif params[:question].end_with?('?')
        @answer ='Silly question, get dressed and go to work!'
      else
        @answer ="I don't care, get dressed and go to work!"
      end
    end
  end
end
