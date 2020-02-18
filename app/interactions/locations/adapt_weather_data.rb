class AdaptWeatherData < ActiveInteraction::Base
  string :data

  def execute
    json_data = JSON.parse(data)
    json_adapter(json_data)
  end

  private

  def json_adapter(data)
    json = {}
    json['forecasts'] = json_forecasts(data)
    json
  end

  def json_forecasts(data)
    forecasts = {}

    data['forecasts'].each do |day|
      forecasts[day['date']] = { parts: json_parts(day), hours: json_hours(day) }
    end
    forecasts
  end

  def json_parts(day)
    parts = []

    day['parts'].each do |part|
      temp_min = part.second['temp_min']
      temp_max = part.second['temp_max']
      prec_mm = part.second['prec_mm']
      data = { 'temp_min': temp_min, 'temp_max': temp_max, 'prec_mm': prec_mm }
      parts << { "#{part.first}": data }
    end
    parts
  end

  def json_hours(day)
    hours = []

    day['hours'].each do |hour|
      temp = hour['temp']
      prec_mm = hour['prec_mm']
      data = { 'temp': temp, 'prec_mm': prec_mm }
      hours << { "#{hour['hour']}": data }
    end
    hours
  end
end
