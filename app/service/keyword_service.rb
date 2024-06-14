class KeywordService
  def initialize(params)
    @params = params
  end

  def call
    # params: last,days,consultations,general_medical_type,area
    find_consultations

    build_nlp_graphs

    get_keywords
  end

  private

  attr_reader :params
end
