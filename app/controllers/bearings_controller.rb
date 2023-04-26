class BearingsController < ApplicationController
  def index
    @bearings = Bearing.all
  end

  def new
    @bearing = Bearing.new
  end

  def create
    bearing = Bearing.create bearing_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      bearing.image = req["public_id"]
      bearing.save
    end
    redirect_to bearing_path(bearing)
  end

  def edit
    @bearing = Bearing.find params[:id]
  end

  def update
    bearing = Bearing.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      bearing.image = req["public_id"]
    end
    bearing.update bearing_params
    redirect_to bearing_path(bearing)
  end

  def show
    @bearing = Bearing.find params[:id]
  end

  def destroy
    bearing = Bearing.find params[:id]
    bearing.destroy
    redirect_to bearings_path
  end

  private
  def bearing_params
    params.require(:bearing).permit(:name, :manufacturer, :material, :price, :image)
  end
end
