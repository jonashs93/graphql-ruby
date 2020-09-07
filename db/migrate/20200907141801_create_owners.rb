class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string     :name
      t.string     :cpf
      t.date       :birth_date
      t.references :gender
      t.references :address

      t.timestamps
    end
  end
end
