# frozen_string_literal: true

class Users::ConfirmationsController < Devise::ConfirmationsController
  layout 'layouts/application'

  # GET /resource/confirmation/new

  # POST /resource/confirmation

  # GET /resource/confirmation?confirmation_token=abcdef

  # The path used after resending confirmation instructions.
  # def after_resending_confirmation_instructions_path_for(resource_name)
  #   super(resource_name)
  # end

  # The path used after confirmation.
  # def after_confirmation_path_for(resource_name, resource)
  #   super(resource_name, resource)
  # end

  #
  # def render_view_path(errors)
  #   user_already_confirmed?(errors) ? 'users/sessions/new' : 'new'
  # end
  #
  # def user_already_confirmed?(errors)
  #   errors.details[:email].present? && errors.details[:email].first[:error] == :already_confirmed
  # end
end
