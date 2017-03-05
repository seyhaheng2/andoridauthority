class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  
  has_many :controlsites
  
  acts_as_taggable
  
  scope :published, -> { where.not(published_at: nil) }
  scope :unpublished, -> { where(published_at: nil) }

  has_attached_file :image, :styles => { :small => "100x100" },
                    :url  => "/assets/images/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/images/:id/:style/:basename.:extension"

  validates_presence_of :image, :title, :description, :user, :category, :format_post
  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  extend FriendlyId

  friendly_id :title, use: [:slugged, :history, :finders]
    
  def should_generate_new_friendly_id?
    title_changed?
  end

  scope :of_post, lambda{ 
    where("format_post = 'Post'")
  }
  scope :of_slide, lambda{ 
    where("format_post = 'Slide'")
  }
  scope :of_trending, lambda{ 
    where("format_post = 'Trending'")
  }
 
  def previous
    @post = Post.where(["id < ?", id]).order(:id).last
  end

  def next
    @post = Post.where(["id > ?", id]).order(:id).first
  end

end
