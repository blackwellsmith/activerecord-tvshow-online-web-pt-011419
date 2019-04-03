def highest_rating
  show = Show.maximum(rating)
  show.rating
end

def most_popular_show
  show = Show.maximum(rating)
  show.name
end

def lowest_rating