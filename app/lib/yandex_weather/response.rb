module YandexWeather
  class Response
    attr_reader :response

    def initialize(response)
      @response = response
    end

    def get_data
      ::AdaptWeatherData.run!(data: @response.body)
    end
  end
end
