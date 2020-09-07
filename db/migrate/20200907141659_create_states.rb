class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.string     :name
      t.string     :abbreviation
      t.string     :capital
      t.string     :region
      t.references :country

      t.timestamps
    end
  end
end
