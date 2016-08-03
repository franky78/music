class Resume < ActiveRecord::Base
    belongs_to :prod

    mount_uploader:attachment,
    AttachmentUploader
    validates :name, presence:true
end
