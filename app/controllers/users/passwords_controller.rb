# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
  layout 'layouts/application'

  def create
    self.resource = resource_class.send_reset_password_instructions(resource_params)
    yield resource if block_given?

    successfully_sent?(resource)
    # flash.clear
    redirect_to new_user_session_path
  end
end
