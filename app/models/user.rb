class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :meals
  has_many :foods, through: :meals

  def search_foods(search_param)
    if search_param
      # foods.where('food LIKE ?', "%#{search_param}%")
      meals.where()
      # meals.select do |meal|
      #   meal.food.food.include?(search_param)
      # end
    else
      meals
    end
  end
end
