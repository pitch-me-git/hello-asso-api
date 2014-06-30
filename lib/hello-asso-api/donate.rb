# -*- encoding: utf-8 -*-

module HelloAssoApi
  class Donate
    include HTTParty

    def self.get_url(params={})
      HelloAssoApi::HTTPS_URL + 'donate?' + params.collect { |k,v| "#{k}=#{v}" }.join("&")
    end
  end
end
