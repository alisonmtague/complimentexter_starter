require 'twilio-ruby'

class Notification
  attr_accessor :to_number

  def initialize(options={})
    self.to_number = options[:to_number]
    account_sid = ENV["twilio_sid"]
    auth_token =  ENV["twilio_token"]
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def text
    # Sends a text to your phone number
    @client.messages.create(
      from: '+19549476202',
      to: '+13058151006',
      body: random_compliment
    )
  end


  def random_compliment
    compliments = ["Youre fun!", "You are responsible.", "Happy Birthday!"]
    compliments.sample
  end
end