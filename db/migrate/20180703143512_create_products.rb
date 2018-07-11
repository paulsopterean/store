class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :category
      t.string :product_type
      t.string :picture
      t.text :description

      t.timestamps
    end
  end
end
