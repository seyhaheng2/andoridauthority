class Controlsite < ApplicationRecord
  belongs_to :post
  has_attached_file :logo, :styles => { :small => "100x100" },
                  :url  => "/assets/images/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/images/:id/:style/:basename.:extension"

  validates_attachment_size :logo, :less_than => 5.megabytes
  validates_attachment_content_type :logo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
