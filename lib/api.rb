class Api

  def self.get_poster
    url = "https://www.loc.gov/collections/yanker-posters?fo=json"
    url = URI(url)
    response = Net::HTTP.get(url)
    hash = JSON.parse(response)
    binding.pry
  end


end
