require 'mime/types'

class Mp3 < ActiveRecord::Base
  belongs_to :prod
  
  has_attached_file :mp3
  validates_attachment :mp3, 
    :content_type => { :content_type => ["audio/mpeg", "audio/mp3"] }, 
    :file_name => { :matches => [/mp3\Z/] }
    
  def set_mime_type(data)
    data.content_type = MIME::Types.type_for(data.original_filename).to_s
    self.mp3 = data
  end
end