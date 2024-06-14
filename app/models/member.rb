class Member < ApplicationRecord
  has_many :phone_numbers
  has_many :email_addresses
  has_many :addresses
end
