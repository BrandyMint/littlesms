module LittleSms
  BASE_URL = "http://littlesms.ru/api/"
  SEND_TAIL = "message/send"

  def self.send_sms phone, message, options={}
    uri = URI.parse(BASE_URL + SEND_TAIL)
    response = Net::HTTP.post_form(uri, sms_params(phone, message, options))
    response_status(response)
  end

private
  class << self
    def response_status response
      json_resp = JSON.parse response.body
      Rails.logger.info "LittleSms: sms sending fail. Errors: #{json_resp['error']}" if json_resp['error']
      json_resp['status'] == "success"
    end

    def sms_params phone, message, options
      auth_params.merge({
        recipients: phone,
        message: message,
        sender: @config.config.sender
      }).merge(options)
    end

    def auth_params
      {apikey: @config.config.api_key, user: @config.config.email}
    end
  end
end