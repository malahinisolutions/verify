class DeviseMailer < Devise::Mailer
  helper :application # gives access to all helpers defined within `application_helper`.
  include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
  default template_path: 'devise/mailer' # to make sure that your mailer uses the devise views

  def confirmation_instructions(record, token, opts={})
    attach_logo
    super
  end
  
  def reset_password_instructions(record, token, opts={})
    attach_logo
    super
  end
  
  def unlock_instructions(record, token, opts={})
    attach_logo
    super
  end

  protected
  
  def attach_logo
    attachments.inline['logo_aten.png'] = File.read(Rails.root.join('app/assets/images/logo_aten.png'))
  end
end