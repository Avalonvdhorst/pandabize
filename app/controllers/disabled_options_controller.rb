class DisabledOptionsController < ApplicationController
  def new
    @bm = BicycleModel.find(params[:bicycle_model_id])
    authorize(@bm)
  end
end
