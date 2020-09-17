class Stream
  def initialize(io = $stdin, chunk = 64 * 1024)
    @io = io
    @chunk = chunk
  end

  def stream(&block)
    loop do
      start = Time.now
      data = @io.read(@chunk)
      return if data.nil?

      time = (Time.now - start).to_f
      block.call(data, time)
    end
  end
end

def file_size(file)
  File.open(file) do |f|
    bytes = 0

    s = Stream.new(f)
    s.stream do |data| 
      bytes += data.size
      puts(data.class)
    end

    bytes
  end
end

puts(file_size('./21.rb'))