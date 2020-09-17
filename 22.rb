class CoffeeTooWeakError < StandardError
end

class TemperatureError < StandardError
  def initialize(temperature)
    @temperature = temperature
    super("invalid temperature: #{@temperature}")
  end
end

raise(TemperatureError.new(55))