require('csv')

class AnnualWeather
  attr_reader(:readings)
  Reading = Struct.new(:date, :high, :low)

  def initialize (file)
    CSV.foreach(file) do |row|
      @readings.push(Reading.new(
        Date.parse(row[2]),
        row[10].to_f,
        row[11].to_f
      ))
    end
  end

  def mean
    return 0.0 if readings.length == 0

    total = readings.reduce(0) do |sum, reading|
      sum + (reading.high + reading.low) / 2
    end

    total / readings.length.to_f
  end
end