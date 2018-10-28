# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  
  protected
  
  def update_resource(resource, params)
    if resource.provider == "google_oauth2"
      params.delete("current_password")
      resource.update_without_password(params)
    else
      resource.update_with_password(params)
    end
  end

end
