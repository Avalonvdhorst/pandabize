class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def dashboard
    @bicycles = BicycleModel.all
    authorize BicycleModel
  end
end
