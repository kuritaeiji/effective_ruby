class Tuner
  def initialize(presets)
    @presets = clean(presets)
  end

  def clean(presets)
    presets.reject { |f| f[-1].to_i.even? }
  end
end

presets = ['100.1', '1.2', '11.2']
tuner = Tuner.new(presets)
print(presets)