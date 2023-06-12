class QuestionsController < ApplicationController
  def home

  end

  def ask

  end

  def answer
    @answer = ['Great', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    @ask = params[:ask]
    if @ask == 'I am going to work'
    @coach = @answer[0]
    elsif @ask.include?('?')
    @coach = @answer[1]
    else
    @coach = @answer[2]
    end
  end
end
