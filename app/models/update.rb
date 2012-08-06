class Update < ActiveRecord::Base
  attr_accessible :body, :published, :title

  def self.last_20
    where('published_at IS NOT NULL').order('published_at DESC').first(20)
  end

  def published?
    published_at.present?
  end

  alias published published?

  def published=(value)
    if value == '1'
      self.published_at = Time.now
    else
      self.published_at = nil
    end
  end
end
