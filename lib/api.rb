class Api

  def self.get_report
    url = "https://api.fda.gov/food/enforcement.json?search=report_date:[20200101+TO+20200520]&limit=10"
    url = URI(url)
    response = Net::HTTP.get(url)
    hash = JSON.parse(response)
    #storing the array:
    reports_array = hash["results"]
    # recalling_firm -name
    # reason_for_recall
    # city
    # state -location
    # product_description -description
    # recall_initiation_date  Year,Month,Date
    # product_quantity
    # :name, :date, :location, :reason_for_recall, :description, :quantity
  #  items_array.uniq.each do |item_hash|
  #    poster = Poster.new
  #    poster.name = item_hash["contributor"]
  #    poster.date = item_hash["date"]
  #    poster.description = item_hash["description"]
  #    poster.image_url = item_hash["image_url"]
  #    poster.location = item_hash["location_city"]
  #    poster.title = item_hash["title"]
  #    poster.subject = item_hash["subject"]
  # end
  end


end
