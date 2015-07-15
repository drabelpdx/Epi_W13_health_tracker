class HomeController < ApplicationController
  def index
    @foods = current_user.foods.order(sort + " " + direction).paginate(:per_page => 5, :page => params[:page])
    respond_to do |format|
      format.html
      format.js
    end
  end

  private
  def sort
    params[:sort] ||= "id"
  end

  def direction
    params[:direction] ||= "desc"
  end
end
