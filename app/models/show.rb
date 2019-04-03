require "pry"
class Show < ActiveRecord::Base

  def self.highest_rating
    #binding.pry
    show = Show.maximum(:rating)
   #binding.pry
    show
   # binding.pry
  end

  def self.most_popular_show
    show = Show.maximum(:rating)
    show.name
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    sad_show = Show.minimum(:rating)
    sad_show.name
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating" < 5).map {|s| s.name}
  end


  def self.shows_by_alphabetical_order
    Show.order(:name).map { |n| n }

  end
end

