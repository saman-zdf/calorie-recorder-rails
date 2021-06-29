class FoodlogsController < ApplicationController
  before_action :set_time, only: [:new, :edit]

  def index
    @foodlogs = Foodlog.all
  end

  def new
    @foodlog = Foodlog.new
  end
  def create 
    @foodlog = Foodlog.create(food_params)
    redirect_to foodlogs_path
  end
  def show
    
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def food_params
      params.require(:foodlog).permit(:meal, :calorie, :protein, :time)
    end
    def set_time
      @times = Foodlog.times.keys
    end
end
