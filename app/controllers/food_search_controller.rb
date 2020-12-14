class FoodSearchController < ApplicationController
  def index
    food = params[:q]

    conn = Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.headers["X-API-Key"] = 'JTOc778VUsfkcYfsHCIeG3c38EgZ0Ph2s9AJehWA'
    end

    response = conn.get("/fdc/v1/foods/search?&query=#{food}&dataType=Branded&pageSize=10")
    json = JSON.parse(response.body, symbolize_names: true)
    @food_hits = json[:totalHits]
    @foods = json[:foods]
    binding.pry
  end
end

# &pageSize=10&sortBy=description&sortOrder=asc
