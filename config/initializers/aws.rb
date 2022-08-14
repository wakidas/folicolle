# frozen_string_literal: true

Aws::Rails.add_action_mailer_delivery_method(
  :ses,
  credentials: Aws::Credentials.new(Rails.application.credentials.config.dig(:aws, :access_key_id),
                                    Rails.application.credentials.config.dig(:aws, :secret_access_key)),
  region: 'ap-northeast-1',
)
