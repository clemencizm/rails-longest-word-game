class GamesController < ApplicationController
  def new
    characters = ("a".."z").to_a
    @generated_string = Array.new(10) {characters.sample}
  end

  def score
    user_word = params[:answer].to
    user_word.include?(@generated_string) ? puts "yay!" : puts ":("
    # user_word = params[:answer]
    # user_word = params[:letters]
    raise
  end
end
