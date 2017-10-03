class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout 'mailer'
  
  
  protected
  
  def attach_logo
    attachments.inline['logo_aten.png'] = File.read(Rails.root.join('app/assets/images/logo_aten.png'))
  end
end
