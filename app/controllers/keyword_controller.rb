
class KeywordController < ApplicationController
  def index
    result = KeywordService.new(keyword_params).call

    # returning keywords
    render json: { result: result }
  end

  private

  def keyword_params
    {
      last: params[:last],
      days: params[:days],
      consultations: params[:consultations],
      general_medical_type: params[:general_medical_type],
      area: params[:area]
    }
  end
end
