module YandexWeather
  class Connection
    attr_reader :url, :logger

    def initialize(url, logger)
      @url = url
      @logger = logger
    end

    def build
      Faraday.new(url: url) do |faraday|
        faraday.use Faraday::Response::Logger, logger, bodies: true
        faraday.response :json, parser_options: { symbolize_names: true }
        faraday.response :encoding
        faraday.use Faraday::Request::UrlEncoded
        faraday.use Faraday::Adapter::NetHttp
        faraday.options[:open_timeout] = 2
        faraday.options[:timeout] = 15
      end
    end
  end
end
