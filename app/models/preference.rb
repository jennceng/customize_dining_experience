class Preference < ActiveRecord::Base
  belongs_to :customer
  belongs_to :ingredient

  validates :customer, presence: true
  validates :ingredient, presence: true
end
