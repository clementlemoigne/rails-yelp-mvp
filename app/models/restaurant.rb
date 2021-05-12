class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, :phone_number, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) }

  def average_rating
    # return self.reviews.pluck(:rating)
    return self.reviews.pluck(:rating).sum / self.reviews.size.to_f if self.reviews.any?
    return 0
  end

end
