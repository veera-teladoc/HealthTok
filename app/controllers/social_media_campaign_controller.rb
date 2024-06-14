
class SocialMediaCampaignController < ApplicationController
  def message
    result = CampaignMessagerService.new(params).call

    # returning keywords
    render json: { result: result }
  end

  private

  def params
    {
      post: params[:post],
      user: params[:user]
    }
  end
end
