class Post < ActiveRecord::Base
  validates_presence_of :body, :title, :pub_date, :tags
  scope :featured, -> { order('pub_date DESC').limit(3) }

  has_attached_file :main_image,
    :styles => {
      :medium => "355x288>",
      :thumb => "100x100>"
      },
    :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :main_image, :content_type => /\Aimage\/.*\Z/

end
