# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  layout 'layouts/application'
  # before_action :configure_sign_in_params, only: [:create]
  # after_action :create_user_login_history!, only: [:create]

  # GET /resource/sign_in

  # POST /resource/sign_in

  # DELETE /resource/sign_out

  private

  # def after_sign_in_path_for(resource)
  #   stored_location_for(resource) || root_path
  # end

  def after_sign_out_path_for(_resource)
    new_user_session_path
  end
end
