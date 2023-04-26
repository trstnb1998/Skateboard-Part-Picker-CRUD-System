class TrucksController < ApplicationController
  def index
    @trucks = Truck.all
  end

  def new
    @truck = Truck.new
  end

  def create
    truck = Truck.create truck_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      truck.image = req["public_id"]
      truck.save
    end
    redirect_to truck_path(truck)
  end

  def edit
    @truck = Truck.find params[:id]
  end

  def update
    truck = Truck.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      truck.image = req["public_id"]
    end
    truck.update truck_params
    redirect_to truck_path(truck)
  end

  def show
    @truck = Truck.find params[:id]
  end

  def destroy
    truck = Truck.find params[:id]
    truck.destroy
    redirect_to trucks_path
  end

  private
  def truck_params
    params.require(:truck).permit(:name, :manufacturer, :size, :weight, :price, :image)
  end
end
