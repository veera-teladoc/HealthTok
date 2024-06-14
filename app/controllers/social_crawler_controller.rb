
class SocialCrawlerController < ApplicationController
  def index
    result = SocialCrawlerService.new(crawler_params).call

    render json: { result: result }
  end

  private

  def crawler_params
    {
      posts: params[:posts],
      location: params[:location],
      zip_code: params[:zip_code]
    }
  end
end
