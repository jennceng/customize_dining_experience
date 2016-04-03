class Customer < ActiveRecord::Base
  has_many :preferences

  validates :first_name, presence: true
  validates :last_name, presence: true

  def name
    "#{last_name}, #{first_name}"
  end
end
