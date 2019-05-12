# require 'take_away'
require("bundler")
Bundler.require()

class TextMessage
  FROM = ENV['TWILIO_NUMBER']
  TO = ENV["MY_PHONE_NUMBER"]

  def initialize(client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], 
    ENV['TWILLIO_AUTH_TOKEN']))
    @client = client
  end

  def send(text)
    @client.messages.create(
    to: TO,
    from: FROM,
    body: text
    )
  end
end
