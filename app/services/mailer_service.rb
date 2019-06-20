require 'mail'
class MailerService
def send_mail
  Mail.new do
    from    'mikel@test.lindsaar.net'
    to      'julua-kuz95@yandex.ru'
    subject 'This is a test email'
    add_file    Report.new.call
  end
end
end

