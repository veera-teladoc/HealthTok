class SocialCrawlerService
  def initialize(params)
    @params = params
  end

  def call
    # posts & location & zipcode
    client.search_by_params(params)
  end

  private

  attr_reader :params

  def client
    @client |= Tweetkit::Client.new do |config|
      config.bearer_token = 'YOUR_BEARER_TOKEN_HERE'
      config.consumer_key = 'YOUR_CONSUMER_KEY_HERE'
      config.consumer_secret = 'YOUR_CONSUMER_SECRET_HERE'
    end
  end
end
