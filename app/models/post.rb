class Post < ActiveRecord::Base
  paginates_per 10
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  belongs_to :category

  validates_presence_of :body, :title, :pub_date, :tags
  scope :featured,  -> { where(featured: true ).where("pub_date < ?", DateTime.now).limit(3).where(draft: false) }
  scope :sidebar,   -> { where(sidebar: true ).where("pub_date < ?", DateTime.now).limit(3).where(draft: false) }
  scope :published, -> { where('pub_date < ?', DateTime.now).where(draft: false) }
  scope :pending,   -> { where('pub_date > ?', DateTime.now).where(draft: false) }

  has_attached_file :main_image,
    :styles => {
      :medium => "355x288>",
      :thumb => "100x100>"
      },
    :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :main_image, :content_type => /\Aimage\/.*\Z/


  def status
    if draft
      "Draft"
    elsif pub_date > DateTime.now
      "Awating Publish Date"
    else
      "Published"
    end
  end

end
