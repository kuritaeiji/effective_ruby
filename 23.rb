class NetworkConnectionError < StandardError
end

class InvalidRecordError < StandardError
end

class Task
  def peform(error)
    if error == 'nce'
      raise(NetworkConnectionError.new('network error'))
    else
      raise(InvalidRecordError.new('invalid record error'))
    end
  end
end

task = Task.new

begin
  task.peform('nce')
rescue NetworkConnectionError => e
  puts(e.to_s)
rescue InvalidRecordError => e
  puts(e.to_s)
end