class GamesController < ApplicationController

  def new
    # @new = params[:new]
    @letters = []
    10.times do
      @letters << ('a'..'z').to_a.sample
    end
  end

  def score
    @word = params[:word]

    if @word.valid?
      @answer = "Congratulations #{@word} is a valid English word!"
    elsif @word.valid? == false
      @answer = "Sorry but #{@word} isn't a valid English word."
    else
      @answer = "Sorry but #{@word} can't be built out of #{@letters}"
    end
  end
end
