class Address < ApplicationRecord

  belongs_to :city
  belongs_to :state
  belongs_to :country
  has_one    :supermarket
  has_many   :owners
end
