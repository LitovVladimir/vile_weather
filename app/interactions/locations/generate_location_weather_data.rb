class GenerateLocationWeatherData < ActiveInteraction::Base
  object :location

  def execute
    JSON.pretty_generate(weather_data)
  end

  private

  def weather_data
    client = YandexWeather::Client.new(location)
    response = client.get_weather
    response.get_data
  end
end