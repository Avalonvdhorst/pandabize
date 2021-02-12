class BicycleModelsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  def index
    @bicycle_models = BicycleModel.all
  end

  def show
    @bm = BicycleModel.find(params[:id])
  end
end
