class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :capital
      t.float  :territorial_extension
      t.float  :population
      t.string :language
      t.string :location
      t.string :coin

      t.timestamps
    end
  end
end
