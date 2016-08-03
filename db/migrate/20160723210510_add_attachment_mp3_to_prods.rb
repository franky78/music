class AddAttachmentMp3ToProds < ActiveRecord::Migration
  def self.up
    change_table :prods do |t|
      t.attachment :mp3
    end
  end

  def self.down
    remove_attachment :prods, :mp3
  end
end
