class SkateboardsController < ApplicationController
  before_action :check_if_owner, :only => [:show]

  def index
    @skateboards = Skateboard.where(:user_id => @current_user)
  end

  def new
    @skateboard = Skateboard.new
  end

  def create
    skateboard = Skateboard.create skateboard_params
    skateboard.update(:user_id => @current_user.id)
    redirect_to skateboard
  end

  def edit
    @skateboard = Skateboard.find params[:id]
  end

  def update
    skateboard = Skateboard.find params[:id]
    skateboard.update skateboard_params
    redirect_to skateboard
  end
  
  def show
    @skateboard = Skateboard.find params[:id]
    @deck = Deck.find @skateboard.deck_id
    @truck = Truck.find @skateboard.truck_id
    @bearing = Bearing.find @skateboard.bearing_id
    @wheel = Wheel.find @skateboard.wheel_id
    @price = @deck.price + @truck.price + @bearing.price + @wheel.price
  end

  def destroy
    skateboard = Skateboard.find params[:id]
    skateboard.destroy
    redirect_to skateboards_path
  end

  private
  def skateboard_params
    params.require(:skateboard).permit(:deck_id, :truck_id, :bearing_id, :wheel_id, :price, :name)
  end

  def check_if_owner
    skateboard = Skateboard.find_by :id => params[:id]
    redirect_to root_path unless @current_user.id == skateboard.user_id
  end
end
