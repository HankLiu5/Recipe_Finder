class RecipeController < ApplicationController
  def index
    @keyword = 'chocolate'
    @recipes = Recipe.for(@keyword)
  end
end
