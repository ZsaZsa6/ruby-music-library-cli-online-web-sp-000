class Genre

  attr_accessor :name

  @@all = []


  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create(genre)
    genre = self.new(genre)
    genre.save
    return genre
  end

  def self.destroy_all
    self.all.clear
  end

  def artists
    self.songs.map { |song| song.artist }
  end

  def songs
    @songs
  end
end
#
#   def songs
#     Song.all.select do |song|
#       song.genre == self
#     end
#   end
#
#
# end
