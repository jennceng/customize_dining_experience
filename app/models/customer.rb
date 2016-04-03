class Customer < ActiveRecord::Base
  has_many :preferences

  validates :first_name, presence: true
  validates :last_name, presence: true

  def name
    "#{first_name} #{last_name}"
  end
end
