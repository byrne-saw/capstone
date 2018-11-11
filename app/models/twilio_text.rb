class TwilioText 
  attr_reader :message
  attr_reader :phone_number

  def initialize(message, phone_number)
    @message = message
    @phone_number = phone_number
  end

  def text
    client = Twilio::REST::Client.new
    client.messages.create({
      from: Rails.application.credentials.twilio_phone_number,
      to: '+17738853893',
      body: message
    })
  end
end