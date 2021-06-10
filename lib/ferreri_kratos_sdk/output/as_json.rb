require 'json'

module FerreriKratosSdk
    module Output
        def json_response(body)
            JSON.parse body, symbolize_names: true
        end
    end
end