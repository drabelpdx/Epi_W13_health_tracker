class MealsController < ApplicationController

  def create
    @food = Food.where(food: params[:food]).first
    Meal.create(user_id: current_user.id, food_id: @food.id)
    respond_to do |format|
      format.js
    end
  end

end
