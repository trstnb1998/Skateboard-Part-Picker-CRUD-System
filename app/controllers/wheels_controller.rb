class WheelsController < ApplicationController
  def index
    @wheels = Wheel.all
  end

  def new
    @wheel = Wheel.new
  end

  def create
    wheel = Wheel.create wheel_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      wheel.image = req["public_id"]
      wheel.save
    end
    redirect_to wheel_path(wheel)
  end

  def edit
    @wheel = Wheel.find params[:id]
  end

  def update
    wheel = Wheel.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      wheel.image = req["public_id"]
    end
    wheel.update wheel_params
    redirect_to wheel_path(wheel)
  end

  def show
    @wheel = Wheel.find params[:id]
  end

  def destroy
    wheel = Wheel.find params[:id]
    wheel.destroy
    redirect_to wheels_path
  end

  private
  def wheel_params
    params.require(:wheel).permit(:name, :manufacturer, :size, :duro, :price, :image)
  end
end
