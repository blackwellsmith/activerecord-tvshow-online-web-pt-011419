def highest_rating
  show = Show.maximum(rating)
  show.rating
end

def most_popular_show
  show = Show.maximum(rating)
  show.name
end

def lowest_rating
  sad_show = Show.minimum(rating)
  sad_show.rating
end