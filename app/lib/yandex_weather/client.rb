module YandexWeather
  class Client
    attr_reader :location

    def initialize(location)
      @location = location
    end

    def get_weather_location
      log do
        headers = { 'X-ACCESS-TOKEN' => ENV['YANDEX_WEATHER_TOKEN'] }
        params = {  lat: @location.latitude,
                    lon: @location.longitude,
                    lang: 'en_US', limit: 4,
                    hours: true, extra: true }
        response = Request.get(connection, headers, params)
        Response.new(response)
      end
    end

    private

    def log
      method_name = caller[0][/`.*'/][1..-2]
      logger.push_tags("#{method_name} location_id: #{@location&.id}")
      response = yield
      logger.clear_tags!
      response
    rescue Faraday::ClientError => e
      logger.fatal(e.message)
      logger.clear_tags!
      OpenStruct.new(conflict?: false, body: e.message)
    end

    def logger
      @logger ||= begin
        log = Logger.new(Rails.env.development? ? STDOUT : 'log/yandex_weather.log')
        log.formatter = Logger::Formatter.new
        ActiveSupport::TaggedLogging.new(log)
      end
    end

    def connection
      @connection ||= Connection.new(ENV['YANDEX_WEATHER_URL'], logger).build
    end
  end
end
