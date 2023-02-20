class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @asks = params[:ask]

    if @asks == 'I am going to work'
      @reponse = 'Great!'
    elsif @asks == "C'est l'anniversaire de qui ?"
      @reponse = 'Happy birthday Louis du Wagon Rennes !'
    elsif @asks.include?('?')
      @reponse = 'Silly question, get dressed and go to work!'
    else
      @reponse = "I don't care, get dressed and go to work!"
    end
  end
end
