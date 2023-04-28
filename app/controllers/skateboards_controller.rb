class SkateboardsController < ApplicationController
  before_action :check_if_owner, :only => [:show]

  # shows all of the users skateboards
  def index
    @skateboards = Skateboard.where(:user_id => @current_user)
  end


  # Shows new skateboard form
  def new
    @skateboard = Skateboard.new
  end

  # Creates user's new skateboard
  def create
    skateboard = Skateboard.create skateboard_params
    skateboard.update(:user_id => @current_user.id)
    redirect_to skateboard
  end

  # Edit user's skateboard
  def edit
    @skateboard = Skateboard.find params[:id]
  end


  # Allows for skateboard to be updated
  def update
    skateboard = Skateboard.find params[:id]
    skateboard.update skateboard_params
    redirect_to skateboard
  end
  

  # Show's user's skateboard index and calculates all the part's prices
  def show
    @skateboard = Skateboard.find params[:id]
    @deck = Deck.find @skateboard.deck_id
    @truck = Truck.find @skateboard.truck_id
    @bearing = Bearing.find @skateboard.bearing_id
    @wheel = Wheel.find @skateboard.wheel_id
    @price = @deck.price + @truck.price + @bearing.price + @wheel.price
  end

  # Destroy skateboard
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
