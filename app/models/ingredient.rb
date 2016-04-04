class Ingredient < ActiveRecord::Base
  attr_accessor :liked, :disliked
  
  has_many :preferences
  validates :name, presence: true

  def times_recorded
    total = preferences.size
  end

  def statistics
    @liked = 0
    @disliked = 0
    preferences.each do |preference|
      if preference.likes?
        @liked += 1
      else
        @disliked += 1
      end
    end
    data = { "People who liked this ingredient" => liked, "People who disliked" => disliked }
  end


end
