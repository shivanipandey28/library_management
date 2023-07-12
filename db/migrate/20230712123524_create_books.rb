class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :language
      t.string :author
      t.boolean :status
      t.text :description
      t.integer :quantity
      t.decimal :price
      t.references :category, null: false, foreign_key: true
      t.references :condition, null: false, foreign_key: true
      t.timestamps
    end
  end
end
