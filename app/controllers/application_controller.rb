class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include Pundit

  # Pundit: white-list approach.
  # authorizing whether or not you can view a single record from db
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # filtering the records you're authorized to see from db
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  private

  # skip if we are in a devise action like login

  def skip_pundit?
    devise_controller?
  end
end
