# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  layout 'layouts/application'

  # GET /resource/sign_up
  def new
    super
    # binding.pry
  end

  # POST /resource
  def create
    super
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  def destroy
    super
  end

  # def complete
  #   @a8_sales_order = "yup-#{Time.current.strftime("%Y%m%d%H%M%S")}-#{params[:sales_order]}"
  #   @user = User.find(params[:sales_order])
  #   @shown_for_lp = params[:shown_for] == 'lp'
  #   AppGoogleAnalyticsClient.track_completion_of_user_registration_event(user_id: @user.id) if Rails.env.production?
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer
  #     .permit(:sign_up, keys: [
  #       :register_referral_code,
  #       marketing_information_attributes: [:from_lp]
  #     ])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource) end

  # def build_query_parameters_on_user_registration_params
  #   referer = URI.parse(request.referer.to_s)
  #   query_parameters = Rack::Utils.parse_nested_query(referer.query)
  #   query_parameters.merge(url: referer.to_s) if referer
  # end

  # def create_query_parameters_on_user_registration(user:)
  #   query_parameters = params[:query_parameters_on_user_registration]
  #
  #   return unless query_parameters
  #
  #   user.create_query_parameters_on_user_registration(
  #     utm_campaign: query_parameters[:utm_campaign],
  #     utm_content: query_parameters[:utm_content],
  #     utm_medium: query_parameters[:utm_medium],
  #     utm_source: query_parameters[:utm_source],
  #     utm_term: query_parameters[:utm_term],
  #     url: query_parameters[:url]
  #   )
  # end
end
