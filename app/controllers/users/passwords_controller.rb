# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
  layout 'layouts/application'

  def update # rubocop:disable Metrics/AbcSize,Metrics/MethodLength
    self.resource = resource_class.reset_password_by_token(resource_params)
    yield resource if block_given?

    if resource.errors.empty?
      resource.unlock_access! if unlockable?(resource)
      if Devise.sign_in_after_reset_password
        flash_message = resource.active_for_authentication? ? :updated : :updated_not_active
        set_flash_message!(:notice, flash_message)
        resource.after_database_authentication
        sign_in(resource_name, resource)
      else
        set_flash_message!(:notice, :updated_not_active)
      end
      redirect_to after_resetting_password_path_for(resource)
    else
      set_minimum_password_length
      respond_with resource
    end
  end

  private

  def after_sending_reset_password_instructions_path_for(_resource_name)
    new_user_session_path
  end
end
