require 'twilio-ruby'

class MessagesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  # If using Devise gem for authorization
  #skip_before_filter :authenticate_user!, :only => "reply"

  def new
    boot_twilio
  end

  def reply
    body = params[:body]
    from_phone_number = params[:phone]

    boot_twilio
    @twilio_number = Rails.application.secrets.twilio_number

    @client.account.messages.create({
      from: @twilio_number,
      # from: '+15005550006', # Twilio test number
      to:   '18056805036',
      body: "#{body}",
    })
    redirect_to root_path
  end


  private

    def boot_twilio
      account_sid = Rails.application.secrets.twilio_sid
      auth_token  = Rails.application.secrets.twilio_token
      @client = Twilio::REST::Client.new account_sid, auth_token
    end
end
