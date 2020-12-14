class FoodSearchController < ApplicationController
  def index
    food = params[:food]

    conn = Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.headers["X-API-Key"] = 'JTOc778VUsfkcYfsHCIeG3c38EgZ0Ph2s9AJehWA'
    end

    response = conn.get("/fdc/v1/foods/search?&query=#{food}")
    json = JSON.parse(response.body, symbolize_names: true)
    @foods = json[:results]
    binding.pry
  end
end
