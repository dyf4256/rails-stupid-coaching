class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question]
      @question = params[:question].capitalize
      @answer = self.coach(@question)
    end
  end

  private

  def coach(question)
    text = question.downcase.gsub(/\s/, '')
    if text.include?('iamgoingtowork')
      return 'Great!'
    elsif text.include?('?')
      return 'Silly question, get dressed and go to work!'
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
