class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0}
  validate :apparel_error

  def apparel_error
      if !mens_apparel && !womens_apparel
        errors.add(:mens_apparel, "must be true for least one apparel type")
        errors.add(:womens_apparel, "must be true for least one apparel type")
      end
    end
end
