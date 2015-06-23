require 'HTTParty'

options = {
	body: {
		pear: {
			client_id: 'b698ad5804c807d9e188',
			client_secret: 'b3a1eafd50341af17d3accaa6cbbb0f2da406610',
			code: 'e19969f555781b08cd3f',
			redirect_uri: 'http://localhost:3000/students'
		}
	}
}

response = HTTParty.post('https://github.com/login/oauth/access_token', options)

puts response.inspect