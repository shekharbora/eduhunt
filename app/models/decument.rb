class Decument < ActiveRecord::Base
	attr_accessible :file, :title, :subject, :user_id,:description
	mount_uploader :file, ImageUploader
end
