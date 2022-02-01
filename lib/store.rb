class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {only_integer: true, greater_than: 0 }
  validate :atleat_one_apparel

  def atleat_one_apparel
   if mens_apparel == false && womens_apparel == false
    errors.add(:Store, "must carry at least one of the men's or women's apparel")
end
end
end