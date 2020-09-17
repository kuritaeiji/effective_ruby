begin
  file = File.open('./11.rb', 'w')
ensure
  file.close if file
end

class Lock
  def self.aquire
    lock = new
    if block_given?
      yield(lock)
    else
      lock
    end
  ensure
    if block_given?
      lock.unlock if lock
    end
  end
end