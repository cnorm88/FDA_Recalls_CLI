class Reports

  attr_accessor :name, :date, :location, :recall_reason, :description, :quantity

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

end
