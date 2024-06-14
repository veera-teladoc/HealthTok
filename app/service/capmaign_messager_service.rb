class CapmaignMessagerService
  def initialize(params)
    @params = params
  end

  def call
    social_media_api.message_to(user: params[:user], post: params[:post])
  end

  private

  attr_reader :params
end
