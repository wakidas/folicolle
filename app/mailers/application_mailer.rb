# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'フォリコレ運営 <noreply@folicolle.jp>'
  layout 'mailer'
end
