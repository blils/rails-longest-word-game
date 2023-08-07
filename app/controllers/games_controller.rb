class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a
    @letterssample = @letters.sample(10)
  end

  def score
    @word = params[:word]
    @thissessionletters = params[:gregory]


   letter_not_included = @word.chars.find do |letter|
    !@thissessionletters.include? letter
   end

   @word.all?{@thissessionletters.count(|letter|) >= @word.count}
  end
end
