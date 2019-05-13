require 'twilio-ruby'
require 'dotenv'

class TextMessage
  Dotenv.load('twilio.env')
  FROM = ENV['TWILIO_NUMBER']
  TO = ENV["MY_PHONE_NUMBER"]

  def initialize(client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], 
    ENV['TWILLIO_AUTH_TOKEN']))
    @client = client
  end

  def send
    @client.messages.create(
    to: TO,
    from: FROM,
    body: 'Your order has been placed and will be delivered in 30 minutes'
    )
  end
end
