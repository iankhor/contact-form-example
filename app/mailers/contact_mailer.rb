class ContactMailer < ApplicationMailer
    default from: 'iankhorbc.shopping@gmail.com'

    def send_contact_email(email, message)
        @email = email
        @message = message
        mail(
            to: 'iankhorbc.shopping@gmail.com',
            subject: 'New contact message'
        ) do |format|
            format.text { render 'contact_mailer' }
            format.html { render 'contact_mailer' }
        end
    end
end
