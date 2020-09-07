class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number
      t.string :neighborhood
      t.references :city
      t.references :state
      t.references :country

      t.timestamps
    end
  end
end
