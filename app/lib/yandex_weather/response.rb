module YandexWeather
  class Response
    attr_reader :response

    delegate :body, :status, to: :response

    def initialize(response)
      @response = response
    end
  end
end
