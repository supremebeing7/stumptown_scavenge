class Photo < ActiveRecord::Base

  belongs_to :location

  has_attached_file :pic, :styles => { :medium => "300x300#", :thumb => "100x100#" }
  validates_attachment_content_type :pic, :content_type => /\Aimage\/.*\Z/
  validates :pic, :attachment_presence => true

end
