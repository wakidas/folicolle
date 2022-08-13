# frozen_string_literal: true

class DeviseMailer < Devise::Mailer
  layout 'mailer'

  # def confirmation_instructions(record, token, _opts = {})
  #   @confirmation_url =
  #     confirmation_url(record, confirmation_token: token, host: Settings.routes.mypage.url_options.host)
  #
  #   mail(
  #     to: record.email,
  #     subject: '【FOOVEST】ご利用アカウントに関するお知らせ',
  #     ) do |format|
  #     format.html { render layout: 'mailer', template: 'devise/users/mailer/confirmation_instructions' }
  #   end
  # end

  def reset_password_instructions(record, _token, _opts = {})
    # @token = token
    # devise_mail(record, :reset_password_instructions, opts)

    mail(
      to: record.email,
      # subject:,
    ) do |format|
      format.html { render template: 'devise/users/mailer/reset_password_instructions' }
    end
  end
end
