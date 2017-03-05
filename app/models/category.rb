class Category < ApplicationRecord
  has_many :posts
  extend FriendlyId
  # has_ancestry :orphan_strategy => :rootify
  friendly_id :name, use: [:slugged, :history, :finders]
    
  def should_generate_new_friendly_id?
    name_changed?
  end
end
