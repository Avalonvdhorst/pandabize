class BicyclesController < ApplicationController
  def create
    raise
    @bm = BicycleModel.find(params[:bicycle_model_id])
    @bike = Bicycle.new(bike_params)
    @bike.user = current_user
  end

  private

  def bike_params
    params.require(:bicycle).permit(:bicycle_model_id)
  end
end
