class SendService
  attr_reader :service
  def initialize(service)
    @service=service
  end
  def call
    service.send_mail
  end
end

