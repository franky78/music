class Prod < ActiveRecord::Base
  belongs_to :video
  has_many :attachment

  has_attached_file :mp3
  validates_attachment :mp3, 
    :content_type => { :content_type => ["audio/mp3"] }, 
    :file_name => { :matches => [/mp3\Z/] }
end
