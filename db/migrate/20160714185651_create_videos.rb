class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :descrition

      t.timestamps null: false
    end
  end
end
