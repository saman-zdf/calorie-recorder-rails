class FoodlogsController < ApplicationController
  before_action :set_time, only: [:new, :edit]
  before_action :set_id, only: [:edit, :update, :show, :destroy]
  before_action :authenticate_user!

  def index
    @foodlogs = Foodlog.all
  end

  def new
    @foodlog = Foodlog.new
  end
  def create 
    @foodlog = Foodlog.create(food_params)
    flash[:notice] = "Your foodlog has been successfully created!"
    redirect_to foodlogs_path
  end
  def show
    # using before action for set_id
  end

  def edit
    # using before action for set_id
    # using before action for set time too
  end

  def update
    @foodlog.update(food_params)
    redirect_to foodlogs_path
    flash[:alert] = "Your log has been updated!!!"
  end

  def destroy
    @foodlog.destroy
    redirect_to foodlogs_path
    flash[:alert] = "Your item has been deleted!!!"
  end

  private
    def food_params
      params.require(:foodlog).permit(:meal, :calorie, :protein, :time)
    end
    def set_time
      @times = Foodlog.times.keys
    end
    def set_id
      @foodlog = Foodlog.find(params[:id])
    end
end
