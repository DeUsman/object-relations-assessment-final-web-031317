class Rating
  attr_accessor :movie, :score, :viewer
  @@ALL = []

  def initialize(movie, score, viewer)
  	@movie = movie
  	@score = score
  	@viewer = viewer
  	@@ALL.push(self)
  end

  def self.all 
  	return @@ALL 
  end

  
end
