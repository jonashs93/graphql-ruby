class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string  :code
      t.string  :name
      t.float   :price
      t.date    :expiration_date
      t.integer :quantity
      t.references :supermarket

      t.timestamps
    end
  end
end
