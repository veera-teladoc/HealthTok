class Consultation < ApplicationRecord
  belongs_to :group_id
  belongs_to :member_id
  belongs_to :provider_id
end
