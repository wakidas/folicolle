# frozen_string_literal: true

class DeviseMailer < Devise::Mailer
  include Devise::Mailers::Helpers
  default from: 'フォリコレ運営 <noreply@folicolle.jp>'
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

  def reset_password_instructions(record, token, opts = {})
    @token = token
    devise_mail(record, :reset_password_instructions, opts)
  end

  # TODO: 検証終わったら消す #84
  def test
    @greeting = 'Hi'

    mail to: 'ymnkknt3@gmail.com'
  end
end
