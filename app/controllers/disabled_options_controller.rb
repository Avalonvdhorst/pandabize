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
    if params[:disabled_option_attributes].nil?
      redirect_to dashboard_path
    else
      build_disabled_options
    end
  end

  def build_disabled_options
    params[:disabled_option_attributes].each do |doa|
      doa[:option_two_ids].each do |oti|
      @dop = DisabledOption.create(option_one_id: doa[:option_one_id].to_i, option_two_id: oti.to_i, bicycle_model_id: params[:bicycle_model_id])
      end
    end
    if @dop.save
      redirect_to dashboard_path
    else
      render 'new'
    end
  end

  private

  def dop_params
    params.require(:disabled_option).permit(:disabled_option_attributes, :bicycle_model_id)
  end
end
