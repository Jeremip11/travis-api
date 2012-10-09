require 'travis/api/app'

class Travis::Api::App
  class Endpoint
    class Jobs < Endpoint
      get '/' do
        respond_with all(params)
      end

      get '/:id' do
        respond_with one(params).run || not_found # TODO hrmmmmmm
      end
    end
  end
end
