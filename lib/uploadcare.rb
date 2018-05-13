require 'faraday'
require 'json'
require 'ostruct'

require_relative 'uploadcare/api'
require_relative 'uploadcare/version'

module Uploadcare
  DEFAULT_SETTINGS = {
    public_key: 'demopublickey',
    private_key: 'demoprivatekey',
    upload_url_base: 'https://upload.uploadcare.com',
    api_url_base: 'https://api.uploadcare.com',
    static_url_base: 'https://ucarecdn.com',
    api_version: '0.5',
    cache_files: true,
    autostore: :auto,
    auth_scheme: :secure,
  }

  warn '[DEPRECATION] `Uploadcare::USER_AGENT` constant is deprecated and will be removed in version 3.0'
  USER_AGENT = "uploadcare-ruby/#{Gem.ruby_version}/#{Uploadcare::VERSION}"

  def self.default_settings
    DEFAULT_SETTINGS
  end

  def self.user_agent(options={})
    warn '[DEPRECATION] `Uploadcare::user_agent` method is deprecated and will be removed in version 3.0'
    UserAgent.new.call(options)
  end
end
