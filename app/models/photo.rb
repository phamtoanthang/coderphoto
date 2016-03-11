class Photo < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
	has_many :comments, dependent: :destroy
end
