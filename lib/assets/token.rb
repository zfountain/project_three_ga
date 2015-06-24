require 'httparty'
require 'json'

class GitHub
    # Unique ID and token
    API_CLIENT_ID = 'b698ad5804c807d9e188'
    API_CLIENT_SECRET = '89060fce512d1042d168c3e71504ae35208cef1b'
      
      include HTTParty # Ruby gem for API
      headers "User-Agent" => "GA2Project3" # Identifies originator of request
      basic_auth "api-padawan", "GitHubPassw0rd"

      def create_token

        post_body = {
            :client_id => API_CLIENT_ID,
            :client_secret => API_CLIENT_SECRET
      }

    	end

      # Posts "requires authentication" message in json
      endpoint = "https://api.github.com/authorizations"
      	
      	post_body = {}
        self.post endpoint, :body => {}.to_json

end

    client = GitHub.new
    response = client.create_token

    print response.inspect
    puts response.inspect