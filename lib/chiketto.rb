module Chiketto
  ENDPOINT = 'https://www.eventbriteapi.com/v3/'
  LEGACY_ENDPOINT = 'https://www.eventbrite.com/json/'

  require 'hash_ext'

  require 'chiketto/version'
  require 'chiketto/attribute'
  require 'chiketto/attr_attribute'
  require 'chiketto/resource'
  require 'chiketto/address'
  require 'chiketto/attendee'
  require 'chiketto/attendee_profile'
  require 'chiketto/category'
  require 'chiketto/email'
  require 'chiketto/event'
  require 'chiketto/organizer'
  require 'chiketto/ticket_class'
  require 'chiketto/user'
  require 'chiketto/venue'

  class << self
    attr_writer :api_key

    def api_key
      @api_key || ENV['EVENTBRITE_API_TOKEN']
    end
  end

end
