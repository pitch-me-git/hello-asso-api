# -*- encoding: utf-8 -*-

module HelloAssoApi
  class Organisation
    include HTTParty

    def self.fetch(param)
      HTTParty.get(HelloAssoApi::HTTP_URL + param.to_s)
    end

    def self.fetchAll(page = 1)
      HTTParty.get(HelloAssoApi::HTTP_URL + 'organizations/' + page.to_s)
    end
  end
end
