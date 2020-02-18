class LocationsController < ApplicationController
  before_action :find_by_location_id, only: [:download_weather]

  def index
    @locations = Location.all
  end

  def download_weather
    data = GenerateLocationWeatherData.run!(location: @location)
    send_data(data, filename: "#{@location.latitude}_#{@location.longitude}.txt")
  end

  private

  def find_by_location_id
    @location = Location.find_by(id: params[:location_id])
  end
end
