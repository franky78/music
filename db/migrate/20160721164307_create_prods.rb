class CreateProds < ActiveRecord::Migration
  def change
    create_table :prods do |t|
      t.string :title
      t.text :description
      t.integer :order
      t.string :prod_link
      t.belongs_to :video, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
