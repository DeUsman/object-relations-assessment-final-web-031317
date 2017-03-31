class Viewer
  attr_accessor :first_name, :last_name
  @@ALL = []
  def initialize(name)
  	split_name = name.split(" ")
    @first_name = split_name.first
    @last_name = split_name.last 
    @@ALL.push(self)
  end

  # def full_name
  #   "#{first_name} #{last_name}"
  # end

  def self.all 
     return @@ALL
  end

  def self.find_by_name(name)
  	split_name = name.split(" ")
  	@@ALL.find do |viewer|
  		viewer.first_name == split_name.first && viewer.last_name == split_name.last
  	end
  end

  def create_rating(movie, score)
  	new_rating = Rating.new(movie, score, self)
  end

end
