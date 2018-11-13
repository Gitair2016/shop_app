class Pinglun < ApplicationRecord
  belongs_to :vip
  validates :content, presence: true

  def self.search(search)
    where("content LIKE ?", "%#{search}%")
  end 
   
end
