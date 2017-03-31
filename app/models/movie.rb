class Movie
  attr_accessor :title
  @@ALL = []

  def initialize(title)
    self.title = title
    @@ALL.push(title)
  end

  def self.all 
  	return @@ALL
  end

  def self.find_by_title(title)
  	@@ALL.find do |movie|
  		movie.title == title 
  	end
  end

  def ratings
  	Rating.all.collect do |rating|
  		rating.movie == self.title
  	end
  end

  def viewers
  	self.ratings.collect do |rating|
  		rating.viewer 
  	end
  end

  def average_rating
  	a = self.ratings.collect do |rating|
  		rating.score
  		end

  	c = a.inject do |accu, num|
  		accu + num
  		end
  	average_total = c / a.length
  end

end
