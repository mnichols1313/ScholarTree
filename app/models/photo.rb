class Photo < ActiveRecord::Base
  attr_accessible :image, :date, :latitude, :longitude
  belongs_to :user
  has_attached_file :image,
    :styles => {:medium => "300x300>", :thumb => "100x100>"},
    :path => ":rails_root/private/:rails_env/photos/:id/:style/:basename.:extension"

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end