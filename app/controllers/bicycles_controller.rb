class BicyclesController < ApplicationController

  def create
    skip_authorization
    @bike = Bicycle.new(bike_params)
    @bike.user = current_user

    if @bike.save
      build_bicycle_options unless params[:options][0] == "none"
      redirect_to bicycle_model_bicycle_path(params[:bicycle_model_id], @bike)
    else
      render "bicycle_models/show"
    end
  end

  def build_bicycle_options
    params[:options].each do |opt|
      BicycleOption.create!(option_id: opt.to_i, bicycle_id: @bike.id)
    end
  end

  def show
    skip_authorization
    @bm = BicycleModel.find(params[:bicycle_model_id])
    @bike = Bicycle.find(params[:id])
  end

  private

  def bike_params
    params.permit(:bicycle_model_id)
  end
end
