module LittleSms
  def self.configure
    @config ||= LittleSms::Configuration.new
    yield @config if block_given?
  end

  class Configuration
    include ActiveSupport::Configurable
    config_accessor :api_key
    config_accessor :email
    config_accessor :window
    config_accessor :sender
  end
end