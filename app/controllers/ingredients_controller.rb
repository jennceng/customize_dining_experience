class IngredientsController < ApplicationController

  def all_stats(ingredients)
    total_stats = [{name: "liked", data: []}, {name: "disliked", data: []}]
    # binding.pry

    ingredients.each do |ingredient|
      ingredient.statistics
      # binding.pry
      total_stats.first[:data] << ["#{ingredient.name}", ingredient.liked]
      total_stats.last[:data]<< ["#{ingredient.name}", ingredient.disliked]
    end
    return total_stats
  end

  def index
    @ingredients = Ingredient.all.sort_by{|i| i.times_recorded}
    @total_stats = all_stats(@ingredients)
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      flash[:success] = 'Ingredient successfully saved'
      redirect_to ingredients_path
    else
      @errors = @question.errors.full_messages.join", "
      flash[:error] = "#{@errors}"
      render :new
    end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    @statistics = @ingredient.statistics
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
