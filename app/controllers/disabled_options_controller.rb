class DisabledOptionsController < ApplicationController
  def new
    @bm = BicycleModel.find(params[:bicycle_model_id])
    authorize(@bm)
    @bm.disabled_options.build
  end

  def create
    @bm = BicycleModel.find(params[:bicycle_model_id])
    authorize(@bm)
    @bm.disabled_options.build
    multiselect = params["multi-select-options"]
    if multiselect.nil?
      redirect_to dashboard_path
    else
      build_disabled_options
    end
  end

  def build_disabled_options
    params["multi-select-options"].each do |ms|
      @dop = DisabledOption.create(option_one_id: params["select-option"][0].to_i, option_two_id: ms.to_i, bicycle_model_id: params[:bicycle_model_id])
    end
    if @dop.save
      redirect_to dashboard_path
    else
      render 'new'
    end
  end

  private

  def dop_params
    params.require(:disabled_option).permit("select-option", "multi-select-options", :bicycle_model_id)
  end
end
