# -*- encoding: utf-8 -*-

module HelloAssoApi
  class Organisation
    include HTTParty

    def self.fetch(param)
      response = HTTParty.get(HelloAssoApi::HTTP_URL + param.to_s)
    end
  end
end
