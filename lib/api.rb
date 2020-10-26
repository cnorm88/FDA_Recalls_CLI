class Api

  def self.get_poster
    url = "https://www.loc.gov/collections/yanker-posters/?fo=json&sp=1"
    url = URI(url)
    response = Net::HTTP.get(url)
    hash = JSON.parse(response)
    #storing the array:
   items_array = hash["results"]
   #contributor - name
   #date
   #description
   #image_url
   #item?
   # :name, :date, :description, :image_url
   items_array.each do |item_hash|
     poster = Poster.new
     poster.name = item_hash["contributor"]
  end
  end


end
