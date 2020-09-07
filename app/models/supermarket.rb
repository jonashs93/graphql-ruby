class Supermarket < ApplicationRecord

  belongs_to :owner
  belongs_to :address
  has_many   :products
end
