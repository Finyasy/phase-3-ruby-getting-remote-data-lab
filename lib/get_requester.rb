require 'net/http'
require 'open-uri'
require 'json'

# Write your code here
class GetRequester

    def initialize(url)
        @url = url
    end

    def get_response_body
        url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        data_json = JSON.parse(self.get_response_body)
        data_json.collect {|data| data}
        end
end

# response = GetRequester.new.get_response_body
# puts response

# data = GetRequester.new
# puts data.parse_json.uniq

