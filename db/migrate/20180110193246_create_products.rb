class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :author
      t.text :description
      t.decimal :price precision: 6, scale: 2, default: 0.0

      t.timestamps
    end
  end
end
