class Reports

  attr_accessor :name, :date, :description, :image_url, :location, :title, :subject

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

end
