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
    reports_array.each do |reports_hash|
       report = Reports.new
       report.name = reports_hash["recalling_firm"]
       report.date = reports_hash["recall_initiation_date"]
       report.location = reports_hash["state"]
       report.recall_reason = reports_hash["reason_for_recall"]
       report.description = reports_hash["product_description"]
       report.quantity = reports_hash["product_quantity"]
   end
  end

end
