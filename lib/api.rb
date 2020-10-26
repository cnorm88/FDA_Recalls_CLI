class Api

  def self.get_poster
    url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita"
    url = URI(url)
    response = Net::HTTP.get(url)
    hash = JSON.parse(response)
  end


end
