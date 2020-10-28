class Reports

  attr_accessor :name, :date, :location, :reason_for_recall, :description, :quantity

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

end
