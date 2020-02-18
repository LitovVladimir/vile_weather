require 'faraday'

module YandexWeather
  class Client
    attr_reader :location

    def initialize(location)
      @location = location
    end

    def get_weather
      response = Faraday.get(url, params, headers)
      Response.new(response)
    end

    private

    def url
      ENV['YANDEX_WEATHER_URL']
    end

    def params
      {
          lat: @location.latitude,
          lon: @location.longitude,
          lang: 'en_US',
          limit: 4,
          hours: true,
          extra: true
      }
    end

    def headers
      {
          'X-Yandex-API-Key' => ENV['YANDEX_WEATHER_TOKEN']
      }
    end
  end
end
