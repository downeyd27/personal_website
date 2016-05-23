require 'twilio-ruby'

class MessagesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  # If using Devise gem for authorization
  #skip_before_filter :authenticate_user!, :only => "reply"

  rescue_from StandardError do |exception|
    trigger_sms_alerts(exception)
  end

  def trigger_sms_alerts(e)
    @alert_message = "
    [This is a test] ALERT!
    It appears the server is having issues.
    Exception: #{e}.
    Go to: http://newrelic.com for more details."
    @image_url = "http://howtodocs.s3.amazonaws.com/new-relic-monitor.png"

    @admin_list = YAML.load_file('config/administrators.yml')

    begin
      @admin_list.each do |admin|
        phone_number = admin['phone_number']
        send_message(phone_number, @alert_message, @image_url)
      end

      flash[:success] = "Exception: #{e}. Administrators will be notified."
    rescue
      flash[:alert] = "Something went wrong."
    end
    redirect_to '/'
  end

  def index
  end

  def server_error
    raise 'A test exception'
  end

  def new
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
      account_sid = Rails.application.secrets.twilio_test_sid
      auth_token  = Rails.application.secrets.twilio_test_token
      @client = Twilio::REST::Client.new account_sid, auth_token
    end

    def send_message(phone_number, alert_message, image_url)

      @twilio_number = ENV['TWILIO_NUMBER']
      
      boot_twilio

      message = @client.account.messages.create(
      :from => @twilio_number,
      :to => phone_number,
      :body => alert_message,
      # US phone numbers can make use of an image as well.
      # :media_url => image_url
      )
      puts message.to
    end
end
