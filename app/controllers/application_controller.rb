class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [
      :first_name,
      :last_name,
      :dob,
      :phone_number,
      :street_address,
      :state,
      :zip_code,
      :photo_identification,
    ])
  end
end
