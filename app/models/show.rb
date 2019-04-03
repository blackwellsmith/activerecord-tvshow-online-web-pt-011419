require "pry"
class Show < ActiveRecord::Base

  def self.highest_rating
    #binding.pry
    show = Show.maximum(:rating)
   # binding.pry
    show.rating
   # binding.pry
  end

  def most_popular_show
    show = Show.maximum(:rating)
    show.name
  end

  def lowest_rating
    sad_show = Show.minimum(:rating)
    sad_show.rating
  end

  def least_popular_show
    sad_show = Show.minimum(:rating)
    sad_show.name
  end

  def ratings_sum
    Show.sum(:rating)
  end

  def popular_shows
    Show.where(:rating < 5).map {|s| s.name}
  end


  def shows_by_alphabetical_order
    Show.order(:name).map { |n| n.name }

  end
end

