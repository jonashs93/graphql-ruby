class Owner < ApplicationRecord

  belongs_to :gender
  belongs_to :address
  has_many   :supermarket
end
