class Address < ApplicationRecord

  belongs_to :city, optional: true
  belongs_to :state, optional: true
  belongs_to :country, optional: true
  has_one    :supermarket
  has_many   :owners

  validates :number, presence: true
end
