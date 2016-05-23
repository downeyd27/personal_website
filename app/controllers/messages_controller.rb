require 'twilio-ruby'

class MessagesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  # If using Devise gem for authorization
  #skip_before_filter :authenticate_user!, :only => "reply"

def reply
  #code
  account_sid = Rails.application.secrets.twilio_sid
  auth_token  = Rails.application.secrets.twilio_token
  @client = Twilio::REST::Client.new account_sid, auth_token

  sms = @client.account.messages.create({
  	:from => '+15038500760',
  	:to =>   '18056805036',
  	:body => 'Testing Twilio from app',
  })
  puts "Sent message from {sms.from} to #{sms.to}"

  "*" * 50
  p sms.from
  "*" * 50
  p sms.to
  "*" * 50
  p sms.body
  "*" * 50
end


  # def reply
  #   # message_body = params["Body"]
  #   # from_number  = params["From"]
  #
  #   boot_twilio
  #
  #   sms = @client.account.messages.create({
  #   	:from => '+15038500760',
  #   	:to => '+18056805036',
  #   	:body => "Hello World!  Testing from my website",
  #   })
  #   "*" * 50
  #   p sms.to
  #   "*" * 50
  #   p sms.from
  #   "*" * 50
  #   p sms.body
  #   "*" * 50
  # end
  #
  # private
  #
  # def boot_twilio
  #   account_sid = Rails.application.secrets.twilio_sid
  #   auth_token  = Rails.application.secrets.twilio_token
  #   @client     = Twilio::REST::Client.new account_sid, auth_token
  # end

  # rescue_from StandardError do |exception|
  #   trigger_sms_alerts(exception)
  # end
  #
  # def trigger_sms_alerts(e)
  #   @alert_message = "
  #     [This is a test] ALERT!
  #     It appears the server is having issues.
  #     Exception: #{e}.
  #     Go to: http://newrelic.com for more details."
  #   @image_url = "http://howtodocs.s3.amazonaws.com/new-relic-monitor.png"
  #
  #   @admin_list = YAML.load_file('config/administrators.yml')
  #
  #   begin
  #     @admin_list.each do |admin|
  #       phone_number = admin['phone_number']
  #       send_message(phone_number, @alert_message, @image_url)
  #     end
  #
  #     flash[:success] = "Exception: #{e}. Administrators will be notified."
  #   rescue
  #     flash[:alert] = "Something went wrong."
  #   end
  #   redirect_to '/'
  # end
  #
  # def index
  # end
  #
  # def server_error
  #   raise 'A test exception'
  # end
  #
  # private
  #
  #   def send_message(phone_number, alert_message, image_url)
  #
  #     @twilio_number = ENV['TWILIO_NUMBER']
  #     @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
  #
  #     message = @client.account.messages.create(
  #       :from => @twilio_number,
  #       :to => phone_number,
  #       :body => alert_message,
  #       # US phone numbers can make use of an image as well.
  #       # :media_url => image_url
  #     )
  #     puts message.to
  #   end

end
