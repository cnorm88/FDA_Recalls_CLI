class Api

  def self.get_poster
    url = "https://www.loc.gov/collections/yanker-posters/?fo=json"
    url = URI(url)
    response = Net::HTTP.get(url)
    hash = JSON.parse(response)
    #storing the array:
    items_array = hash["results"]
   #contributor - name
   #date
   #description
   #location_city
   #title
   #subject
   # :name, :date, :description, :image_url, :location, :title, :subject
   items_array.uniq.each do |item_hash|
     poster = Poster.new
     poster.name = item_hash["contributor"]
     poster.date = item_hash["date"]
     poster.description = item_hash["description"]
     poster.image_url = item_hash["image_url"]
     poster.location = item_hash["location_city"]
     poster.title = item_hash["title"]
     poster.subject = item_hash["subject"]
  end
  end


end
