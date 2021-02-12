class BicycleModelsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  def index
    @bicycle_models = policy_scope(BicycleModel)
  end

  def show
    @bm = BicycleModel.find(params[:id])
    authorize(@bm)
  end

  def new
    @bm = BicycleModel.new
    authorize(@bm)
  end

  def create
    @bm = BicycleModel.new(set_bm_params)
    authorize(@bm)

    if @bm.save
      redirect_to dashboard_path
    else
      render 'new'
    end
  end

  def edit
    @bm = BicycleModel.find(params[:id])
    authorize(@bm)
  end

  def update
    @bm = BicycleModel.find(params[:id])
    @bm.update(set_bm_params)
    authorize(@bm)

    if @bm.save
      redirect_to dashboard_path
    else
      render 'edit'
    end
  end

  private

  def set_bm_params
    params.require(:bicycle_model).permit(:name, :description, :photo)
  end
end
