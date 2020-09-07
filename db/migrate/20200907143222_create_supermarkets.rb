class CreateSupermarkets < ActiveRecord::Migration[6.0]
  def change
    create_table :supermarkets do |t|
      t.string :name
      t.string :cnpj
      t.references :owner
      t.references :address

      t.timestamps
    end
  end
end
